from django import forms
from .models import NewUser
from django.contrib.auth.forms import UserCreationForm

class CreateUserForm(UserCreationForm):
    class Meta:
        model = NewUser
        fields = ['username', 'email', 'password1', 'password2']
