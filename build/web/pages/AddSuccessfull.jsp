<%-- 
    Document   : AddSuccessfull
    Created on : May 9, 2024, 12:19:18 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Appointment</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </head>
    <body>
        <section>
            <div class="d-flex justify-content-center align-items-center vh-100">
                <div class="card" style="width: 25rem;">
                    <div class="card-body"></div>
                    <div class="card-body">
                        <h5 class="card-title text-center mb-3 h3">Successfully  Added !</h5>
                        <img src="./pages/img/correct.jpg" class="card-img-top" alt="...">
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between">
                            <div>
                                <h5 class="card-title h6">Go TO Admin Dashboard</h5>

                            </div>
                            <div>
                                <a href="ViewAppointmentServlet" class="card-link text-center">Dashboard >> </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>


    </body>
</html>
