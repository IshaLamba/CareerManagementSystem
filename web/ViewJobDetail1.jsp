<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS |candidate:job</title>
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
        
          <a href="CandidateHomePage.jsp">Candidate Profile</a>
          <a href="CanEditProfile.jsp">Profile settings</a>
           <a href="CanChangePassword.jsp">account settings</a>
          <a href="ViewJobDetail1.jsp">Jobs</a>
          <a href="ExamConditions.jsp">Test</a>
          <a href="canexamresult.jsp">Result</a>
           <a href="Resume11.jsp">Resume</a> 
          <a href="index.html">LogOut</a>
          
         </ul>
        </div>
        
        <!-- ###### -->
        <div id="rightcolumn">
          <h2>Apply for job</h2>

                <table width="600" cellpadding="6" height="87" border="0" align="left" bordercolor="#996666" bgcolor="#999933">
          
          <tr>
            <td width="72" height="23" bordercolor="#516415" bgcolor="#CAA899">
                Job ID </td>
            <td width="131" bordercolor="#516415" bgcolor="#CAA899">Post</td>
            <td width="112" bordercolor="#516415" bgcolor="#CAA899">Criteria</td>
            <td width="90" bordercolor="#516415" bgcolor="#CAA899">Vacancies</td>
            <td width="101" bordercolor="#516415" bgcolor="#CAA899">Salary/Annum</td>
            <td width="103" bordercolor="#516415" bgcolor="#CAA899">LastDate</td>
            <td width="103" bordercolor="#516415" bgcolor="#CAA899">ApplyJob</td>
          </tr>
           <% 
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
      try
              {
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from JobDetails");
            String  jid="",jpost="",jcriteria="",jvac="",jsal="",jdate="";
        while(rs.next())
            {
			jid=rs.getString("JobId");
                        jpost=rs.getString("Post");
                        jcriteria=rs.getString("Criteria");
                        jvac=rs.getString("NoOfVacancies");
                        jsal=rs.getString("Salary");
                        jdate=rs.getString("LastDate");

      %>
      <tr>
        <td height="23" bordercolor="#516415" bgcolor="#CAA899" >
          <%=jid%>
        </td>
        <td bordercolor="#516415" bgcolor="#CAA899" >
            <%=jpost%>
        </td>
        <td bordercolor="#516415" bgcolor="#CAA899" >
          <%=jcriteria%>
        </td>
        <td bordercolor="#516415" bgcolor="#CAA899">
          <%=jvac%>
        </td>
        <td bordercolor="#516415" bgcolor="#CAA899">
          <%=jsal%>
        </td>
        <td bordercolor="#516415" bgcolor="#CAA899">
          <%=jdate%>
        </td>
        <td bordercolor="#516415" bgcolor="#CAA899"><a href="ApplyJob.jsp?jid=<%=jid%>"><strong>Apply</strong></a></td>
       
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
           
          
        <!-- ###### -->
        </div>
      </div>
      <!-- ####################################################################################################### -->
     
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">All Rights Reserved by cmsexams.com</p>
  </div>
</div>
</body>
</html>

            
            
            