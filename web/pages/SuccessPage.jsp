<%-- 
    Document   : SuccessPage
    Created on : Apr 2, 2024, 11:19:44 AM
    Author     : krkav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
    </head>
    <body>
        <h1>Action Successful!</h1>
        <form action="<%=request.getAttribute("redirect")%>" method="get">
        
        <div>            
            <button type="submit">Go to Dashboard</button>
        </div>
    </form>
</body>
</html>
