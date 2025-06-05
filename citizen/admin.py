from django.contrib import admin
from .models import *

admin.site.site_header = "Smart City Admin"

@admin.register(Department)
class DepartmentAdmin(admin.ModelAdmin):
    list_display = ('department_id', 'name', 'description')

@admin.register(NewUser)
class NewUserAdmin(admin.ModelAdmin):
    list_display = ('user_id', 'username', 'name', 'email', 'phone', 'role', 'department')
    list_filter = ('role', 'username','user_id')
    search_fields = ('username', 'name', 'email', 'phone')

@admin.register(SubCategory)
class SubCategoryAdmin(admin.ModelAdmin):
    list_display = ('subCategory_id', 'name', 'department', 'description')
    list_filter = ('department','subCategory_id','name')

@admin.register(ComplaintDetail)
class ComplaintDetailAdmin(admin.ModelAdmin):
    list_display = (
        'complaint_id', 'user', 'department', 'subCategory',
        'description', 'location', 'image_url', 'status',
        'created_at', 'updated_at'
    )
    list_filter = ('status', 'department', 'subCategory')
    search_fields = ('description', 'location', 'user__username')
