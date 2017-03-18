<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
    <body>
        <table>
    
<% try      
      {

      String uid=request.getParameter("uid");
      out.println(uid);
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
           Statement st=con.createStatement();
           Statement st2=con.createStatement(); 
           Statement st3=con.createStatement();
          
       st.executeUpdate("Delete from Details where Username='"+uid+"'");
       st2.executeUpdate("Delete from Login where Username='"+uid+"'");
       st3.executeUpdate("Delete from Experienced where Username='"+uid+"'");
       response.sendRedirect("AdminCandidateDetails.jsp");
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
