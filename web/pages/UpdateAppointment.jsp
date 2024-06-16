<%-- 
    Document   : UpdateAppointment
    Created on : Apr 30, 2024, 2:23:23 PM
    Author     : krkav
--%>
<%@page import="Java_Classes.Appointment"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Appointment</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/8MuU79kpn6e4UQxh2N5e6RV4wjuoZOR/FLB8l6clj0=" crossorigin="anonymous"></script>

    </head>
    <body>
        <section>

            <div class="container vh-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title text-center mb-4">Update Your Appointment</h4>
                                <form action="UpdateAppointmentServlet" method="POST">
                                    <% ArrayList<Appointment> appointmentArray = (ArrayList) request.getAttribute("appointmentArray");
                                        for (Appointment appointment : appointmentArray) {%>

                                    <input type="hidden" class="form-control" id="id" name="appointment_id" value="<%= appointment.getAppointment_id()%>" >
                                    <input type="hidden" class="form-control" id="restype" name="restype" value="user" >
                                    <div class="mb-3">
                                        <label for="telephone" class="form-label">Telephone:</label>
                                        <input type="tel" class="form-control" id="telephone" name="telephone" value="<%= appointment.getTelephone()%>" readonly required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="service_type" class="form-label">Service Type:</label>
                                        <input type="text" class="form-control" id="service_type" name="service_type" value="<%= appointment.getService_type()%>" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="date" class="form-label">Date:</label>
                                        <input type="date" class="form-control" id="date" name="date" value="<%= appointment.getDate()%>" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="time" class="form-label">Time:</label>
                                        <input type="time" class="form-control" id="time" name="time" value="<%= appointment.getTime()%>" required>
                                    </div>
                                    <% }%>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-danger" style="background-color: #f70077;">Update Appointment</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>






        </section>



    </body>
</html>
