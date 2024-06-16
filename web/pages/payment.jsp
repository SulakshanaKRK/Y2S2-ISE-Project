<%-- 
    Document   : payment
    Created on : Apr 3, 2024, 3:26:43 PM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Payment</title>
        <!-- adding css  -->
        <link rel="stylesheet" href="./pages/css/style.css">
        <!-- about css  -->
        <link rel="stylesheet" href="./pages/css/payment.css">

        <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">

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
                    <li><a href="./protfolio.html">protfolio</a></li>
                    <li><a href="./contact.html">Contact</a></li>
                    <li><a href="#" id="NavNum">+94 1122222984</a></li>
                </ul>
            </nav>
        </header>

        <section class="sectionFirst">
            <h1>Payment</h1>

            <!-- transparent Img -->
            <section class="transform-img">
                <img src="./img/background180.svg" alt="">
            </section>
        </section>

        <section class="payment">
            <div class="container">
                <form action="AddPaymentServlet" method="POST" onsubmit="return validateForm()">
                    <div class="row">


                        <div class="col">
                            <h3 class="title">Payment</h3>

                            <div class="inputBox">
                                <span>Card Type:</span>
                                <select id="cardType">
                                    <option value="visa">Visa</option>
                                    <option value="master">Master</option>
                                    <option value="webcard">Web Card</option>
                                </select>
                            </div>

                            <div class="inputBox">
                                <span>Name on Card:</span>
                                <input type="text" id="cardholder_name" name="cardholder_name" placeholder="Card Holder Name">
                            </div>
                            <div class="inputBox">
                                <span>Card Number:</span>
                                <input type="text" id="card_no" name="card_no" placeholder="xxxx-xxxx-xxxx-xxxx" required maxlength="16">
                            </div>

                            <div class="flex">
                                <div class="inputBox">
                                    <span>Exp Year/Month:</span>
                                    <input type="month" id="date" name="date" placeholder="">
                                </div>
                                <div class="inputBox">
                                    <span>CVV:</span>
                                    <input type="text" id="CVV" name="CVV" placeholder="XXX" required maxlength="3">
                                </div>
                                <div class="inputBox">
                                    <span>Zip Code:</span>
                                    <input type="text" id="ZIP" name="ZIP" placeholder="00000" required maxlength="5">
                                </div>
                            </div>
                        </div>

                    </div>

                    <input type="submit" value="Confirm Payment" class="submit-btn">
                </form>
            </div>
        </section>

        <script>
            // Function to validate the form before submission
            function validateForm() {
                // Get form inputs
                var cardNo = document.getElementById('card_no').value;
                var cvv = document.getElementById('CVV').value;
                var zip = document.getElementById('ZIP').value;

                // Validate card number
                if (cardNo.length !== 16 || isNaN(cardNo)) {
                    alert("Please enter a valid 16-digit card number.");
                    return false;
                }

                // Validate CVV
                if (cvv.length !== 3 || isNaN(cvv)) {
                    alert("Please enter a valid 3-digit CVV.");
                    return false;
                }

                // Validate ZIP code
                if (zip.length !== 5 || isNaN(zip)) {
                    alert("Please enter a valid 5-digit ZIP code.");
                    return false;
                }

                return true; // Form is valid
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









    </body>
</html>
