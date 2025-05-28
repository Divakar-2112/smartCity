# views.py
from django.shortcuts import render, get_object_or_404, redirect
from citizen.models import ComplaintDetail, Department, SubCategory
from collections import defaultdict

def staff_complaints_view(request):
    user = request.user

    # Map usernames to department names
    user_department_map = {
        "bala_pw_dpt": "Public Works",
        "lokesh_ws_dpt": "Water Supply",
        "vicky_elect_dpt": "Electricity",
        "gopi_wm_dpt": "Waste Management"
    }

    dept_name = user_department_map.get(user.username.lower())

    if not dept_name:
        return redirect('/login')  # or handle error appropriately

    current_dept = get_object_or_404(Department, name=dept_name)
    complaints = ComplaintDetail.objects.select_related('department', 'user').filter(department=current_dept)

    department_complaints = defaultdict(list)
    for complaint in complaints:
        department_complaints[current_dept.name].append(complaint)

    # Complaint counts by status
    status_counts = {
        'Resolved': complaints.filter(status='Resolved').count(),
        'InProgress': complaints.filter(status='In Progress').count(),
        'Pending': complaints.filter(status='Pending').count(),
        'Rejected': complaints.filter(status='Rejected').count()
    }

    context = {
        "subCategory": SubCategory.objects.all(),
        "department": Department.objects.all(),
        "selected_department": current_dept,
        "department_complaints": dict(department_complaints),
        "total_complaints": complaints.count(),
        "status_counts": status_counts,
        "dept_status_counts": status_counts,
        "user": request.user
    }

    return render(request, 'staff.html', context)


def update_complaint_status(request, complaint_id):
    if request.method == 'POST':
        complaint = get_object_or_404(ComplaintDetail, pk=complaint_id)
        new_status = request.POST.get('status')
        if new_status in ['Pending', 'In Progress', 'Resolved', 'Reject']:
            complaint.status = new_status
            complaint.save()
    return redirect(request.META.get('HTTP_REFERER', '/'))
