<%-- 
    Document   : promoErrorMsg
    Created on : May 11, 2024, 10:15:16 PM
    Author     : Sithumini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Message</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </head>
    <body>
        <section>
    <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="card" style="width: 25rem;">
            <div class="card-body"></div>
            <div class="card-body">
                <h5 class="card-title text-center mb-3 h3">Sorry, The promotion code you entered is incorrect or has expired. <br>Please double-check the code and try again!</h5>
                <img src="./pages/img/promoE.jpg" class="card-img-top" alt="...">
            </div>
            <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between">
                    <div>
                        <h5 class="card-title h6">Check again...</h5>
                        
                        
                    </div>
                    <div>
                        <a href="/SalonSIlkyHair/deleteMyprofileServlet" class="card-link text-center">Go to My Profile >> </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>


    </body>
</html>

