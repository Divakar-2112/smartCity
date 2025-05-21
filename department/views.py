from django.shortcuts import render
from citizen.models import *

# Create your views here.
def staff(request):
    department=Department.objects.all()
    subCategory = SubCategory.objects.all()
    context={
        "subCategory": subCategory,
        "department":department
    }
    return render(request, 'department/staff.html', context)
