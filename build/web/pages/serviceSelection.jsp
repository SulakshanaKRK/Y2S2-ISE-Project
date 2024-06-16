<%-- 
    Document   : serviceSelection
    Created on : Apr 2, 2024, 7:00:19 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Selection</title>

    <!-- adding css  -->
    <link rel="stylesheet" href="./css/serviceSelection.css">
       <!-- adding css  -->
       <link rel="stylesheet" href="./css/style.css">

    <!-- mediaQuery css  -->
    <link rel="stylesheet" href="./css/MediaQuery.css">

    <!-- fontawesome  -->
    <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>

    <!-- link home.js -->
    <script src="js/home.js"></script>

</head>

<body>

    <header>
        <a href="#" class="logo">Salon Silky Hair</a>
        <div class="menuToggle"></div>
        <nav>
            <ul>
                <li><a href="./index.jsp">Home</a></li>
                <li><a href="./about.jsp">About</a></li>
                <li><a href="./serviceSelection.jsp">Services</a></li>
                <li><a href="./protfolio.jsp">protfolio</a></li>
                <li><a href="./contact.jsp">Contact</a></li>
                <li><a href="#" id="NavNum">+94 1122222984</a></li>
            </ul>
        </nav>
    </header>


    <section class="sectionFirst">
        <h1>Our Services</h1>

        <!-- transparent Img -->
        <section class="transform-img">
            <img src="./img/background180.svg" alt="">
        </section>
    </section>


    <!-- section second  -->
    <section class="aboutServices">
        <div class="ser-litText">Choose your preferred service</div>
        <p class="ser-text">Indulge in Luxurious Care: Explore Our Medicare and Beauty Services. You able to choose whatever service you want! </p>

        <div class="ser-box">
            
            <a href="./services.jsp" class="box">
                <div class="img">
                    <img src="./img/beauty.jpg" alt="">
                </div>
                <div class="boxinfo">
                    <div class="ser-name">Beauty Care Services</div>
                    <p class="ser-discription">Transform yourself with our friendly exquisite beauty care services.</p>
                </div>
            </a>
            
            
            <a href="DoctorDetails.jsp" class="box">
                <div class="img">
                    <img src="./img/medical.jpg" alt="">
                </div>
                <div class="boxinfo">
                    <div class="ser-name">Medical Services</div>
                    <p class="ser-discription">Elevate your well-being with our comprehensive medical services.</p>
                </div>
            </a>
                          
        
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
                <li><a href="./index.jsp">Home</a></li>
                <li><a href="./about.jsp">About</a></li>
                <li><a href="./serviceSelection.jsp">Services</a></li>
                <li><a href="./protfolio.jsp">protfolio</a></li>
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

    <script src="./js/script.js"></script>

</body>

</html>