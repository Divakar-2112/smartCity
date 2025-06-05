from django.contrib import admin

from .models import *

admin.site.register(Department)
admin.site.register(SubCategory)
admin.site.register(ComplaintDetail)
admin.site.register(NewUser)


admin.site.site_header = "Smart City Admin"