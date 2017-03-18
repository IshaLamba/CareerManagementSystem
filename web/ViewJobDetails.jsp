<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company:view job details</title>
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
        <a href="CompanyHomePage.jsp">Company Profile</a>  
        <a href="EditComProfile.jsp">Profile settings</a>
        <a href="ComChangePassword.jsp">Account settings</a>
        <a href="AddJobDetails.jsp">Add job details</a>
        <a href="ViewJobDetails.jsp">View job details</a> 
        <a href="ExamCreation.jsp">Exam Creation</a>
        <a href="ExamView.jsp">Exam View</a>
        <a href="ExamView.jsp">Exam Results</a>
        <a href="AddQuestions.jsp" >Add questions</a>
        <a href="ViewQues.jsp">View questions</a>
        <a href="Login.jsp">LogOut</a>
        
          
         </ul>
        </div>
        
      <!-- ####################################################################################################### -->

        <div id="rightcolumn">
            <h2><strong>Job Details </strong></h2>
        <table width="600" border="0" cellspacing="0" cellpadding="6">

          <tr bgcolor="#FFFFE0">
            <td>Job ID</td>
            <td>Post</td>
            <td>Criteria</td>
            <td>Vacancies</td>
            <td>Salary/Annum</td>
            <td>LastDate</td>
            <td>Edit</td>
            <td>Delete</td>
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
        <td bgcolor="#CAA899" >
          <%=jid%>
        </td>
        <td bgcolor="#CAA899" >
          <%=jpost%>
        </td>
        <td bgcolor="#CAA899" >
          <%=jcriteria%>
        </td>
        <td bgcolor="#CAA899">
          <%=jvac%>
        </td>
        <td bgcolor="#CAA899">
          <%=jsal%>
        </td>
        <td bgcolor="#CAA899">
          <%=jdate%>
        </td>
        <td bgcolor="#CAA899"><a href="EditJob.jsp?jid=<%=jid%>"><strong>Edit</strong></a></td>
        <td bgcolor="#CAA899"><a href="DeleteJob.jsp?jid=<%=jid%>"><strong>Delete</strong></a></td>
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

      <!-- ####################################################################################################### -->
    </div>
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