from django.db import models
from django.contrib.auth.models import AbstractUser
from django.conf import settings

# role of users

ROLE_CHOICES = [
    ('citizen', 'Citizen'),
    ('staff', 'Staff'),
    ('admin', 'Admin'),
]

# status of complaint

STATUS_CHOICES = [
    ('Pending', 'Pending'),
    ('In Progress', 'In Progress'),
    ('Resolved', 'Resolved'),
    ('Rejected', 'Rejected'),
]

# department table

class Department(models.Model):
    department_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    description = models.TextField()

    def __str__(self):
        return self.name

# user table

class NewUser(AbstractUser):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=20)
    password = models.CharField(max_length=128)
    role = models.CharField(max_length=10, choices=ROLE_CHOICES, default='citizen')
    department = models.ForeignKey('Department', on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return self.name
    
# subcategory table

class SubCategory(models.Model):
    subCategory_id = models.AutoField(primary_key=True)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField()

    def __str__(self):
        return f"{self.name} ({self.department.name})"
    
# table for all the states
    
class StateLocation(models.Model):
    state_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name
    
# table for all the districts
    
class DistrictLocation(models.Model):
    distric_id = models.AutoField(primary_key=True)
    state = models.ForeignKey(StateLocation, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    
    def __str__(self):
        return f"{self.name} ({self.state.name})"

# table for complaint details

class ComplaintDetail(models.Model):
    complaint_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    subCategory = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
    description = models.TextField()
    state = models.ForeignKey(StateLocation,on_delete=models.CASCADE)
    district = models.ForeignKey(DistrictLocation,on_delete=models.CASCADE)
    pincode = models.CharField(max_length=6)
    address = models.CharField(max_length=255)
    latitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    longitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    image_upload = models.ImageField(upload_to='uploads/', blank=True, null=True)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='Pending')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Complaint #{self.complaint_id} by {self.user.name}"

# table for hero content in landing page
 
class HeroContent(models.Model):
    title_desc = models.TextField(max_length=255)
    sub_desc = models.TextField(max_length=255)

    def __str__(self):
        return f"Herocontent #{self.title_desc} by {self.sub_desc}"

# table for testimonials content in landing page

class Testimonials(models.Model):
    main_title = models.TextField(max_length=255)
    sub_title = models.TextField(max_length=255)
    image = models.ImageField(upload_to= 'Landing_media/', null=True, blank=True)

    def __str__(self):
        return f"Testimonials #{self.main_title}"
    
# table for faq_section content in landing page

class Faq_Section(models.Model):
    faq_question = models.TextField(max_length=255)
    faq_answer = models.TextField(max_length=255)

    def __str__(self):
        return f"Faq_Section #{self.faq_question} by {self.faq_answer}"
    
# table for latest_news content in landing page

class Latest_News(models.Model):
    new_title = models.TextField(max_length=255)
    new_desc = models.TextField(max_length=255)

    def __str__(self):
        return f"Latest_News #{self.new_title} by {self.new_desc}"
