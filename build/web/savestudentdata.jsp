
<%@page import="java.io.*,java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title>CMS |registration successful </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body>
<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
        <img src="images/cms.jpg"  align="middle" />
    </div>
    <div class="fl_right">
     <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="cmscarrer.jsp">Career in CMS</a></li>
        <li class="last" ><a href="help.jsp">Help</a></li>
      </ul>
      <form action="http://www.google.com/search" method="get" id="sitesearch">
        <fieldset>
          <strong>Search:</strong>
          <input type="text"   name="q" size="25" maxlength="255" value="search website..." />
          <input type="image" src="images/search.gif" value="Google Search" id="search" alt="Search" />
        </fieldset>
          
      </form>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div class="rnd">
    <!-- ###### -->
    <div id="topnav">
      <ul>
         <li ><a href="index.html">Home</a></li>
         <li><a href="AboutUs.jsp">About Us</a></li>
        <li><a href="Registration.jsp">User Registration</a></li>
        <li><a href="CompanyReg.jsp">Company Registration</a></li>
        <li><a href="Login.jsp">Log In</a></li>
        <li><a href="faq.jsp">FAQs</a></li>
        <li><a href="ContactUs.jsp">Contact Us</a></li>
      </ul>
    </div>
    <!-- ###### -->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div class="rnd">
    <div id="container" class="clear">
      <!-- ####################################################################################################### -->
      <div id="content">
         <h2>Registration successful!!!</h2>
         <a href="Login.jsp"><font color="#55ABDA">Go to Login Page</font></a>

          <% try
          {
           
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
           Statement st=con.createStatement(); 
           Statement st2=con.createStatement();
           Statement st3=con.createStatement();
           String status="s";
           st2.executeUpdate("insert into Login values('"+request.getParameter("username")+"','"+request.getParameter("password")+"','"+status+"')");
           st.executeUpdate("insert into Details values('"+request.getParameter("username")+"','"+request.getParameter("name")+"','"+request.getParameter("gender")+"','"+request.getParameter("dob")+"','"+request.getParameter("college")+"','"+request.getParameter("collegephone")+"','"+request.getParameter("collegeemail")+"','"+request.getParameter("branch")+"','"+request.getParameter("markDegree")+"','"+request.getParameter("degree")+"','"+request.getParameter("email")+"','"+request.getParameter("telephone")+"','"+request.getParameter("address")+"','"+request.getParameter("state")+"','"+request.getParameter("pin")+"','"+request.getParameter("sel_cat")+"')");
		   if(request.getParameter("sel_cat").equals("Experienced"))
		   {
           st3.executeUpdate("insert into Experienced values('"+request.getParameter("username")+"','"+request.getParameter("expyears")+"','"+request.getParameter("company")+"','"+request.getParameter("designation")+"','"+request.getParameter("salary")+"','"+request.getParameter("comAddress")+"')");
		   }
           st.close();
           st2.close();
           st3.close();
           }
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
%>

        </div>
      </div>
     </div>
  </div>

</body>
</html>