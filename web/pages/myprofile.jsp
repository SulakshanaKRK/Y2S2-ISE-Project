<%-- 
    Document   : myprofile
    Created on : Apr 3, 2024, 10:57:10 AM
    Author     : Sithumini
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Java_Classes.promotions"%>
<%@page import="Java_Classes.DBConncetion"%>
<%@page import="Java_Classes.customerRegistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>

    <!-- adding css  -->
    <link rel="stylesheet" href="./pages/css/style2.css">
    <link rel="stylesheet" href="./pages/css/popup.css">
    <link rel="stylesheet" href="./pages/css/logoutbtn.css">
    
    <!-- myprofile css  -->
    <link rel="stylesheet" href="./pages/css/myprofile.css">

    
    <!-- mediaQuery css  -->
        <link rel="stylesheet" href="./pages/css/MediaQuery.css">
        
        <script src="./pages/js/home.js"></script>

        <!-- fontawesome  -->
        <script src="https://kit.fontawesome.com/7a6c6b42a6.js" crossorigin="anonymous"></script>
        
        
        
        
       

   
</head>

<body>
    <div class="container22" id="blur">

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
        <h1>My Profile</h1>

        <!-- transparent Img -->
        <section class="transform-img">
            <img src="./pages/img/background180.svg" alt="">
        </section>
    </section>



   

    <section class="main">
       
        <div class="main1">
          <div class="card">
           
            <h3>User Details</h3>
            <a href="#" onclick="togglePopup1()">View details</a><br>
            <a href="#" onclick="togglePopup2()">Edit details</a>
          </div>
         
          <div class="card">
            <h3>Account Privacy</h3>
            <p>You can delete your account here!</p><br>
            <button onclick="togglePopup3()" style="background: black; border-color:black;">Delete Account</button>
          </div>
            
            
          <div class="card">
            <h3>Add Reviews</h3>
            <p>You can add your reviews here!</p><br>
            <button onclick="togglePopup4()" style="background: black; border-color:black;">Continue</button>
          </div>

          
        
        </div>
  
        <div class="main1">
            
            <div class="card">
              
                
                
                  <h3>Promotions and Discounts</h3>
                  <p>Check your promotions and discounts.</p>
                  <button onclick="togglePopup7()" style="background: black; border-color:black;">continue</button>
                
            </div>
        </div>
    </section>
        
        <br><<br>
        <div class="box44">
            <a href="/SalonSIlkyHair/pages/index.jsp">Logout</a>
        </div>
        <br>
            





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
    </div>

   
    <div id="popup">
        
        <%
            customerRegistration cus=(customerRegistration)session.getAttribute("cus-ob");
        %>
         
        <h2>My details</h2>
        <div>
            
            First Name: <%=cus.getFirst_name() %> <br>
            Last Name: <%=cus.getLast_name() %> <br>
            Date of Birth: <%=cus.getDob() %> <br>
            Address: <%=cus.getAddress() %> <br>
            Contact Number: <%=cus.getPhone() %> <br>
            Email: <%=cus.getEmail() %> <br>
            Username: <%=cus.getUsername() %> <br>
            
        </div>
        <button class="btnpopup" onclick="togglePopup1()" style="background: black; border-color:black;">Close</button>
        
    </div>
    <script>
        function togglePopup1() {
            var blur=document.getElementById('blur');
            blur.classList.toggle('active');
            var popup = document.getElementById('popup');
            popup.classList.toggle('active');
        }
    </script>
   

