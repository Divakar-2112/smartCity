        document.addEventListener('DOMContentLoaded', () => {
            const searchInput = document.querySelector('.search-input');
            const departmentFilter = document.getElementById('department-filter');
            const statusFilter = document.getElementById('status-filter');

            function applyStatusColors() {
                document.querySelectorAll('.status').forEach(el => {
                    const status = el.textContent.trim().toLowerCase();
                    if (status === 'pending') el.style.color = '#dc3545';
                    else if (status === 'resolved') el.style.color = '#28a745';
                    else if (status === 'in progress') el.style.color = '#ff8c00';
                    else if (status === 'rejected') el.style.color = '#6c757d';
                });
            }

            function countFilteredComplaints() {
                const counts = { Resolved: 0, "In Progress": 0, Pending: 0, Rejected: 0 };
                let total = 0;
                document.querySelectorAll('tbody tr').forEach(row => {
                    if (row.style.display !== 'none') {
                        const status = row.querySelector('.status').textContent.trim();
                        if (counts.hasOwnProperty(status)) counts[status]++;
                        total++;
                    }
                });
                document.getElementById('count-total').textContent = total;
                document.getElementById('count-resolved').textContent = counts.Resolved;
                document.getElementById('count-inprogress').textContent = counts["In Progress"];
                document.getElementById('count-pending').textContent = counts.Pending;
                document.getElementById('count-rejected').textContent = counts.Rejected;
            }

            function filterTable() {
                const searchText = searchInput.value.toLowerCase();
                const selectedDepartment = departmentFilter.value;
                const selectedStatus = statusFilter.value;

                let anyVisibleRows = false;

                document.querySelectorAll('.department-section').forEach(section => {
                    const dept = section.getAttribute('data-department');
                    let visibleRowCount = 0;

                    section.querySelectorAll('tbody tr').forEach(row => {
                        const cells = row.querySelectorAll('td');
                        const username = cells[1].textContent.toLowerCase();
                        const complaintId = cells[0].textContent.toLowerCase();
                        const status = row.querySelector('.status').textContent.trim();

                        const matchesSearch = username.includes(searchText) || complaintId.includes(searchText);
                        const matchesDepartment = selectedDepartment === "All" || dept === selectedDepartment;
                        const matchesStatus = selectedStatus === "All" || status === selectedStatus;

                        const showRow = matchesSearch && matchesDepartment && matchesStatus;
                        row.style.display = showRow ? '' : 'none';
                        if (showRow) visibleRowCount++;
                    });

                    section.style.display = visibleRowCount > 0 ? '' : 'none';
                    if (visibleRowCount > 0) {
                        anyVisibleRows = true;
                    }
                });

                const noResultsDiv = document.getElementById('noResults');
                noResultsDiv.style.display = anyVisibleRows ? 'none' : 'block';

                countFilteredComplaints();
            }

            function setupComplaintModal() {
                document.querySelectorAll('.complaint-table tbody tr').forEach(row => {
                    row.addEventListener('click', () => {
                        const cells = row.querySelectorAll('td');
                        const complaintId = cells[0].textContent.trim();
                        const userName = cells[1].textContent.trim();
                        const description = cells[2].textContent.trim();
                        const date = cells[4].textContent.trim();
                        const location = cells[5].textContent.trim();
                        const status = row.querySelector('.status').textContent.trim();
                        const imgEl = cells[6].querySelector('img');
                        const imageUrl = imgEl ? imgEl.src : null;
                        const detailsDiv = document.getElementById('complaintDetails');
                        detailsDiv.innerHTML = `
                            <p><strong>Complaint ID:</strong> ${complaintId}</p>
                            <p><strong>User Name:</strong> ${userName}</p>
                            <p><strong>Description:</strong> ${description}</p>
                            <p><strong>Date:</strong> ${date}</p>
                            <p><strong>Location:</strong> ${location}</p>
                            <p><strong>Status:</strong> ${status}</p>
                            ${imageUrl ? `<p><strong>Image:</strong><br><img src="${imageUrl}" alt="Complaint Image"></p>` : '<p><strong>Image:</strong> No image</p>'}
                        `;
                        document.getElementById('complaintModal').style.display = 'block';
                    });
                });
                document.getElementById('closeModal').addEventListener('click', () => {
                    document.getElementById('complaintModal').style.display = 'none';
                });
                window.addEventListener('click', (event) => {
                    const modal = document.getElementById('complaintModal');
                    if (event.target === modal) modal.style.display = 'none';
                });
            }

            applyStatusColors();
            filterTable();
            setupComplaintModal();
            searchInput.addEventListener('input', filterTable);
            departmentFilter.addEventListener('change', filterTable);
            statusFilter.addEventListener('change', filterTable);
        });
