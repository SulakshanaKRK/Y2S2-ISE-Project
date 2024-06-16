<%-- 
    Document   : registration
    Created on : Apr 3, 2024, 10:56:52 AM
    Author     : Sithumini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register</title>

        <!-- adding css  -->
        <link rel="stylesheet" href="./pages/css/style.css">
        <!-- registration css  -->
        <link rel="stylesheet" href="./pages/css/registration.css">
        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">

        <script src="./pages/js/home.js"></script>

        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>

    </head>

    <body>

        <header>
            <a href="#" class="logo">Salon Silky Hair</a>
            <div class="menuToggle"></div>
            <nav>
                <ul>
                    <li><a href="./index.html">Home</a></li>
                    <li><a href="./about.html">About</a></li>
                    <li><a href="./services.html">Services</a></li>
                    <li><a href="./protfolio.html">protfolio</a></li>
                    <li><a href="./contact.html">Contact</a></li>
                    <li><a href="#" id="NavNum">+94 1122222984</a></li>
                </ul>
            </nav>
        </header>


        <section class="sectionFirst">
            <h1>Register Here!</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./pages/img/background180.svg" alt="">
            </section>
        </section>







        <form action="registerCustomerServlet" method="POST">
            <fieldset style="background: white">    
                <legend>Please enter your information</legend>

                <label for="fname">First Name</label>
                <input type="text" id="fname" name="first_name" required>

                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="last_name" required>

                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>

                <label for="address">Address</label>
                <textarea id="address" name="address" required></textarea>

                <label for="num">Contact Number</label>
                <input type="tel" placeholder="Enter your Mobile Phone Number" id="num" name="phone" required maxlength="10"">

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="user">User Name</label>
                <input type="text" id="user" name="username" required>

                <label for="pw">Password</label>
                <input type="password" id="pw" name="password" required minlength="8"><br>

                <!-- Add validation messages -->
                <div id="validation-messages"></div>

                <!-- Submit and reset buttons -->
                <input type="reset">
                <input type="submit" value="Submit" name="btnSubmit" onclick="validateForm()">
            </fieldset>
        </form>

        <script>
            function validateForm() {
                var fname = document.getElementById("fname").value;
                var lname = document.getElementById("lname").value;
                var dob = document.getElementById("dob").value;
                var address = document.getElementById("address").value;
                var phone = document.getElementById("num").value;
                var email = document.getElementById("email").value;
                var username = document.getElementById("user").value;
                var password = document.getElementById("pw").value;

                var validationMessages = "";

                if (fname.trim() === "") {
                    validationMessages += "First Name is required.\n";
                }

                if (lname.trim() === "") {
                    validationMessages += "Last Name is required.\n";
                }

                if (dob.trim() === "") {
                    validationMessages += "Date of Birth is required.\n";
                }

                if (address.trim() === "") {
                    validationMessages += "Address is required.\n";
                }

                if (phone.trim() === "") {
                    validationMessages += "Contact Number is required.\n";
                }

                if (email.trim() === "") {
                    validationMessages += "Email is required.\n";
                }

                if (username.trim() === "") {
                    validationMessages += "User Name is required.\n";
                }

                if (password.trim() === "") {
                    validationMessages += "Password is required.\n";
                }

                // Display validation messages
                if (validationMessages !== "") {
                    alert(validationMessages);
                    return false; // Prevent form submission
                }
            }
        </script>







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