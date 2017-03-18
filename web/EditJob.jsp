<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company home</title>
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
                <% try {

                String jid =request.getParameter("jid");
                String jpost =request.getParameter("post");
                String jcriteria =request.getParameter("criteria");
                String jvac =request.getParameter("vacancies");
                String jsal =request.getParameter("salary");
                String jdate =request.getParameter("lastdate");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                Statement st = con.createStatement();  
                ResultSet rs = st.executeQuery("select * from JobDetails where JobId='" + jid + "'");
                while (rs.next())
                    {  
                    jid=rs.getString("JobId");
                    jpost=rs.getString("Post");
                    jcriteria=rs.getString("Criteria");
                    jvac=rs.getString("NoOfVacancies");
                    jsal=rs.getString("Salary");
                    jdate=rs.getString("LastDate");
      
                    %>
               <h2><strong>Job Details</strong></h2>
                <form method="post" action="savejobedit.jsp">
                  <table width="550px" border="0" cellpadding="6" cellspacing="0">          
  
  <tr  bgcolor="#FEF7E9" width="100%">
    <td width="50%">Job ID</td>
    <td width="50%"><input name="jobid" type="text" id="jobid" size="35" maxlength="25" value="<%=jid%>" /></td>
  </tr>
  <tr bgcolor="#F3E8DA">
    <td>Post</td>
    <td><input name="post" type="text" id="post"  value="<%=jpost%>" size="35" /></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td>Criteria</td>
    <td><input name="criteria" type="text" id="criteria" value="<%=jcriteria%>" size="35" maxlength="25" /></td>
  </tr>
  <tr bgcolor="#F3E8DA">
    <td>Vacancies</td>
    <td><input name="vacancies" type="text" id="vacancies" size="35" maxlength="25" value="<%=jvac%>" /></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td>Salary/Annum</td>
    <td><input name="salary" type="text" id="salary" value="<%=jsal%>" size="35" maxlength="25" /></td>
  </tr>
  <tr bgcolor="#F3E8DA">
    <td>LastDate</td>
    <td><input name="lastdate" type="text" id="lastdate" value="<%=jdate%>" size="35" maxlength="25" /></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td align="right">
      <input type="submit" name="button" id="button" value="Edit Details" />
    </td>
      <td></td>
    </tr>
  
</table>
</form>	
<% }//while
     
}
      catch(Exception e)
      {
         out.println(e); 
      }
%>

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




