
<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>

    <body background="wpa552ad7e[1].png">
         <% try
          {
         
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
          
            Statement st=con.createStatement();
          Statement st2=con.createStatement();
          
         // String stat="c";
         // st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into JobDetails values('"+request.getParameter("jobid")+"','"+request.getParameter("post")+"','"+request.getParameter("criteria")+"','"+request.getParameter("vacancies")+"','"+request.getParameter("salary")+"','"+request.getParameter("lastdate")+"')");
          st2.executeUpdate("insert into Exam values('"+request.getParameter("jobid")+"','"+request.getParameter("post")+"')");
          
           st.close();
           st2.close();
           
             }
       
        
           catch(Exception e)
                   {
                   }
        
           %>
            <font color="red" size="5"><br>
               <%out.println("Data submitted successfully!!!");%>
      
             <p>&nbsp;</p>
        </font>
    <p><font color="red"><a href="CompanyHomePage.jsp" >Go to home</a></font> </p>
</body>
</html>
