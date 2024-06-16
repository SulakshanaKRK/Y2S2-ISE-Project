<%-- 
    Document   : index.jsp
    Created on : May 12, 2024, 1:57:40 PM
    Author     : krkav
--%>
<%@page import="Java_Classes.Appointment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Java_Classes.Appointment"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">


        <link rel="stylesheet" href="./pages/calendar-19/fonts/icomoon/style.css">

        <link href='./pages/calendar-19/fullcalendar/packages/core/main.css' rel='stylesheet' />
        <link href='./pages/calendar-19/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
        <link href="./pages/css/Admin.css" rel="stylesheet" />
        <link href="./pages/css/Admin_Report.css" rel="stylesheet" />
        <link href="./pages/css/Admin_Dashboard.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="./pages/path/to/bootstrap.min.css" rel="stylesheet">
        <script src="./pages/path/to/jquery.min.js"></script>
        <script src="./pages/path/to/bootstrap.min.js"></script>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/5.10.0/main.min.css' rel='stylesheet' />
        <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/5.10.0/main.min.js'></script>


        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">


        <link rel="stylesheet" href="./pages/calendar/fonts/icomoon/style.css">

        <link href='./pages/calendar/fullcalendar/packages/core/main.css' rel='stylesheet' />
        <link href='./pages/calendar/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="./pages/calendar-19/css/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="./pages/calendar-19/css/style.css">
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

        <title>Reports & Summary</title>
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
                            <a class="nav-link" href="ViewAppointmentServlet">
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
                            <a class="nav-link active" href="charts.html">
                                <div class="sb-nav-link-icon active"><i class="fas fa-chart-area"></i></div>
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
                        <h1 class="mt-4 h2">Summary & Reporting</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="ViewAppointmentServlet">Dashboard</a></li>
                            <li class="breadcrumb-item active">Reports & Charts</li>
                        </ol>
                        <hr>
                    </div>
                </main>

                <!--Calendar section-->

                <section>
                    <div class="container-fluid px-2">
                        <div class="row">
                            <div class="col-sm-7">
                                <div class="card" style="width: 100%; height: 100vh;">
                                    <div class="card-body" style="padding-top: 2px;">
                                        <div class="content">
                                            <div id='calendar'></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="card" style="width: 100%; height: 100vh;">
                                    <div class="card-body">
                                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                                        <div id="piechart" style="width: 100%; height: 400px;"></div>
                                        <a href="ViewAppointmentServlet" class="btn btn-primary">Go To Services</a>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                </section>



                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        var calendarEl = document.getElementById('calendar');

                        var currentDate = new Date();
                        var year = currentDate.getFullYear();
                        var month = String(currentDate.getMonth() + 1).padStart(2, '0'); // Adding 1 because months are zero-based
                        var day = String(currentDate.getDate()).padStart(2, '0');
                        var formattedDate = year + '-' + month + '-' + day;


                        var calendar = new FullCalendar.Calendar(calendarEl, {
                            plugins: ['interaction', 'dayGrid'],
                            defaultDate: formattedDate.toString(),
                            editable: true,
                            eventLimit: true, // allow "more" link when too many events
                            events: <%= request.getAttribute("jsonCalendarAp")%>
                        });

                        calendar.render();
                    });

                </script>

                <script>
                    // Wait for the DOM content to be fully loaded
                    document.addEventListener('DOMContentLoaded', function () {
                        // Load the Google Charts library
                        google.charts.load('current', {'packages': ['corechart']});
                        google.charts.setOnLoadCallback(drawChart);
                        var tempArray = [<%
                            int[] pieData = (int[]) request.getAttribute("pieData");
                            if (pieData != null && pieData.length > 0) {
                                for (int i = 0; i < pieData.length; i++) {
                                    if (i > 0) {
                                        out.print(",");
                                    }
                                    out.print(pieData[i]);
                                }
                            }
                    %>];
                        var tempData =
                                [
                                    ['Task', 'Count'],
                                    ['Beauty Appointments', tempArray[0]],
                                    ['Medical Appointments', tempArray[1]],
                                    ['Sales', tempArray[2]]
                                ];

                        // Function to draw the chart
                        function drawChart() {
                            // Data for the chart
                            var data = google.visualization.arrayToDataTable(tempData);

                            // Options for the chart
                            var options = {
                                title: 'Service Summary', // Add a title
                                // You can customize other options here
                            };

                            // Create a new PieChart instance and pass the chart container element
                            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                            // Draw the chart with the data and options
                            chart.draw(data, options);
                        }
                    });
                </script>


                <script src="./pages/calendar-19/js/jquery-3.3.1.min.js"></script>
                <script src="./pages/calendar-19/js/popper.min.js"></script>
                <script src="./pages/calendar-19/js/bootstrap.min.js"></script>

                <script src='./pages/calendar-19/fullcalendar/packages/core/main.js'></script>
                <script src='./pages/calendar-19/fullcalendar/packages/interaction/main.js'></script>
                <script src='./pages/calendar-19/fullcalendar/packages/daygrid/main.js'></script>
                <script src="./pages/js/main.js"></script>
                </body>
                </html>