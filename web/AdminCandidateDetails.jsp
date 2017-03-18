<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS |admin:candidate details</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />


<style type="text/css">
#left_column ul
{
list-style-type:none;
margin:0;
padding:0;
}
#left_column a:link,a:visited
{
display:block;
font-weight:bold;
font-size:12px;
color:#FFFFFF;
background-color:#966C43;
width:150px;
text-align:left;
padding:6px;
text-decoration:none;
text-transform:uppercase;
}
#left_column a:hover,a:active
{
background-color:#7A991A;
}
</style>


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
         <li><a href="index.html">Home</a></li>
        <li><a href="AboutUs.jsp">About Us</a></li>
        <li><a href="Registration.jsp">User Registration</a></li>
        <li><a href="CompanyReg.jsp">Company Registration</a></li>
        <li class="active"><a href="Login.jsp">Log In</a></li>
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
      <div id="homepage" class="clear">
        <!-- ###### -->
        <div id="left_column">
          
  
         <ul>   
          <a href="AdminHomePage.jsp">Admin Home</a>
          <a href="AdminCandidateDetails.jsp">Candidate Details</a>
          <a href="AdminCompanyDetails.jsp">Company Details</a>
          <a href="ChangePassword.jsp">Account settings</a>
          <a href="index.html">LogOut</a>
           
         </ul>
        </div>
        
        <!-- ###### -->
        <div id="rightcolumn">
            <h2><strong>Candidate Details</strong></h2>
            <table border="0"  bgcolor="#F3E8DA" cellpadding="5" cellspacing="0">
         <tr bgcolor="#FFFFE0">
            <td>Username</td>
            <td>Name</td>
            <td>Address</td>
            <td>Phone</td>
            <td>Email_id</td>
            <td>Category</td>
            <td>Delete</td>
            <td>Resume</td>
         </tr>
        <%
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
      try
              {
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select Username,Name,Address,Telephone,Email_id,Category from Details");
	  String  uid="",name="",address="",phone="",email="",cat="";
        while(rs.next())
            {
			uid=rs.getString("Username");
			name=rs.getString("Name");
			address=rs.getString("Address");
			phone=rs.getString("Telephone");
			email=rs.getString("Email_id");
			cat=rs.getString("Category");




      %>
        <tr>
          <td><%=uid%></td>
          <td><%=name%></td>
          <td><%=address%></td>
          <td><%=phone%></td>
          <td><%=email%></td>
          <td><%=cat%></td>
          <td><a href="Delete.jsp?uid=<%=uid%>"><strong>Delete</strong></a></td>
		  <td><a href="Resume.jsp?uid=<%=uid%>"><strong>View</strong></a></td>
        </tr>
        <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
      </table>

      </div>
      <!-- ####################################################################################################### -->
    </div>
  </div>
</div>
 </div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">All Rights Reserved by cmsexams.com</p>
  </div>
</div>
</body>
</html>