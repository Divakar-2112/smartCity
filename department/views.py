from django.shortcuts import render, redirect
from django.http import JsonResponse
import json
from django.views.decorators.csrf import csrf_exempt
from citizen.models import *

def staff_complaints_view(request):
    if not request.user.is_authenticated:
        return redirect('/login')

    staff_username = request.user.username.lower()

    staff_dept_map = {
        'bala_pw_dpt': 'Public Works',
        'lokesh_ws_dpt': 'Water Supply',
        'vicky_elect_dpt': 'Electrical',
        'gopi_wm_dpt': 'Waste Management'
    }

    dept_name = staff_dept_map.get(staff_username)
    if not dept_name:
        return redirect('/login')

    try:
        department = Department.objects.get(name=dept_name)
    except Department.DoesNotExist:
        return redirect('/login')

    complaints = ComplaintDetail.objects.select_related('user').filter(department=department)

    status_counts = {
        'Resolved': complaints.filter(status='Resolved').count(),
        'InProgress': complaints.filter(status='In Progress').count(),
        'Pending': complaints.filter(status='Pending').count(),
        'Rejected': complaints.filter(status='Rejected').count(),
    }

    context = {
        "department": department,
        "department_complaints": complaints,
        "status_counts": status_counts,
        "total_complaints": complaints.count(),
        "user": request.user
    }
    return render(request, 'department/staff.html', context)

@csrf_exempt
def update_complaint_status(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            complaint_id = data.get("complaint_id")
            new_status = data.get("status")

            complaint = ComplaintDetail.objects.get(complaint_id=complaint_id)
            complaint.status = new_status
            complaint.save()

            return JsonResponse({"success": True})
        except Exception as e:
            return JsonResponse({"success": False, "error": str(e)})
    return JsonResponse({"success": False, "error": "Invalid request"})
