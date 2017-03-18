
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title>CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
    <body >
         <% try
          {
         
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
           Statement st=con.createStatement();
       //   Statement st2=con.createStatement();
          
         // String stat="c";
         // st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into Question values('"+request.getParameter("jobid")+"','"+request.getParameter("examid")+"','"+request.getParameter("Qno")+"','"+request.getParameter("question")+"','"+request.getParameter("option1")+"','"+request.getParameter("option2")+"','"+request.getParameter("option3")+"','"+request.getParameter("option4")+"','"+request.getParameter("answer")+"')");
          
          
           st.close();
          // st2.close();
           
             }
       
        
           catch(Exception e)
                   {
                   }
        
           %>
            <font color="red" size="5"><br></br>
               <%out.println("Questions are added successfully!!!");%>
               <br/>
             
          </font>
           <p>&nbsp;</p>
        <p><a href="AddQuestions.jsp"><strong>Go Back</strong></a> </p>
    </body>
</html>
