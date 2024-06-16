<%-- 
    Document   : servlet
    Created on : Apr 2, 2024, 6:58:21 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- I have already made navigation bar so please watch part 1 of this series I am just going to copy all the code  -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services</title>

    <!-- adding css  -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- about css  -->
    <link rel="stylesheet" href="./css/services.css">

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
        <h1>Beauty Care Services</h1>

        <!-- transparent Img -->
        <section class="transform-img">
            <img src="./img/background180.svg" alt="">
        </section>
    </section>


    <!-- section second  -->
    <section class="aboutServices">
        <div class="ser-litText">Choose From Collection</div>
        <p class="ser-text">Choose from our exquisite collection of nail art designs, meticulously 
            crafted to complement your unique style and personality. Elevate your look with our diverse range of 
            patterns, colors, and techniques for the perfect finishing touch to your manicure.</p>

        <div class="ser-box">
            <a href="/SalonSIlkyHair/nail-services" class="box">
                <div class="img">
                    <img src="./img/nailart_1.jpg" alt="">
                </div>
                <div class="boxinfo">
                    <div class="ser-name">Nail Designs</div>
                    <p class="ser-discription">Different nail art designs ranging from simple patterns to intricate motifs</p>
                </div>
            </a>
            

            <a href="#" class="box">
                <div class="img">
                    <img src="./img/haircut_2.jpg" alt="">
                </div>
                <div class="boxinfo">
                    <div class="ser-name">Hair Styling</div>
                    <p class="ser-discription">This is a short description elaborationg the service you have mentioned above.</p>
                </div>
            </a>
            


            <div class="box">
                <div class="img">
                    <img src="./img/massage_3.jpg" alt="">
                </div>
                <div class="boxinfo">

                    <div class="ser-name">Full Body Massage</div>
                    <p class="ser-discription">This is a short description elaborationg the service you have mentioned
                        above.</p>
                </div>

            </div>


            <div class="box">
                <div class="img">
                    <img src="./img/makeup2.jpg" alt="">
                </div>
                <div class="boxinfo">

                    <div class="ser-name">Make Up</div>
                    <p class="ser-discription">This is a short description elaborationg the service you have mentioned
                        above.</p>
                </div>

            </div>


            <div class="box">
                <div class="img">
                    <img src="./img/bride.jpeg" alt="">
                </div>

                <div class="boxinfo">

                    <div class="ser-name">Bridal Dressings</div>
                    <p class="ser-discription">This is a short description elaborationg the service you have mentioned
                        above.</p>
                </div>

            </div>


            <div class="box">
                <div class="img">
                    <img src="./img/botox_6.jpg" alt="">
                </div>
                <div class="boxinfo">

                    <div class="ser-name">Skin Cares</div>
                    <p class="ser-discription">This is a short description elaborationg the service you have mentioned
                        above.</p>
                </div>

            </div>
        </div>
    </section>

    <!-- discount section  -->
    <section class="DiscountSection">

        <div class="img">
            <img src="./img/25off.png" alt="">
        </div>

        <div class="textinfo">
            <h2>Book Your Appointment Now And Get 25% Off</h2>
            <p>Awesome Monsoon Sale - 25% Off on All Professional Make Up only 5$</p>
        </div>

        <a href="#">REGISTER NOW</a>
    </section>

    <!-- ----slider----- -->
    <section class="imgslidertext">
        <div class="imgslider">
            <img src="./img/bestbrindalOffer1.jpg" alt="" class="slide">
            <img src="./img/bestbrindalOffer2.jpg" alt="" class="slide">
            <img src="./img/bestbrindalOffer3.jpg" alt="" class="slide">

            <i class="fa-solid fa-chevron-left prev" onclick="goPrev()"></i>
            <i class="fa-solid fa-chevron-right next" onclick="goNext()"></i>
        </div>

        <div class="slideText">
            <div class="st-heading">The Best Bridal Makeup Offer</div>
            <p class="lit-text">You Can Highligh a special service here. This can then be bifurcated into smaller steps
                or parts as done below. Describe it here.</p>

            <div class="lit-service">
                <div class="textinfo">
                    <div class="ti-head" >Pre-Wedding Photo shoot</div>
                    <p class="des">This is a shor description elaborating the service you have mentioned above.</p>
                </div>
                <div class="textinfo">
                    <div class="ti-head" >The Engagement Day</div>
                    <p class="des">This is a shor description elaborating the service you have mentioned above.</p>
                </div>
                <div class="textinfo">
                    <div class="ti-head" >The Grand Wedding Day</div>
                    <p class="des">This is a shor description elaborating the service you have mentioned above.</p>
                </div>
            </div>
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