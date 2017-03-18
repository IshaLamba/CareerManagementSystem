<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
        <img src="images/oops.jpg"  style="float:left" />
        <h2>Oops Problem in Login!!</h2>
    
        
   <%
 
 out.println("Either username or password is incorrect!! ");
 
 %>
    
 <h3> <a href="Login.jsp"/> Login again</h3>
    </body>
</html>
