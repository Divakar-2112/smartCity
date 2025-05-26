from django.shortcuts import render, redirect
from django.shortcuts import render
from .form import CreateUserForm
from django.contrib import messages
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from .form import CreateUserForm
from .models import NewUser

def home(request):
    return render(request, "citizen/index.html")

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
            messages.success(request,'Your account has been created !')
            return redirect('user')
        else:
            messages.warning(request,"Incorrect Password TRY AGAIN !!")
            return redirect('register')

 
    else:
        form = CreateUserForm()
        return render(request, "citizen/register.html",{'form':form})

def user(request):
    return render(request,"citizen/user.html")
