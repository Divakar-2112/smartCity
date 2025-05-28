# urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('staff/', views.staff_complaints_view, name='staff'),
    # path('update-status/<int:complaint_id>/', views.update_complaint_status, name='update_complaint_status'),
]
