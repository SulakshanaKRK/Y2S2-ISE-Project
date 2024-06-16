<%-- 
    Document   : DoctorDetails
    Created on : May 1, 2024, 11:50:04 AM
    Author     : Anarkalee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Doctor Details</title>

        <link rel="stylesheet" href="css/DoctorDetails.css">

        <!-- adding css  -->
        <link rel="stylesheet" href="css/style2.css">
        <!-- registration css  -->
        <link rel="stylesheet" href="css/registration.css">
        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="css/MediaQuery.css">

        <script src="js/home.js"></script>

        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
            <a href="#" class="logo">Salon Silky Hair</a>
            <div class="menuToggle"></div>
            <nav>
                <ul>
                    <li><a href="./index.jsp">Home</a></li>
                    <li><a href="./about.jsp">About</a></li>
                    <li><a href="./services.jsp">Services</a></li>
                    <li><a href="./protfolio.jsp">portfolio</a></li>
                    <li><a href="./contact.jsp">Contact</a></li>
                    <li><a href="#" id="NavNum">Shop Now</a></li>
                </ul>
            </nav>
        </header>


        <section class="sectionFirst">
            <h1>Doctor Details</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./img/background180.svg" alt="">
            </section>
        </section>
        <div class="header">
            Salon Silky Hair
            
            <a href="/SalonSIlkyHair/Addmedicare" class="appointment-btn btn-sm">Make Appointment</a>

        </div>
        <div class="doctor-details">
            <img src="img/Doctor-one.jpg.jpg" alt="Doctor one">
            <div class="info">
                <h2>Dr. Niroshini Yahampath</h2>
                <p>Specialty: Dermatologist</p>
                <p>Experience: 08 years</p>
                <p>Location: 76/B, City Road, Kurunegala</p>
            </div>
        </div>

        <div class="doctor-card">
            <img src="img/Doctor-two.jpg.jpg" alt="Doctor-two" >
            <div class="doctor-details">
                <h2>Dr. Uditha Bulugahapitiya</h2>
                <p>Specialty: Dermatologist</p>
                <p>Experience: 12 years</p>
                <p>Location: 76/B, City Road, Kurunegala</p>
            </div>


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
                        <li><a href="./index.html">Home</a></li>
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




            <!-- js  -->
            <script src="./pages/js/script.js"></script>



    </body>
</html>