<div id="popup2">
   
    <div class="formcontent">
        <form action="updateMyprofileServlet" method="POST" >
        <fieldset style="background: white">   
            <label for = "user">User Name (Username cannot be change)</label>            
            <input type="text" id="user" name="username" value="<%=cus.getUsername() %>" readonly>

            <label for = "fname">First Name</label>
            <input type = "text" id = "fname" name = "first_name" value="<%=cus.getFirst_name() %>"> <br>

            <label for = "lname">Last Name</label>
            <input type = "text" id = "lname" name = "last_name" value="<%=cus.getLast_name() %>"> <br> 

            <label for = "dob">Date of Birth</label>
            <input type = "date" id = "dob" name = "dob" value="<%=cus.getDob() %>"> <br>

            <label for = "address">Address</label>
            <textarea id = "address" name="address"><%=cus.getAddress() %></textarea> <br>

            <label for = "num">Contact Number</label>
            <input type = "number" placeholder = "Enter your Mobile Phone Number" id = "num" name = "phone" value="<%=cus.getPhone() %>"> <br>

            <label for = "email">Email</label>
            <input type = "email" id = "email" name = "email" value="<%=cus.getEmail() %>"> <br>

           
            <label for = "pw">Password</label>
            <input type = "password" id = "pw" name = "password" value="<%=cus.getPassword() %>"><br>

            <input type="submit" value="Submit" name="btnSubmit">
         
        </fieldset>
    </form>       
    </div>
            <button class="btnpopup" onclick="togglePopup2()" style="background: black; border-color:black;">Back</button>
</div>
            
<script>
    function togglePopup2() {
        var blur=document.getElementById('blur');
        blur.classList.toggle('active');
        var popup2 = document.getElementById('popup2');
        popup2.classList.toggle('active');
    }
</script>

<div id="popup3">
    <h2>Account Deletion</h2><br>
    <p>We're sorry to see you go! <br>If you've made the decision to delete your account, we want to make the process as smooth as possible for you. <br>
        <br><span style="font-weight: bold;">Important Note:</span> Deleting your account is permanent and irreversible. You will lose access to all data associated with your account. This action cannot be undone.
    <br>To proceed with the deletion, please confirm your decision by clicking the button below.<br><br></p>
    <div class="formcontent2">
    <form action="deleteMyprofileServlet" method="POST">
        <label for = "user">User Name</label>
            <input type = "text" id = "user" name = "username"> <br><br>

            <label for = "pw">Password</label>
            <input type = "password" id = "pw" name = "password"><br>
        <button type="submit" class="btnpopup">Delete Account</button>
    </form>
    </div>
    
    <button class="btnpopup" onclick="togglePopup3()" style="background: black; border-color:black;">Back</button>
    
</div>
<script>
    function togglePopup3() {
        var blur=document.getElementById('blur');
        blur.classList.toggle('active');
        var popup3 = document.getElementById('popup3');
        popup3.classList.toggle('active');
    }
</script>


<div id="popup4">
    <h2>Add your Review</h2><br>
    <p>We'd love to hear about your experience with our service!<br>
        Your feedback helps us improve and serves as a guide for others. Please take a moment to share your thoughts.<br>
        We respect your privacy and assure you that your privacy data will not be saved or displayed publicly. <br>
        Thank you for being part of our community!<br><br></p>
    <div class="formcontent2">
    <form action="AddReviewsServlet" method="POST">
      
            <input type = "text" id = "review_des" name = "review_des"> <br><br>

            
        <button type="submit" class="btnpopup">Add Review</button>
    </form>
    </div>
    
    <button class="btnpopup" onclick="togglePopup4()" style="background: black; border-color:black;">Back</button>
    
</div>
<script>
    function togglePopup4() {
        var blur=document.getElementById('blur');
        blur.classList.toggle('active');
        var popup4 = document.getElementById('popup4');
        popup4.classList.toggle('active');
    }
</script>



<div id="popup7">
    <h2>Promotions & Discounts</h2>
    
    <div class="formcontent2">
    <form action="viewPromotionsServlet" method="POST" >
        
          <div>
            <label for="promo_code">Search your Promotion Code here</label>
            <input  type="text" id="promo_code" name="promo_code" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="submit" style="background-color: #333; 
    color: var(--global-color-1);
    border: none;
    padding: 5px 5px; 
    border-radius: 5px; 
    cursor: pointer; 
    transition: background-color 0.3s;"><i class="fas fa-search"></i></button>
    </form>
    </div>

    
    
    
    <button class="btnpopup" onclick="togglePopup7()" style="background: black; border-color:black;">Close</button>
</div>
<script>
    function togglePopup7() {
        var blur=document.getElementById('blur');
        blur.classList.toggle('active');
        var popup7 = document.getElementById('popup7');
        popup7.classList.toggle('active');
    }
</script>

 
     
</body>

</html>
