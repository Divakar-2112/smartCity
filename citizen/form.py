from django import forms
from .models import NewUser
from django.contrib.auth.forms import UserCreationForm

# register form validation 

class CreateUserForm(UserCreationForm):
    class Meta:
        model = NewUser
        fields = ['username', 'email', 'password1', 'password2']

    def __init__(self, *args, **kwargs):
        super(CreateUserForm, self).__init__(*args, **kwargs)
        
        # username field attributes

        self.fields['username'].widget.attrs.update({
            'id': 'mainName',
            'class': 'form-control username',
            'placeholder': 'Enter your username',
            'pattern': '^[a-zA-Z0-9_]{3,10}$',
            'title': 'Only letters, numbers, underscores. 3-10 characters.',
        })
        
        # email field attributes

        self.fields['email'].widget.attrs.update({
            'id': 'mainEmail',
            'class': 'form-control emailError',
            'placeholder': 'Enter your email',
            'pattern': '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$',
            'title': 'Enter a valid email address (example@example.com)',
        })
        
        # password1 field attributes
        
        self.fields['password1'].widget.attrs.update({
            'id': 'pws',
            'class': 'form-control userpassword',
            'placeholder': 'Enter your password',
            'pattern': '(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$&]).{8,20}',
            'title': 'Must contain uppercase, lowercase, number, special char. 8-20 characters.',
        })
        
        # password2 field attributes

        self.fields['password2'].widget.attrs.update({
            'id': 'pws2',
            'class': 'form-control userpassword',
            'placeholder': 'Confirm your password'
        })

        # required for all fields
        
        self.fields['username'].required = True
        self.fields['email'].required = True
        self.fields['password1'].required = True
        self.fields['password2'].required = True