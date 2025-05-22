from django.shortcuts import render
from citizen.models import *

# Create your views here.
def staff(request):
    department=Department.objects.all()
    subCategory = SubCategory.objects.all()
    complaints = ComplaintDetail.objects.all()
    context={
        "subCategory": subCategory,
        "department":department,
        "complaints":complaints
    }
    return render(request, 'department/staff.html', context)
