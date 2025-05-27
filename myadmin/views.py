from django.shortcuts import render
from collections import defaultdict
from citizen.models import *

def myadmin(request):
    department = Department.objects.all()
    subCategory = SubCategory.objects.all()
    complaints = ComplaintDetail.objects.select_related('department', 'user').all()

    department_complaints = defaultdict(list)
    for complaint in complaints:
        department_complaints[complaint.department.name].append(complaint)
    
    total_complaints = complaints.count()
    status_counts = {
        'Resolved': complaints.filter(status='Resolved').count(),
        'InProgress': complaints.filter(status='In Progress').count(),
        'Pending': complaints.filter(status='Pending').count(),
        'Rejected': complaints.filter(status='Rejected').count(),
    }

    context = {
        "subCategory": subCategory,
        "department": department,
        "department_complaints": dict(department_complaints),
        'total_complaints': total_complaints,
        'status_counts': status_counts,
        "user": request.user  
    }
    return render(request,"myadmin/myadmin.html",context)