from django.shortcuts import render, redirect
from django.contrib import messages 
from .models import *
from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm
from .form import CreateUserForm
from django.contrib.auth.models import User

def home(request):
    return render(request, "citizen/index.html")

def register(request):
    if request.method == 'POST':
        name = request.POST['username']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']

        if password1==password2:
            user = User.objects.create_user(username=name,email=email,password=password1)
            user.save()
            messages.success(request,'Your account has been created !')
            return redirect('login')
        else:
            messages.warning(request,"Incorrect Password TRY AGAIN !!")
            return redirect('register')

 
    else:
        form = CreateUserForm()
        return render(request, "citizen/register.html",{'form':form})

def login(request):
    return render(request, "citizen/login.html")

def raiseComplaint(request):
    return render(request, "citizen/raise_complaint.html")
