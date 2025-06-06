from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.contrib.auth import logout
from .models import ComplaintDetail, Department, SubCategory, HeroContent
from django.contrib import messages

from .form import CreateUserForm
from .models import NewUser, ComplaintDetail, Department, SubCategory


def home(request):
    return render(request, "citizen/index.html")

def login(request):
    return render(request, "citizen/login.html")

def logout_view(request):
    auth_logout(request)
    return redirect('home')


def register(request):
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.email = request.POST.get('email')
            user.save()

            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')

            user = authenticate(request, username=username, password=raw_password)
            if user is not None:
                auth_login(request, user)
                messages.success(request, 'Your account has been created!')
                return redirect('user')
            else:
                messages.error(request, "Authentication failed. Please login manually.")
                return redirect('login')
        else:
            messages.warning(request, 'Registration failed. Please fix the errors.')
    else:
        form = CreateUserForm()
    return render(request, "citizen/register.html", {'form': form})


@login_required(login_url='login')
def user(request):
    message = ""
    current_user = request.user

    # Complaint submission
    if request.method == 'POST' and 'description' in request.POST:
        department_id = request.POST.get('department')
        subcategory_id = request.POST.get('subCategory')
        description = request.POST.get('description')
        location = request.POST.get('location')
        image_upload = request.POST.get('image_upload')

        if department_id and subcategory_id:
            ComplaintDetail.objects.create(
                user=current_user,
                department_id=int(department_id),
                subCategory_id=int(subcategory_id),
                description=description,
                location=location,
                image_upload=image_upload
            )
            message = "Complaint submitted successfully!"
        else:
            message = "Department or Subcategory not selected!"

    # Profile update
    elif request.method == 'POST' and 'first_name' in request.POST:
        current_user.first_name = request.POST.get('first_name')
        current_user.last_name = request.POST.get('last_name')
        current_user.username = request.POST.get('username')
        current_user.email = request.POST.get('email')
        current_user.phone = request.POST.get('phone')
        current_user.save()
        message = "Profile updated successfully!"

    # Complaint data & stats
    complaints = ComplaintDetail.objects.filter(user=current_user).order_by('-created_at')
    resolved_count = complaints.filter(status='Resolved').count()
    in_progress_count = complaints.filter(status='In Progress').count()
    rejected_count = complaints.filter(status='Rejected').count()

    return render(request, 'citizen/user.html', {
        'departments': Department.objects.all(),
        'subcategories': SubCategory.objects.all(),
        'complaints': complaints,
        'resolved_count': resolved_count,
        'in_progress_count': in_progress_count,
        'rejected_count': rejected_count,
        'message': message,
    })


def HeroContent(request):
    hero = HeroContent.objects.first()

    context = {
        "hero": hero
    }
    return render(request, "citizen/index.html", context)
def staff_home(request):
    return render(request, 'department/staff.html')

def admin_home(request):
    return render(request, 'myadmin.html')
