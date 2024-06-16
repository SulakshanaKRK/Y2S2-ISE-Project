<%-- 
    Document   : nails
    Created on : Apr 1, 2024, 10:58:39 PM
    Author     : krkav
--%>

<%@page import="Java_Classes.Service"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Service Selection</title>

        <!-- adding css  -->
        <link rel="stylesheet" href="./pages/css/nails.css">

        <!-- adding css  -->
        <!-- bootstrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">

        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>

        <!-- link home.js -->
        <script src="./pages/js/home.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </head>

    <body>

        <header>
            <a href="#" class="logo">Salon Silky Hair</a>
            <div class="menuToggle"></div>
            <nav>
                <ul>
                    <li><a href="./pages/index.jsp">Home</a></li>
                    <li><a href="./pages/about.jsp">About</a></li>
                    <li><a href="./pages/serviceSelection.html">Services</a></li>
                    <li><a href="./pages/protfolio.html">portfolio</a></li>
                    <li><a href="./pages/contact.html">Contact</a></li>
                    <li><a href="#" id="NavNum">+94 1122222984</a></li>
                </ul>
            </nav>
        </header>


        <section class="sectionFirst">
            <h1>Blow Up Your Nails</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./pages/img/background180.svg" alt="">
            </section>
        </section>


        <!-- section second  -->
        <section class="aboutServices">
            <div class="ser-litText">Select What To Do With your Nails</div>
            <p class="ser-text">
                Go through our available Nail services & prices and reserve what you wanted from us to do for you.
            </p>

            <div class="box">

                <% ArrayList<Service> serviceArray = (ArrayList) request.getAttribute("serviceArray");
                for (Service service : serviceArray) { %>
                <div class="card" style="width: 18rem;">
                    <img src="<%= service.getImage()%>" alt="<%= service.getImage() %>" class="card-img-top" alt="#">
                    <div class="card-body">
                        <h5 class="card-title"><%= service.getType() %></h5>
                        <p class="card-text">
                        <p class="product">Beauty Product : <%= service.getProduct() %></p>
                        <p class="beautician">Beautician : <%= service.getBeautcian()%></p>
                        <b class="time">Available Time Slot : 9.00 - 17.00</b>
                        </p>
                        <a href="#" class="btn btn-danger">RS.<%= service.getPrice()%></a>
                    </div>
                </div>
                <% }%>


            </div>

            <div class="appointment">
                <a href="/SalonSIlkyHair/AddApointmentServlet" class="btn btn-outline-danger btn-lg">Make an Appointment</a>
            </div>

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
                    <li><a href="./pages/index.jsp">Home</a></li>
                    <li><a href="./about.html">About</a></li>
                    <li><a href="./services.html">Services</a></li>
                    <li><a href="./protfolio.html">protfolio</a></li>
                    <li><a href="./contact.html">Contact</a></li>
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
                    <li><a href="./index.html">info@silkyhair.com</a></li>
                    <li><a href="./about.html">contact@silkyhair.com</a></li>
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

        <script src="./pages/js/script.js"></script>

    </body>

</html>