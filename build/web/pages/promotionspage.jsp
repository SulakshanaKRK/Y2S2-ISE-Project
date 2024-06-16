<%-- 
    Document   : promotionspage
    Created on : Apr 15, 2024, 5:41:41 PM
    Author     : Sithumini
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Java_Classes.promotions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Promotions&Discounts</title>

        <!-- adding css  -->
        <link rel="stylesheet" href="./pages/css/style2.css">
        <!-- registration css  -->
        <link rel="stylesheet" href="./pages/css/registration.css">
        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">
          <link rel="stylesheet" href="./pages/css/style2.css">
    <link rel="stylesheet" href="./pages/css/popup.css">
    <link rel="stylesheet" href="./pages/css/logoutbtn.css">
    <link rel="stylesheet" href="./pages/css/promotions.css">
        
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
                    <li><a href="./protfolio.html">portfolio</a></li>
                    <li><a href="./contact.html">Contact</a></li>
                    <li><a href="#" id="NavNum">+94 1122222984</a></li>
                </ul>
            </nav>
        </header>


        <section class="sectionFirst">

            <h1>Promotions & Discounts!</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./pages/img/background180.svg" alt="">
            </section>
        </section>




<br><br><br><br>


        <div class="tablecontent2">
        <main class="table" id="customers_table">
           
            <section class="table__body">
                <table>
                    <thead>
                       
                        <tr>
                            <th> Promotion Code </th>
                            <th> Promotion Name</th>
                            <th> Promotion Type </th>
                            <th> Description </th>
                            <th> Valid Period </th>
                            
                        </tr>
                         
                    </thead>
                    <tbody>
                         <% ArrayList<promotions> prArray = (ArrayList) request.getAttribute("prArray");
                for (promotions pr : prArray) { %>  
                        <tr>
                             <td><%= pr.getPromo_code() %></td>
                            <td><%= pr.getPromo_name() %></td>
                            <td><%= pr.getPromo_type() %></td>
                            <td><%= pr.getPromo_des() %></td>
                            <td><%= pr.getValid_period() %></td>
                            
                        </tr>
                        <% }%> 
                       
                    </tbody>
                </table>
            </section>
        </main>
        </div>

<br><br><br><br>





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

