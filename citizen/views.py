from django.shortcuts import render, redirect
from .form import CreateUserForm
from django.contrib import messages
from django.contrib.auth import login as auth_login, logout as auth_logout
from .form import CreateUserForm
from .models import NewUser
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.contrib.auth import logout


def home(request):
    return render(request, "citizen/index.html")

def login(request):
    return render(request, "citizen/login.html")

def logout_view(request):
    logout(request)
    return redirect('home')
    
def register(request):
    if request.method == 'POST':
        name = request.POST['first_name'] + " " + request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        phone = request.POST['phone']
        password1 = request.POST['password1']
        password2 = request.POST['password2']

        if password1==password2:
            user = NewUser.objects.create_user(
            username=username,
            name = name,
            email=email,
            password=password1,
            first_name=first_name,
            last_name=last_name
            )
            user.phone = phone
            user.save()

            auth_login(request, user)
            
            messages.success(request,'Your account has been created !')
            return redirect('user')
        else:
            messages.warning(request,"Incorrect Password TRY AGAIN !!")
            return redirect('register')

 
    else:
        form = CreateUserForm()
        return render(request, "citizen/register.html",{'form':form})

@login_required(login_url='login') 
def user(request):
    return render(request,"citizen/user.html")

def staff_home(request):
    return render(request, 'department/staff.html')

def admin_home(request):
    return render(request, 'myadmin.html')
