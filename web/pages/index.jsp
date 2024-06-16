<%-- 
    Document   : index
    Created on : Apr 2, 2024, 6:53:03 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Salon Silky Hair</title>

        <!-- adding css  -->
        <link rel="stylesheet" href="./css/style.css">

        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./css/MediaQuery.css">

        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>

        <!-- link home.js -->
        <script src="js/home.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


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
                    <li><a href="/SalonSIlkyHair/ViewProducts2" id="NavNum">Shop Now</a></li>
                </ul>
            </nav>
        </header>


        <section class="sectionFirst">
            <div class="frontPage">
                <div class="address">76/B, City Road, Kurunagala</div>
                <h2 class="heading">Salon Silky Hair</h2>
                <p class="para1"><span>Welcome!</span> <br>Experience unparalleled luxury and 
                    expertise. We're the pinnacle of professionalism <br>in the beauty industry</p>


                <div class="row">
                    <div class="col-md-6">
                        <a href="/SalonSIlkyHair/loginServlet" class="btn btn-danger btn-lg btn-block" role="button">Login</a>
                    </div>
                    <div class="col-md-6">
                        <a href="/SalonSIlkyHair/registerCustomerServlet" class="btn btn-danger btn-lg btn-block" role="button">SignUp</a>
                    </div>
                </div>



                <!-- transparent Img -->
                <section class="transform-img">
                    <img src="./img/background180.svg" alt="">
                    <!-- <img src="./img/young-woman-with-beautiful-hair.jpg" alt="" > -->
                </section>
        </section>


        <!-- section second  -->
        <section class="sectionSecond">
            <div class="fourIMG">
                <img src="./img/home-model1.jpg" alt="">
                <img src="./img/home-model2.jpg" alt="">
                <img src="./img/home-model3.jpg" alt="">
                <img src="./img/home-model4.jpg" alt="">
            </div>


            <div class="textInfo">
                <div class="greet">Welcome To</div>
                <h2 class="title">My Beauty Studio</h2>
                <p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla aut odio vitae. Voluptatibus
                    deleniti at ullam error, voluptates pariatur quibusdam! Corporis corrupti in molestias consequuntur
                    dolorum eligendi vel animi suscipit!</p>

                <a href="protfolio.jsp" class="btn">Know More</a>
            </div>
        </section>

        <!-- section three  -->
        <section class="sectionThree">
            <h2>Services For Every Occasion</h2>
            <p>List down special Services you offer an occasions like weddings, etc</p>

            <div class="servicesBox">
                <div class="box">
                    <h2>Weddings Makeup</h2>
                    <p>A little detail about the services you've mentioned aboved. Tell them what you do</p>
                </div>
                <div class="box">
                    <h2>Party Makeup</h2>
                    <p>A little detail about the services you've mentioned aboved. Tell them what you do</p>
                </div>
                <div class="box">
                    <h2>Fashion Makeup</h2>
                    <p>A little detail about the services you've mentioned aboved. Tell them what you do</p>
                </div>
                <div class="box">
                    <h2>Photo Makeup</h2>
                    <p>A little detail about the services you've mentioned aboved. Tell them what you do</p>
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

            <a href="/SalonSIlkyHair/registerCustomerServlet">REGISTER NOW</a>
        </section>

        <!-- transformBox -->
        <div class="transformBox">
            <h2>Priced Beauty Solutions</h2>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolore id earum, voluptas consectetur explicabo
                tempore aut placeat blanditiis dolores dolorum.</p>
        </div>

        <!-- section five  -->
        <section class="sectionFive">
            <div class="BeautySolutions">
                <h2>Hair Cuts</h2>
                <span></span>
                <ul>
                    <li>Women's Haircut <span>$95</span></li>
                    <li>Teen's Haircut <span>$40+</span></li>
                    <li>Stylish Haircut <span>$55</span></li>
                    <li>Children's Haircut <span>$40+</span></li>
                </ul>
            </div>
            <div class="BeautySolutions">
                <h2>Make Up</h2>
                <span></span>
                <ul>
                    <li>Women's Haircut <span>$95</span></li>
                    <li>Teen's Haircut <span>$40+</span></li>
                    <li>Stylish Haircut <span>$55</span></li>
                    <li>Children's Haircut <span>$40+</span></li>
                </ul>
            </div>
            <div class="BeautySolutions">
                <h2>Hair Color</h2>
                <span></span>
                <ul>
                    <li>Women's Haircut <span>$95</span></li>
                    <li>Teen's Haircut <span>$40+</span></li>
                    <li>Stylish Haircut <span>$55</span></li>
                    <li>Children's Haircut <span>$40+</span></li>
                </ul>
            </div>
            <div class="BeautySolutions">
                <h2>Skin Care</h2>
                <span></span>
                <ul>
                    <li>Women's Haircut <span>$95</span></li>
                    <li>Teen's Haircut <span>$40+</span></li>
                    <li>Stylish Haircut <span>$55</span></li>
                    <li>Children's Haircut <span>$40+</span></li>
                </ul>
            </div>
        </section>

        <!-- section six  -->
        <section class="sectionSix">
            <h2>Review Us</h2>
            <div class="icon">
                <a href="#" class="fa-brands fa-facebook-f"></a>
                <a href="#" class="fa-brands fa-google"></a>
                <a href="#" class="fa-brands fa-instagram"></a>
            </div>

            <div class="imgicon">
                <img src="./img/test150x150.jpg" alt="">
                <i class="fa-solid fa-quote-right"></i>
            </div>

            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. A rem soluta cupiditate, asperiores consectetur
                voluptate, dolor deleniti assumenda laboriosam quae culpa natus iure eum quidem cum ducimus fugit tempora
                sint. <small>Dilhani Katugampola</small></p>
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
                    <li><a href="./services.jsp">Services</a></li>
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