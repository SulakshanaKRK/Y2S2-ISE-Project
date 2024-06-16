<%-- 
    Document   : Admin_Dashboard
    Created on : Apr 2, 2024, 4:49:29 PM
    Author     : krkav
--%>
<%@page import="Java_Classes.Appointment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Java_Classes.Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Silky Hair Admin</title>
        <link href="./pages/css/Admin.css" rel="stylesheet" />
        <link href="./pages/css/Admin_Dashboard.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">


        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">


        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="path/to/bootstrap.min.css" rel="stylesheet">
        <script src="path/to/jquery.min.js"></script>
        <script src="path/to/bootstrap.min.js"></script>


    </head>

    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="ViewAppointmentServlet">Salon Silky Hair</a>

            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">

            </form>

            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Main</div>
                            <a class="nav-link active" href="ViewAppointmentServlet">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Service Management</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Service Handling
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="delete-nail-service">Delete Beauty Services</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>



                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fa fa-gift"></i></div>
                                Promotions & Discounts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/SalonSIlkyHair/AddPromotionsServlet">Add Promotions & Discounts</a>
                                    <a class="nav-link" href="/SalonSIlkyHair/DeletePromotionsServlet">Delete Promotions & Discounts</a>
                                    <a class="nav-link" href="/SalonSIlkyHair/ViewUsersServlet">View registered customer details</a>
                                    <a class="nav-link" href="/SalonSIlkyHair/viewAdminPromoServlet">Check Promotion Validity</a>
                                </nav>
                            </div>


                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fa fa-comments"></i></div>
                                Reviews
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">

                                    <a class="nav-link" href="ViewReviewsServlet">View Customer Reviews</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Services
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Beauty Care Services
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="create-nail-services">Nail</a>
                                            <a class="nav-link" href="register.html">Skin</a>
                                            <a class="nav-link" href="password.html">Hair</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Medi Care Services
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">other</div>
                            <a class="nav-link" href="ViewAppointmentServlet_Reports">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Reports & Charts
                            </a>
                            <a class="nav-link" href="/SalonSIlkyHair/AddProductServlet">
                                <div class="sb-nav-link-icon"><i class="bi bi-cart4"></i></div>
                                Hair Products
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        <i class="bi bi-person-circle"></i>
                        Admin
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">

                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Welcome Admin!</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="ViewAppointmentServlet">Dashboard</a></li>
                            <li class="breadcrumb-item active">Salon Silky Hair Admin Panel</li>
                        </ol>

                    </div>

                </main>

                <!--section first-->
                <section>
                    <div class="container-fluid px-4">
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body"><h2 class="h5"><i class="bi bi-person-badge"></i> Beauty Appointments</h2></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#appointments">View Appointments</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-secondary text-white mb-4">
                                    <div class="card-body"><h2 class="h5"><i class="bi bi-clipboard2-pulse"></i> Medical Appointments</h2></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="ViewMedicare">View Appointments</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body"><h2 class="h5"><i class="bi bi-shop"></i> Products</h2></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="ViewProducts">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-info text-white mb-4">
                                    <div class="card-body"><h2 class="h5">Blank</h2></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </section>


                <!-- Section Second (Beauty Appointments) -->
                <section>
                    <div class="container-fluid px-4">



                        <div class="card" style="width: 77rem;">

                            <div class="card-body">
                                <div class="row">

                                    <div class="col"><h5 class="card-title">Beauty Appointments</h5></div>
                                    <div class="col"></div>
                                    <div class="col"></div>
                                    <div class="col">
                                        <div class="input-group top-0 end-2 mt-0 me-5">
                                            <input class="form-control w-50 p-1" onChange="searchByPhoneNumber()" type="search" id="phoneSearchInput" placeholder="Search by phone number..." aria-label="Search by phone number..."  maxlength="10" aria-describedby="btnNavbarSearch" />

                                            <button class="btn btn-primary" id="btnBeautySearch" type="button"><i class="fas fa-search"></i></button>

                                        </div>

                                    </div>


                                </div>
                                <h6 class="card-subtitle mb-2 text-muted">All Beauty Appointments listed here</h6>

                                <!--appointment table-->
                                <table id="appointments" class="table">

                                    <thead>
                                        <tr>
                                            <th scope="col">Appointment Id</th>
                                            <th scope="col">Telephone</th>
                                            <th scope="col">Service Type</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Time</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <% ArrayList<Appointment> appointmentArray = (ArrayList) request.getAttribute("appointmentArray");
                                            for (Appointment appointment : appointmentArray) {%>
                                        <tr>
                                            <th scope="row" name="appointment_id" data-id="<%= appointment.getAppointment_id()%>"><%= appointment.getAppointment_id()%></th>
                                            <td><%= appointment.getTelephone()%></td>
                                            <td><%= appointment.getService_type()%></td>
                                            <td><%= appointment.getDate()%></td>
                                            <td><%= appointment.getTime()%></td>
                                            <td>
                                                <button type="button" class="btn btn-outline-primary btn-sm btn-confirm" onclick="openConfirmModal('<%= appointment.getAppointment_id()%>')">Confirm</button>

                                                <button type="button" class="btn btn-outline-secondary btn-sm" onclick="openChangeModal('<%= appointment.getAppointment_id()%>', '<%= appointment.getTelephone()%>', '<%= appointment.getService_type()%>', '<%= appointment.getDate()%>', '<%= appointment.getTime()%>')">Change</button>
                                                <button type="button" class="btn btn-outline-danger btn-sm" onclick="confirmCancel('<%= appointment.getAppointment_id()%>')">Cancel</button>
                                            </td>
                                        </tr>

                                        <% }%>  
                                    </tbody>
                                </table>

                                <!-- Delete Appointment Modal -->
                                <div class="modal" id="cancelModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cancel Appointment</h4>
                                                <button type="button" class="btn-close" onclick="closeModal()" data-dismiss="modal"></button> 
                                            </div>

                                            <!-- Modal Body -->
                                            <div class="modal-body">

                                                Are you sure you want to cancel this appointment?
                                            </div>

                                            <!-- Modal Footer -->
                                            <div class="modal-footer">
                                                <button id="confirmCancelBtn" type="button" class="btn btn-danger" onclick="cancelAppointment()">Yes</button>
                                                <button type="button" class="btn btn-secondary" onclick="closeModal()" data-dismiss="modal">No</button>
                                            </div>


                                        </div>
                                    </div>
                                </div>



                                <!--confirm appointment modal-->

                                <div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="confirmModalLabel">Confirm Appointment</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                Are you sure you want to confirm this appointment?
                                            </div>
                                            <div class="modal-footer">

                                                <button type="button" class="btn btn-primary" id="confirmAppointmentBtn" onclick="confirmAppointment()">Confirm</button>
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!--update appointment model-->
                                <div class="modal fade" id="changeModal" tabindex="-1" aria-labelledby="changeModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="changeModalLabel">Update Appointment Details</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <h6>Update Appointment details</h6>
                                                <form class="row g-3" action="UpdateAppointmentServlet" method="POST">

                                                    <input type="hidden" class="form-control" id="Update_app_id" name="appointment_id" value="" >
                                                    <input type="hidden" class="form-control" id="restype" name="restype" value="admin" >
                                                    <div class="col-md-6">
                                                        <label for="telephone" class="form-label">Telephone</label>
                                                        <input type="tel" class="form-control" id="telephone" name="telephone" value="" readonly required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="service_type" class="form-label">Service Type</label>
                                                        <input type="text" class="form-control" id="service_type" name="service_type" value="" readonly required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="date" class="form-label">Date</label>
                                                        <input type="date" class="form-control" id="date" name="date" value="" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="time" class="form-label">Time</label>
                                                        <input type="time" class="form-control" id="time" name="time" value="" required>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-primary" >Update</button>
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                </div>
















                                <script>
                                    //                                    For Cancel appointment
                                    function confirmCancel(appointmentId) {
                                        $('#cancelModal').modal('show');
                                        // Set the appointment ID as a data attribute of the "Yes" button
                                        $('#confirmCancelBtn').data('appointmentId', appointmentId);
                                    }

                                    function cancelAppointment() {
                                        var appointmentId = $('#confirmCancelBtn').data('appointmentId');
                                        $.ajax({
                                            type: "POST",
                                            url: "DeleteAppointmentServlet",
                                            data: {appointment_id: appointmentId},
                                        });

                                        $('#cancelModal').modal('hide');


                                    }


                                    function closeModal() {
                                        $('#cancelModal').modal('hide');
                                    }


                                    //                                  confirm appointment
                                    function openConfirmModal(appointmentId) {
                                        console.log("Opening confirm modal for appointment ID:", appointmentId);
                                        document.getElementById('confirmModalLabel').innerText = "Confirm Appointment #" + appointmentId;
                                        document.getElementById('confirmAppointmentBtn').setAttribute('data-id', appointmentId);
                                        $('#confirmModal').modal('show');
                                    }

                                    function confirmAppointment() {
                                        var appointmentId = document.getElementById('confirmAppointmentBtn').getAttribute('data-id');
                                        console.log("Confirming appointment ID:", appointmentId);

                                        var confirmedRow = document.querySelector('th[name="appointment_id"][scope="row"][data-id="' + appointmentId + '"]').parentNode;
                                        console.log("Confirmed row:", confirmedRow);

                                        confirmedRow.classList.add('table-success'); // Change background color to Bootstrap success color

                                        var confirmBtn = confirmedRow.querySelector('.btn-confirm');
                                        confirmBtn.classList.add('d-none'); // Hide the confirm button

                                        $('#confirmModal').modal('hide');
                                    }



                                    // for update appointment details
                                    function openChangeModal(appointmentId, telephone, service_type, date, time) {
                                        console.log("Opening change modal for appointment ID:", appointmentId);

                                        document.getElementById('changeModalLabel').innerText = "Update Appointment #" + appointmentId;

                                        // Populate form fields with the provided data
                                        document.getElementById('telephone').value = telephone;
                                        document.getElementById('service_type').value = service_type;
                                        document.getElementById('date').value = date;
                                        document.getElementById('time').value = time;
                                        document.getElementById('Update_app_id').value = appointmentId;


                                        $('#changeModal').modal('show');
                                    }





                                    // Function to filter table rows by phone number
                                    function searchByPhoneNumber() {
                                        var input = document.getElementById('phoneSearchInput').value.toUpperCase();
                                        var table = document.getElementById('appointments');
                                        var rows = table.getElementsByTagName('tr');

                                        // Find the index of the phone number column dynamically
                                        var phoneIndex = -1;
                                        var headerRow = table.rows[0];
                                        for (var i = 0; i < headerRow.cells.length; i++) {
                                            if (headerRow.cells[i].textContent.trim().toLowerCase() === 'telephone') {
                                                phoneIndex = i;
                                                break;
                                            }
                                        }

                                        // If phone number column not found, return
                                        if (phoneIndex === -1)
                                            return;

                                        // Loop through rows and hide/show based on phone number match
                                        for (var i = 1; i < rows.length; i++) {
                                            var phoneCell = rows[i].cells[phoneIndex];
                                            if (phoneCell) {
                                                var phoneText = phoneCell.textContent || phoneCell.innerText;
                                                rows[i].style.display = phoneText.toUpperCase().includes(input) ? '' : 'none';
                                            }
                                        }
                                    }


                                    // Event listener for the search button
                                    document.getElementById('btnBeautySearch').addEventListener('click', function () {
                                        searchByPhoneNumber();
                                    });
                                    

                                    // Display all table rows initially when the page loads
                                    window.onload = function () {
                                        var rows = document.getElementById('appointments').getElementsByTagName('tr');
                                        for (var i = 0; i < rows.length; i++) {
                                            rows[i].style.display = '';
                                        }
                                    };










                                </script>


                            </div>


                        </div>
                    </div>
                </section>
                <br><br>





                <br><br>













                <script>
                    $(document).ready(function () {
                        // Initialize Bootstrap Datepicker
                        $('#calendar-icon').datepicker({
                            autoclose: true
                        });
                    });
                </script>


                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Salon Silky Hair 2024</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="./pages/js/scripts.js"></script>
    </body>
</html>

