from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.http import JsonResponse
from .models import *
from .form import CreateUserForm

def home(request):
    return render(request, "citizen/index.html")

def login_view(request):
    return render(request, "citizen/login.html")

def logout_view(request):
    auth_logout(request)
    return redirect('home')

def register(request):
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.role = 'citizen'
            user.save()
            
            # Authenticate and login the user
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=password)
            if user is not None:
                auth_login(request, user)
                messages.success(request, 'Account created successfully!')
                return redirect('user')
        else:
            for field, errors in form.errors.items():
                for error in errors:
                    messages.error(request, f"{field}: {error}")
    else:
        form = CreateUserForm()
    return render(request, "citizen/register.html", {'form': form})

@login_required(login_url='login')
def user(request):
    current_user = request.user
    
    if request.method == 'POST':
        # Handle complaint submission
        if 'description' in request.POST:
            try:
                department_id = request.POST.get('department')
                subcategory_id = request.POST.get('subCategory')
                state_id = request.POST.get('state')
                district_id = request.POST.get('district')
                
                if not all([department_id, subcategory_id, state_id, district_id]):
                    messages.error(request, "Please fill all required fields")
                    return redirect('user')
                
                complaint = ComplaintDetail.objects.create(
                    user=current_user,
                    department_id=int(department_id),
                    subCategory_id=int(subcategory_id),
                    description=request.POST.get('description'),
                    address=request.POST.get('address'),
                    image_upload=request.FILES.get('image_upload'),
                    latitude=request.POST.get('latitude'),
                    longitude=request.POST.get('longitude'),
                    state_id=int(state_id),
                    district_id=int(district_id),
                    pincode=request.POST.get('pincode')
                )
                messages.success(request, 'Complaint submitted successfully!')
                return redirect('user')
                
            except Exception as e:
                messages.error(request, f"Error submitting complaint: {str(e)}")
                return redirect('user')
        
        # Handle profile update
        elif 'first_name' in request.POST:
            try:
                current_user.first_name = request.POST.get('first_name')
                current_user.last_name = request.POST.get('last_name')
                current_user.username = request.POST.get('username')
                current_user.email = request.POST.get('email')
                current_user.phone = request.POST.get('phone')
                current_user.save()
                messages.success(request, 'Profile updated successfully!')
                return redirect('user')
            except Exception as e:
                messages.error(request, f"Error updating profile: {str(e)}")
                return redirect('user')

    # Get user complaints and stats
    complaints = ComplaintDetail.objects.filter(user=current_user).order_by('-created_at')
    resolved_count = complaints.filter(status='Resolved').count()
    in_progress_count = complaints.filter(status='In Progress').count()
    rejected_count = complaints.filter(status='Rejected').count()

    context = {
        'departments': Department.objects.all(),
        'subcategories': SubCategory.objects.all(),
        'complaints': complaints,
        'resolved_count': resolved_count,
        'in_progress_count': in_progress_count,
        'rejected_count': rejected_count,
        'states': StateLocation.objects.all(),
        'districts': DistrictLocation.objects.all(),
    }
    return render(request, 'citizen/user.html', context)
def home(request):
    hero = HeroContent.objects.all()
    testimonials = Testimonials.objects.all()
    faq_section = Faq_Section.objects.all()
    lastest_news = Latest_News.objects.all()

    context = {
        "hero": hero,
        "testimonials": testimonials,
        "faq_section": faq_section,
        "lastest_news": lastest_news
    }

    return render(request, "citizen/index.html", context)

def get_districts(request):
    state_id = request.GET.get('state_id')
    if not state_id:
        return JsonResponse([], safe=False)
    
    try:
        districts = DistrictLocation.objects.filter(state_id=state_id).values('id', 'name')
        return JsonResponse(list(districts), safe=False)
    except Exception as e:
        return JsonResponse({'error': str(e)}, status=400)

def staff_home(request):
    return render(request, 'department/staff.html')

def admin_home(request):
    return render(request, 'myadmin.html')