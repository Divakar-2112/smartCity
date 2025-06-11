from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings



urlpatterns = [
    path('staff', views.staff_complaints_view, name='staff'),
    path('staff/update-status/', views.update_complaint_status, name='update_complaint_status'),
    path('upload-after-image/', views.upload_after_image, name='upload_after_image'),

]

