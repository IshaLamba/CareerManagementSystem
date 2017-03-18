<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company account settings</title>
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

        <script language="javascript">
            function check()
            {
                var a= document.form1.newpass2.value;
                var b= document.form1.newpass.value;
                if(document.form1.pass.value  =="")
                {
                    alert("Enter the old password");
                    document.form1.pass.focus();
                    return false;
                }
                if(document.form1.newpass2.value =="")
                {
                    alert("Enter the new password");
                    document.form1.newpass2.focus();
                    return false;
                }
                else if(a.length<8)
                {
                    alert("password should be minimum 8 characters");
                    document.form1.newpass2.focus();
                    return false;
                }
                if(document.form1.newpass.value=="")
                {
                    alert("ReEnter the password");
                    document.form1.newpass.focus();
                    return false;
                }
                else if(a!=b)
                {
                    alert("Wrong password match");
                    document.form1.newpass.focus();
                    return false;
                }

                return true;
            }
        </script>
    
       
                        <% try {

            
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Login where Username='" + c1 + "' and Password ='" + c2 + "'");

            String s1 = null;
            String s2 = null;
                        %>

  

                        <%
     while (rs.next()) {
         s1 = rs.getString(1);
         s2 = rs.getString(2);
     }
                        %>
                        <h2><strong>change password</strong> </h2>
                   <form name="form1" method="post" action="saveComPassword.jsp onSubmit="return check()">
                       <table width="600"  border="0"  cellpadding="6" cellspacing="0" >        
                           
                            <tr bgcolor=#FEF7E9>
                                <td> Username </td>
                                <td><input name="user" type="text"  id="user" value="<%=s1%>" size="35"/></td>
                                
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Old Password </td>
                                <td><input name="pass" type="password"  id="pass"  size="35"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td>New Password </td>
                                <td><input name="newpass2" type="password" id="newpass2" size="35"></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Retype New Password</strong></span></td>
                                <td><input name="newpass" type="password" id="newpass" size="35"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td></td>
                                <td>
                                        <input name="Submit" type="submit" class="style9" value="Submit">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <%
        }
        catch (Exception e) {
            out.println(e);
        }

                %>	
                
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
