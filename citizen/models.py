from django.db import models
from django.contrib.auth.models import AbstractUser
from django.conf import settings

ROLE_CHOICES = [
    ('citizen', 'Citizen'),
    ('staff', 'Staff'),
    ('admin', 'Admin'),
]

STATUS_CHOICES = [
    ('Pending', 'Pending'),
    ('In Progress', 'In Progress'),
    ('Resolved', 'Resolved'),
    ('Rejected', 'Rejected'),
]

class Department(models.Model):
    department_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    description = models.TextField()

    def __str__(self):
        return self.name

class NewUser(AbstractUser):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=20)
    password = models.CharField(max_length=128)
    role = models.CharField(max_length=10, choices=ROLE_CHOICES,default='citizen')
    department = models.ForeignKey('Department', on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return self.name

class SubCategory(models.Model):
    subCategory_id = models.AutoField(primary_key=True)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField()

    def __str__(self):
        return f"{self.name} ({self.department.name})"

class ComplaintDetail(models.Model):
    complaint_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    subCategory = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
    description = models.TextField()
    location = models.CharField(max_length=255)
    image_upload = models.ImageField(upload_to='uploads/',blank=True, null=True)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='Pending')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Complaint #{self.complaint_id} by {self.user.name}"

class HeroContent(models.Model):
    title_desc = models.TextField(max_length=255)
    sub_desc = models.TextField(max_length=255)

    def __str__(self):
        return f"Hercontent #{self.title_desc} by {self.sub_desc}"
