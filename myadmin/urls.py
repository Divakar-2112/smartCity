from django.urls import path
from . import views

urlpatterns = [
    path('myadmin', views.myadmin, name="myadmin"),
]