<%-- 
    Document   : cart
    Created on : Apr 3, 2024, 3:20:11 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
     <!-- adding css  -->
     <link rel="stylesheet" href="./css/style.css">
     <!-- about css  -->
     <link rel="stylesheet" href="./css/cart.css">
 
     <!-- mediaQuery css  -->
     <link rel="stylesheet" href="./css/MediaQuery.css">
 
     <!-- fontawesome  -->
     <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>
 
      <!-- link home.js -->
      <script src="./pages/js/home.js"></script>
   
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
                <li><a href="./protfolio.jsp">protfolio</a></li>
                <li><a href="./contact.jsp">Contact</a></li>
                <li><a href="#" id="NavNum">+94 1122222984</a></li>
            </ul>
        </nav>
    </header>

    <section class="sectionFirst">
        <h1>Shopping Cart</h1>

        <!-- transparent Img -->
        <section class="transform-img">
            <img src="./img/background180.svg" alt="">
        </section>
    </section>

    <!--cart items details-->

    <div class="small-container cart-page">

        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src=".\img\TRESemme_Keratin_Smooth_Shampoo___Conditioner_400ml_Sri_Lanka.webp" alt="">
                        <div>
                            <p>TRESemme Shampoo & Conditioner</p>
                            <small>Price: Rs1200.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>


                </td>
                <td><input type="number" value="1"></td>
                <td>Rs.1200.00</td>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src=".\img\Garnier.webp" alt="">
                        <div>
                            <p>Garnier hair food papaya</p>
                            <small>Price: Rs1575.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>


                </td>
                <td><input type="number" value="1"></td>
                <td>Rs.1575.00</td>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src=".\img\Dove.webp" alt="">
                        <div>
                            <p>Dove Milk Gel Conditioner</p>
                            <small>Price: Rs1350.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                    </div>


                </td>
                <td><input type="number" value="1"></td>
                <td>Rs.1350.00</td>
            </tr>
        </table>

        <div class="total-price">
            <table>
                <tr>
                    <td>Subtotal</td>
                    <td>Rs.4125.00</td>
                </tr>
                <tr>
                    <td>Delivery fee</td>
                    <td>Rs.350.00</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>Rs.4475.00</td>
                </tr>
            </table>
            
        </div>
        <div class="btnDiv text">
            <button class="Cart-btn btn">Checkout</button>
        </div>
        

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
    <script src="./pages/js/script.js"></script>
    
    
</body>
</html>