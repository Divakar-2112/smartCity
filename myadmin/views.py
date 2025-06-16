from django.shortcuts import render
from collections import defaultdict
from citizen.models import *
from django.http import JsonResponse
import json

# my admin page

def myadmin(request):
    department = Department.objects.all()
    subCategory = SubCategory.objects.all()
    complaints = ComplaintDetail.objects.select_related('department', 'user').all()

    department_complaints = defaultdict(list)
    dept_status_counts = defaultdict(lambda: {
        'Resolved': 0,
        'InProgress': 0,
        'Pending': 0,
        'Rejected': 0
    })

    for complaint in complaints:
        dept_name = complaint.department.name
        department_complaints[dept_name].append(complaint)
        if complaint.status in ['Resolved', 'In Progress', 'Pending', 'Rejected']:
            key = complaint.status if complaint.status != 'In Progress' else 'InProgress'
            dept_status_counts[dept_name][key] += 1

    total_complaints = complaints.count()
    overall_status_counts = {
        'Resolved': complaints.filter(status='Resolved').count(),
        'InProgress': complaints.filter(status='In Progress').count(),
        'Pending': complaints.filter(status='Pending').count(),
        'Rejected': complaints.filter(status='Rejected').count(),
    }

    context = {
        "subCategory": subCategory,
        "department": department,
        "department_complaints": dict(department_complaints),
        'dept_status_counts': json.dumps(dept_status_counts),
        "total_complaints": total_complaints,
        "status_counts": overall_status_counts,
        "user": request.user
    }
    return render(request, "myadmin/myadmin.html", context)
