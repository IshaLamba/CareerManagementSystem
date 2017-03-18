<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company add job</title>
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
       
<script language="javascript">
            function check()
            {
				var a= document.form1.jobid.value;
				var b= document.form1.vacancies.value;
				var c= document.form1.salary.value;
				
                if(document.form1.jobid.value=="")
                {
                    alert("Enter Job Id");
                    document.form1.jobid.focus();
                    return false;
                }
				else if(!parseInt(a))
            	{
                alert("Enter integer");
                document.form1.jobid.focus();
                return false;
            	}
				
                if(document.form1.post.value=="")
                {
                    alert("Enter Post");
                    document.form1.post.focus();
                    return false;
                }
                if(document.form1.criteria.value=="")
                {
                    alert("Enter Criteria");
                    document.form1.criteria.focus();
                    return false;
                }
                if(document.form1.vacancies.value=="")
                {
                    alert("Enter no: of Vacancies available");
                    document.form1.vacancies.focus();
                    return false;
                }
				else if(!parseInt(b))
            	{
                alert("Enter integer");
                document.form1.vacancies.focus();
                return false;
            	}
                if(document.form1.salary.value=="")
                {
                    alert("Enter Salary");
                    document.form1.salary.focus();
                    return false;
                }
				else if(!parseInt(c))
            	{
                alert("Enter integer");
                document.form1.salary.focus();
                return false;
            	}
                if(document.form1.lastdate.value=="")
                {
                    alert("Enter Last Date");
                    document.form1.lastdate.focus();
                    return false;
                }

                return true;
            }

        </script>
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

            <h2><strong>Fill up the Job Description </strong></h2>

                    <form name="form1" method="post" action="savejobdetails.jsp">
                        <table width="600" border="0" cellspacing="0" cellpadding="6">
                           
                            <tr bgcolor="#FEF7E9">
                                <td>JobID</td>
                                <td> <input name="jobid" id="jobid" type="text" size="30"> </td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Name of Post</td>
                                <td><input name="post" name="post" type="text" size="30"></td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td>Criteria</td>
                                <td><input name="criteria" name="criteria" type="text" size="30"></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>No: of Vacancies</td>
                                <td><input name="vacancies" name="vacancies" type="text" size="30"></td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td>Salary/Annum</td>
                                <td><input name="salary" name="salary" type="text" size="30"></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Last Date &nbsp;&nbsp;(dd/mm/yy) </td>
                                <td><input name="lastdate" name="lastdate" type="text" size="30"></td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td></td>
                                <td>
                                        <input type="submit" name="Submit" value="Submit" onClick="return check()">
                                </td>
                            </tr>
                        </table>
                    </form>
      

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