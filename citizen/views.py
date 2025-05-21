<<<<<<< HEAD
from django.shortcuts import render, redirect
from django.contrib import messages
from .models import *
=======
from django.shortcuts import render

>>>>>>> 7ebdaba912b9787aa941eb5696a866b8bb964758

def home(request):
    return render(request, "citizen/index.html")

def register(request):
    return render(request, "citizen/register.html")

def login(request):
    return render(request, "citizen/login.html")

def raiseComplaint(request):
    return render(request, "citizen/raise_complaint.html")
