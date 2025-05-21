from django.shortcuts import render
from django.contrib import messages
from .models import *
from django.shortcuts import render

def home(request):
    return render(request, "citizen/index.html")

def register(request):
    return render(request, "citizen/register.html")

def login(request):
    return render(request, "citizen/login.html")

def raiseComplaint(request):
    return render(request, "citizen/raise_complaint.html")
