from django.contrib import admin
from .models import *

# admin site header

admin.site.site_header = "Smart City Admin"

# hero content display

@admin.register(HeroContent)
class HeroContentAdmin(admin.ModelAdmin):
    
    list_display = ('title_desc','sub_desc')

    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

# testimonials content display

@admin.register(Testimonials)
class TestimonialsAdmin(admin.ModelAdmin):
    
    list_display = ('main_title','sub_title','image')
    
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

# faq_section content display

@admin.register(Faq_Section)
class Faq_SectionAdmin(admin.ModelAdmin):
    
    list_display = ('faq_question','faq_answer')

    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

# latest_news content display

@admin.register(Latest_News)
class Latest_NewsAdmin(admin.ModelAdmin):
    
    list_display = ('new_title','new_desc')

    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

# department table display

@admin.register(Department)
class DepartmentAdmin(admin.ModelAdmin):
    list_display = ('department_id', 'name', 'description')
    
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }
        
# user table display

@admin.register(NewUser)
class NewUserAdmin(admin.ModelAdmin):
    list_display = ('user_id', 'username', 'name', 'email', 'phone', 'role', 'department')
    list_filter = ('role', 'username','user_id')
    search_fields = ('username', 'name', 'email', 'phone')
    
        
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

# sub category table display 

@admin.register(SubCategory)
class SubCategoryAdmin(admin.ModelAdmin):
    list_display = ('subCategory_id', 'name', 'department', 'description')
    list_filter = ('department','subCategory_id','name')
    
        
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }

# complaint details table display

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

# states table display

@admin.register(StateLocation)
class StateLocationAdmin(admin.ModelAdmin):
    list_display = ('state_id', 'name')              
    search_fields = ('name',)
    
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }                        

# district table display

@admin.register(DistrictLocation)
class DistrictLocationAdmin(admin.ModelAdmin):
    list_display = ('distric_id', 'name', 'state')   
    search_fields = ('name', 'state__name')         
    list_filter = ('state',)    
    
    class Media:
        css = {
            'all': ('css/admin_custom.css',)
        }                     