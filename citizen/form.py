from django import forms
from .models import NewUser
from django.contrib.auth.forms import UserCreationForm

class CreateUserForm(UserCreationForm):
    password2 = forms.CharField(
        label='Confirm Password',
        widget=forms.PasswordInput
    )

    class Meta:
        model = NewUser
        fields = ['username', 'email', 'password1', 'password2']
