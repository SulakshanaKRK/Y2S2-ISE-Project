<%-- 
    Document   : about
    Created on : Apr 2, 2024, 6:41:07 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>

    <!-- adding css  -->
    <link rel="stylesheet" href="css/style.css">
    <!-- about css  -->
    <link rel="stylesheet" href="css/about.css">

    <!-- mediaQuery css  -->
    <link rel="stylesheet" href="css/MediaQuery.css">

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
        <h1>Who We Are</h1>

        <!-- transparent Img -->
        <section class="transform-img">
            <img src="./img/background180.svg" alt="">
        </section>
    </section>


    <!-- second section  -->
    <section class="AboutMeInDetail">
        <span class="img">
            <img src="./img/owner02.jpeg" alt="">
        </span>

        <div class="infoAboutMe">
            <h1>It's All About My Story</h1>
            <div class="p-text">I Have Been A Passionate Make Up Artists.</div>
            <p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia, fuga. Quos obcaecati modi
                cupiditate tempora provident officiis ratione! Cupiditate facere quis blanditiis eius dolorum
                accusantium neque, cum quam minima iste consectetur nobis assumenda,

                <br> <br>voluptatibus error recusandae
                soluta similique amet dolore odit aspernatur. Similique, aperiam numquam laborum sed consectetur
                praesentium quis ipsam, odio cum quibusdam non laudantium explicabo, est cumque? Nihil corrupti nesciunt
                impedit similique eligendi qui dolorem. Facere assumenda cumque labore doloribus nemo voluptatibus, non
                necessitatibus architecto quo, accusantium dolor?
            </p>

            <h2>Dilhani Katugampola - Owner</h2>

            <div class="iconLink">
                <i class="fa-solid fa-phone">
                    <a href="#">+94 740087952</a>
                </i>
                <i class="fa-solid fa-envelope">
                    <a href="#">dilhani@silkyhair.com</a>
                </i>
            </div>
        </div>
    </section>


    <!-- section three  -->
    <section class="aboutTeam-Info">
        <div class="teamText">
            <div class="t-team">Our Awesome Team</div>
            <div class="t-heading">We Have Solutions</div>
            <div class="t-lines">for your every problem that bother you!</div>
        </div>

        <div class="teamImgInfo">
            <div class="box">
                <div class="img">
                    <img src="./img/owner01.jpg" alt="">
                </div>
                <div class="t-name">Dr.Ashinsana Devindi</div>
                <div class="t-position">Doctor</div>
            </div>
            <div class="box">
                <div class="img">
                    <img src="./img/doctor.jpg" alt="">
                </div>
                <div class="t-name">Dr.Vibhooshi Devindi</div>
                <div class="t-position">Doctor</div>
            </div>
            <div class="box">
                <div class="img">
                    <img src="./img/artist3.jpg" alt="">
                </div>
                <div class="t-name">Beautician Team</div>
                <div class="t-position"></div>
            </div>
            <div class="box fourthBox">
                <div class="ak-disc">
                    Book Your Appointment Now And Get 25% Off
                </div>
                <div class="ak-sale">Awesome Monsoon Sale - 25% off on All Professional Make Up from Only $59</div>
                <div class="btn">
                    <a href="#">REGISTER NOW</a>
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




    <!-- js  -->
    <script src="./js/script.js"></script>
</body>

</html>
