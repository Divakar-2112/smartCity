from django.shortcuts import render, redirect
from citizen.models import Department, ComplaintDetail

def staff_complaints_view(request):
    if not request.user.is_authenticated:
        return redirect('/login')

    staff_username = request.user.username.lower()

    # Map usernames to departments
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
