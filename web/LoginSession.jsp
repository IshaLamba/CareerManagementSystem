<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <body>
         <% try
             {
                HttpSession s2=request.getSession();
                HttpSession s3=request.getSession();
                s2.setAttribute("username", request.getParameter("username")); 
                s3.setAttribute("password", request.getParameter("password")); 
                response.sendRedirect("Valid.jsp");  
             }  
           catch(Exception e) 
                   {
                     out.println(e);
                   }       
         %>
    </body>
</html>
