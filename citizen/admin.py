from django.contrib import admin
from .models import *

@admin.register(HeroContent)
class HeroContentAdmin(admin.ModelAdmin):
    
    list_display = ('title_desc','sub_desc')

    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

@admin.register(Testimonials)
class TestimonialsAdmin(admin.ModelAdmin):
    
    list_display = ('main_title','sub_title','image')
    
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

@admin.register(Faq_Section)
class Faq_SectionAdmin(admin.ModelAdmin):
    
    list_display = ('faq_question','faq_answer')

    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

@admin.register(Latest_News)
class Latest_NewsAdmin(admin.ModelAdmin):
    
    list_display = ('new_title','new_desc')

    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

admin.site.site_header = "Smart City Admin"

@admin.register(Department)
class DepartmentAdmin(admin.ModelAdmin):
    list_display = ('department_id', 'name', 'description')
    
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

@admin.register(NewUser)
class NewUserAdmin(admin.ModelAdmin):
    list_display = ('user_id', 'username', 'name', 'email', 'phone', 'role', 'department')
    list_filter = ('role', 'username','user_id')
    search_fields = ('username', 'name', 'email', 'phone')
    
        
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

@admin.register(SubCategory)
class SubCategoryAdmin(admin.ModelAdmin):
    list_display = ('subCategory_id', 'name', 'department', 'description')
    list_filter = ('department','subCategory_id','name')
    
        
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

@admin.register(ComplaintDetail)
class ComplaintDetailAdmin(admin.ModelAdmin):
    list_display = (
        'complaint_id', 'user', 'department', 'subCategory',
        'description', 'image_upload', 'status','address',
        'created_at', 'updated_at'
    )
    list_filter = ('status', 'department', 'subCategory')
    search_fields = ('description', 'location', 'user__username')
    
        
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }
