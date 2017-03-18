<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | admin:view resume</title>
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
    
   
        <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
        try {
            String uid = request.getParameter("uid");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select Name,Gender,DateOfBirth,CollegeName,CollegePhone,CollegeEmail,Mark,Degree,Email_id,Telephone,Address,State,Pincode,Category from Details where Username='" + uid + "'");
            String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8 = "", s9 = "", s10 = "", s11 = "", s12 = "", s13 = "", s14 = "";
            while (rs.next()) {
                s1 = rs.getString("Name");
                s2 = rs.getString("Gender");
                s3 = rs.getString("DateOfBirth");
                s4 = rs.getString("CollegeName");
                s5 = rs.getString("CollegePhone");
                s6 = rs.getString("CollegeEmail");
                s7 = rs.getString("Degree");
                s8 = rs.getString("Mark");
                s9 = rs.getString("Email_id");
                s10 = rs.getString("Telephone");
                s11 = rs.getString("Address");
                s12 = rs.getString("State");
                s13 = rs.getString("Pincode");
                s14 = rs.getString("Category");


        %>
       
        <h2><strong>RESUME</strong></h2>
        <table width="600" border="0" cellpadding="6" cellspacing="0">
            <tr>
                <td width="300" height="37" bgcolor="#F3E8DA">Name</td>
              
              <td width="300" bgcolor="#F3E8DA"><%=s1%></td>
            </tr>
            <tr>
              <td bgcolor="#E2E0CF"> Gender</td>
              <td bgcolor="#E2E0CF"><%=s2%></td>
            </tr>
            <tr>
              
            <td bgcolor="#F3E8DA"> Date of Birth </td>
            <td bgcolor="#F3E8DA"> <%=s3%>       </td>
            
            </tr>
            
            <tr>
              <td bgcolor="#E2E0CF">College Name</td>
              <td bgcolor="#E2E0CF"><%=s4%></td>
            </tr>
           
            <tr>
               <td bgcolor="#F3E8DA">College Phone</td>
                <td bgcolor="#F3E8DA"><%=s5%></td>
            </tr>
            <tr>
              <td bgcolor="#E2E0CF">College Email</td>
              <td bgcolor="#E2E0CF"><%=s6%></td>
            </tr>
            <tr>
              <td bgcolor="#F3E8DA">Last Qualification</td>
              <td bgcolor="#F3E8DA"><%=s7%></td>
            </tr>
            <tr>
              <td bgcolor="#E2E0CF">Mark</td>
                <td bgcolor="#E2E0CF"><%=s8%></td>
            </tr>
            <tr>
              <td bgcolor="#F3E8DA">Email</td>
                <td bgcolor="#F3E8DA"><%=s9%></td>
            </tr>
            <tr>
              <td bgcolor="#E2E0CF">Telephone</td>
                <td bgcolor="#E2E0CF"><%=s10%></td>
            </tr>
            <tr>
              <td bgcolor="#F3E8DA">Address</td>
                <td bgcolor="#F3E8DA"><%=s11%></td>
            </tr>
            <tr>
              <td bgcolor="#E2E0CF">State</td>
              <td bgcolor="#E2E0CF"><%=s12%></td>
            </tr>
            <tr>
              <td bgcolor="#F3E8DA">Pincode </td>
                <td bgcolor="#F3E8DA"><%=s13%></td>
            </tr>
            <tr>
              <td bgcolor="#E2E0CF">Category</td>
                <td bgcolor="#E2E0CF"><%=s14%></td>
            </tr>
            <%
            }//while
        }//try
        catch (Exception e) {
            out.println(e);
        }
            %>
    </table>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>




