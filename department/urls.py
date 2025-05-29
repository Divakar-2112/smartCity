from django.urls import path
from . import views

urlpatterns = [
    path('staff', views.staff_complaints_view, name='staff'),
]