<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company profile</title>
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
          
          
                    <%
        //out.println(c1);
        try {

            //

            String c1 = (String) session.getAttribute("s1");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
            Statement st = con.createStatement();


            ResultSet rs = st.executeQuery("select CName,CAddress,CEmail,CContact from Com where CUsername='" + c1 + "'");
            String a = null;
            String b = null;
            String c = null;
            String d = null;
            
            while (rs.next())
            {
                a = rs.getString("CName");
                b = rs.getString("CAddress");
                c = rs.getString("CEmail");
                d = rs.getString("CContact");

                        %>

                        
       <h2>Welcome <u><b><i><%=c1 %></i></b></u>!!!<br></br> some of Your company details shared with us are..</h2>
       
       <table border="0" cellpadding="6" cellspacing="0" width="500px">   
      <tr bgcolor="#FEF7E9">
        <td>
          Name Of company
        </td>
        <td>
          <%=a%>
        </td>
          </tr>
        <tr bgcolor="#F3E8DA">
            <td>
          Address of Company
        </td>
        <td>
            <%=b%>
        </td>
        </tr>
        <tr bgcolor="#FEF7E9">
        <td>
          Email Address
        </td>
        <td>
          <%=c%>
        </td>
        </tr>
        <tr bgcolor="#F3E8DA">
        <td>
          Contact number
        </td>
        <td>
          <%=d%>
        </td>
        </tr>
        
                         <% }//while

        } catch (Exception e) {
            out.println(e.toString());
        }
                    %>
       </table>
        </div>
      </div>
        <!-- ###### -->  
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
