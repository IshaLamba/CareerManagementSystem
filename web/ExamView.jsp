<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company:exam view</title>
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

            <form name="form1" action="ExamView.jsp">
                        <table width="277" height="128" border="0" align="center"  >
                          <tr>
                                <td height="49" colspan="2"><h1>
                                        Exam View</h1>
                                </td>
                            </tr>
                            <%
        String jid = request.getParameter("jobid");
        //out.print(jid);
        try {
            if (jid == null) {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                Statement st = con.createStatement();
                            %>
                            <tr>
                                <td width="135" height="42">Select a JobID</td>
                                <td width="132">
                                    <label>
                                        <select name="jobid">
                                            <%      ResultSet rs = st.executeQuery("select * from JobDetails");
                            String s1 = null;

                            while (rs.next()) {
                                s1 = rs.getString("JobId");


                                            %>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%     }
                                            %>
                                        </select>
                                    </label>
                                </td>
                            </tr>
                            <tr><td> <input type="submit" value="Show Details" /> </td></tr>
                        </table>
                    </form>

                    <%
                            } else {
                                jid = request.getParameter("jobid");
                                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                                Statement st = con.createStatement();

                                ResultSet rs = st.executeQuery("select * from JobDetails where JobId='" + jid + "'");
                                String s2 = null;
                                while (rs.next()) {
                                    s2 = rs.getString("Post");
                                }
                    %>
                    <table width="549" height="54" border="0" align="center" style="vertical-align:top">

                        <tr>
                            <td width="98" height="23" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Exam ID </div></td>
                            <td width="139" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Exam Name </div></td>
                            <td width="104" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Cutoff % </div></td>
                            <td width="89" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Edit</div></td>
                            <td width="85" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Delete</div></td>
                        </tr>

                        <%    Statement st2 = con.createStatement();
                                ResultSet rs2 = st2.executeQuery("select * from Exam where JobId='" + jid + "'");

                                while (rs2.next()) {
                                    String eid = rs2.getString("ExamID");
                                    String ename = rs2.getString("ExamName");
                                    String ecut = rs2.getString("Cutoff");
                        %>
                        <tr valign="top">
                            <td height="23" bordercolor="#344631" bgcolor="#F8E0E0"><%=eid%></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><%=ename%></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><%=ecut%></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><a href="EditExam.jsp?eid=<%=eid%>&jid=<%=jid%>">Edit</a></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><a href="DeleteExam.jsp?eid=<%=eid%>">Delete</a></td>
                        </tr>
                        <%
                }
            }
        } catch (Exception e) {
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
