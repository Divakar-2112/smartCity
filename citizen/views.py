from django.shortcuts import render

# Create your views here.

def home(request):
    return render(request,"citizen/layouts/index.html")

def register(request):
    return render(request,"citizen/layouts/register.html")

def login(request):
    return render(request,"citizen/layouts/login.html")

def raiseComplaint(request):
    return render(request,"citizen/layouts/raise_complaint.html")