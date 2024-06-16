<%-- 
    Document   : product
    Created on : Apr 3, 2024, 3:23:59 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Java_Classes.Product"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product</title>
        <!-- adding css  -->
        <link rel="stylesheet" href="./pages/css/style.css">
        <!-- about css  -->
        <link rel="stylesheet" href="./pages/css/product.css">

        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">

        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>

        <!-- link home.js -->
        <script src="./js/home.js"></script>

    </head>
    <body>
        <header>
            <a href="#" class="logo">Salon Silky Hair</a>
            <div class="menuToggle"></div>
            <nav>
                <ul>
                    <li><a href="./pages/index.jsp">Home</a></li>
                    <li><a href="./pages/about.jsp">About</a></li>
                    <li><a href="./pages/services.jsp">Services</a></li>
                    <li><a href="./pages/protfolio.jsp">protfolio</a></li>
                    <li><a href="./pages/contact.jsp">Contact</a></li>
                    <li><a href="/SalonSIlkyHair/ViewProducts2" id="NavNum">Shop Now</a></li>
                </ul>
            </nav>
        </header>

        <section class="sectionFirst">
            <h1>Hair Care</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./pages/img/background180.svg" alt="">
            </section>
        </section>


        <!--        second section
                <section class="searchbar">
                    <div class="input-group">
                        <input class="search-input" type="text" id="NameSearchInput" placeholder="Search by Brand" aria-label="Search by Brand" maxlength="10" aria-describedby="btnNavbarSearch" />
                        <button class="search-btn" id="btnProductSearch" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </section>-->








        <!--third section-->
        <section class="cards">
            <div class="card-container">

                <% ArrayList<Product> productArray = (ArrayList) request.getAttribute("productArray");
                    for (Product product : productArray) {%>
                <div class="card">
                    <img src="<%= product.getImage()%>" alt="<%= product.getImage()%>"  style="width:100%">
                    <div class="container">
                        <h4><b><%= product.getName()%></b></h4>
                        <p><%= product.getDescription()%></p>
                        <p>RS.<%= product.getPrice()%></p>
                       
                        
                        <br><br>
                    </div>
                        <a href="/SalonSIlkyHair/ViewProductServlet_Orders" class="btn">Buy Now</a>
                </div>
                        
                       
                <% }%>
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
        <script src="./js/script.js"></script>


    </body>
</html>