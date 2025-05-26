from django.shortcuts import render
from collections import defaultdict
from citizen.models import *
# Create your views here.

def myadmin(request):
    department = Department.objects.all()
    subCategory = SubCategory.objects.all()
    complaints = ComplaintDetail.objects.select_related('department', 'user').all()

    department_complaints = defaultdict(list)
    for complaint in complaints:
        department_complaints[complaint.department.name].append(complaint)

    context = {
        "subCategory": subCategory,
        "department": department,
        "department_complaints": dict(department_complaints),
        "user": request.user  
    }
    return render(request,"myadmin/myadmin.html",context)