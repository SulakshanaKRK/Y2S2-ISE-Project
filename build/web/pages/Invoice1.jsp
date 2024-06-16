<%-- 
    Document   : Invoice1
    Created on : May 12, 2024, 11:28:17 PM
    Author     : Sithumini
--%>

<%@page import="Java_Classes.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </head>
    <body>
        <section>
    <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="card" style="width: 25rem;">
            <div class="card-body"></div>
            <div class="card-body">
                <% ArrayList<Order> ordArray = (ArrayList) request.getAttribute("ordArray");
                for (Order ord : ordArray) { %>  
                <h4 class="card-title text-center mb-3 h3">Invoice<br><br></h4>
                    <h5>
                        Customer Name: <%=ord.getCustomerName() %> <br>
            Product Name: <%=ord.getProductName() %> <br>
            Quantity: <%=ord.getQuantity() %> <br></h5>>
                
                <% }%>
               <a href="DownloadInvoiceServlet" class="btn btn-primary">Download Invoice</a>
            </div>
            <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between">
                    <div>
<!--                        <h5 class="card-title h6">Login again...</h5>-->
                        
                        
                    </div>
                    <div>
                        <a href="#" class="card-link text-center">Login >> </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>


    </body>
</html>