from django.shortcuts import render, get_object_or_404, redirect
from collections import defaultdict
from citizen.models import ComplaintDetail, Department, SubCategory

def staff(request):
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
    return render(request, 'department/staff.html', context)

def update_complaint_status(request, complaint_id):
    if request.method == 'POST':
        complaint = get_object_or_404(ComplaintDetail, pk=complaint_id)
        new_status = request.POST.get('status')
        if new_status in ['Pending', 'In Progress', 'Resolved','Reject']:
            complaint.status = new_status
            complaint.save()
    return redirect(request.META.get('HTTP_REFERER', '/'))
