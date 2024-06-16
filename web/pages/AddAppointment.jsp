<%-- 
    Document   : AddAppointment
    Created on : Apr 3, 2024, 10:55:19 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Java_Classes.Service"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Make Appointment</title>

        <!-- adding css  -->
        <link rel="stylesheet" href="./pages/css/style.css">
        <!-- about css  -->
        <link rel="stylesheet" href="./pages/css/about.css">

        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">

        <!-- Appointment css -->
        <link rel="stylesheet" href="./pages/css/AddAppointment.css">


        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>

        <!-- link home.js -->
        <script src="./pages/js/home.js"></script>

        <style>
            .appointmentform input[type="tel"] {
                width: 100%;
                padding: 8px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            .appointmentform input[type="tel"]:focus {
                border-color: var(--global-color-1); /* Change border color on focus */
                outline: none; /* Remove default focus outline */
            }

        </style>
    </head>

    <body>

        <header>
            <a href="#" class="logo">Salon Silky Hair</a>
            <div class="menuToggle"></div>
            <nav>
                <ul>
                    <li><a href="./pages/index.jsp">Home</a></li>
                    <li><a href="./pages/about.jsp">About</a></li>
                    <li><a href="./pages/serviceSelection.jsp">Services</a></li>
                    <li><a href="./pages/protfolio.jsp">protfolio</a></li>
                    <li><a href="./pages/contact.jsp">Contact</a></li>
                    <li><a href="#" id="NavNum">+94 1122222984</a></li>
                </ul>
            </nav>
        </header>


        <section class="sectionFirst">
            <h1>Make an Appointment</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./pages/img/background180.svg" alt=""> 
            </section>
        </section>


        <!-- second section  -->
        <section class="aboutServices">
            <div class="ser-litText">Fill the form and make the appointment</div>
        </section>


        <section class="appointmentform">
            <form id="appointmentForm" action="#" method="POST">
                <label for="telephone">Telephone</label>
                <input type="tel" id="telephone" name="telephone" required maxlength="10"><br>
                <span id="telephoneError" style="color: red; display: none;">Please enter a valid 10-digit telephone number</span><br><br>

                <label for="service_type">Service Type:</label>
                <select id="service_type" name="service_type" required>
                    <% ArrayList<Service> serviceArray = (ArrayList) request.getAttribute("serviceArray");
                        for (Service service : serviceArray) {%>
                    <option value="<%= service.getType()%>"><%= service.getType()%></option>
                    <% }%>
                </select><br><br>

                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required><br><br>

                <label for="time">Time:</label>
                <select id="time" name="time" required>
                    <%
                        // Define start and end times
                        int startHour = 9;
                        int endHour = 17; // 5:00 PM

                        // Generate time slots with 30-minute intervals
                        for (int hour = startHour; hour < endHour; hour++) {
                            for (int minute = 0; minute < 60; minute += 30) {
                                // Calculate start and end times for the slot
                                String startTime = String.format("%02d:%02d", hour, minute);
                                String endTime = String.format("%02d:%02d", hour, minute + 30);
                                // Format the time slot
                                String timeSlot = startTime;
                    %>
                    <option value="<%= timeSlot%>"><%= timeSlot%></option>
                    <%
                            }
                        }
                    %>
                </select><br><br>




                <input type="submit" value="Book Now">
                <br><br>
            </form>
        </section>












        <!-- beforefooter  -->
        <div class="beforefooter">
            <div class="box">
                <div class="logo">Salon Silky Hair</div>
                <div class="bf-text">Dilhani Katugampola</div>
                <p class="para">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nostrum ipsam sit magni et
                    consequatur, tenetur ab doloremque totam necessitatibus inventore optio qui? Inventore vel quibusdam
                    exercitationem, nulla asperiores fugiat totam!</p>

                <div class="bf-text">Subscribe For Offers</div>

                <div class="subscribe">
                    <input type="email" name="" id="" placeholder="Enter your E-mail here">
                    <button class="btn">subscribe</button>
                </div>
            </div>

            <div class="box">
                <div class="bf-text">Quick Links</div>
                <ul>
                    <li><a href="./index.jsp">Home</a></li>
                    <li><a href="./about.jsp">About</a></li>
                    <li><a href="./servicesSelection.jsp">Services</a></li>
                    <li><a href="./protfolio.jsp">portfolio</a></li>
                    <li><a href="./contact.jsp">Contact</a></li>
                </ul>

                <div class="bf-text">Follow Us</div>
                <div class="icons">
                    <a href="#" class="fa-brands fa-facebook-f"></a>
                    <a href="#" class="fa-brands fa-google"></a>
                    <a href="#" class="fa-brands fa-instagram"></a>
                    <a href="#" class="fa-brands fa-youtube"></a>
                </div>
            </div>

            <div class="box">
                <div class="bf-text">Say Hi! </div>
                <ul class="SayHi">
                    <li><a href="./index.jsp">info@silkyhair.com</a></li>
                    <li><a href="./about.jsp">contact@silkyhair.com</a></li>
                </ul>

                <div class="bf-text">Call Us</div>
                <ul class="SayHi">
                    <li>Phone :+94 740087952</li>
                    <li>Toll Free:+94 1122222984</li>
                </ul>

                <div class="bf-text">Find Us</div>

                <div class="address">
                    76/B, City Road, Kurunagala
                </div>

            </div>
        </div>

        <!-- footer  -->
        <footer>
            <div class="fbox">Copyright &copy; 2023 Salon Silky Hair</div>
            <div class="fbox">Powered By Salon Silky Hair</div>
        </footer>




        <!-- js  -->
        <script src=".pages/js/script.js"></script>
    </body>

</html>
