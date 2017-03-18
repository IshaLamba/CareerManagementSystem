<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company view question</title>
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
                    
            <form name="form1" action="ViewQues.jsp">

                        <table  width="500px" cellpadding="8" border="0" align="center">
                            <tr>
                                <td><div align="center">
                                        <h1>View Questions</h1>
                                </div></td>
                            </tr>
                            
                                <%
        String jid = request.getParameter("jobid");
        String eid = request.getParameter("examid");
        //out.print(jid);
        try {
            if (eid == null) {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                Statement st = con.createStatement();
                Statement st2 = con.createStatement();
                                %>
                                <tr>
                                    <td>Select an JobID </td>
                                    <td><label>
                                            <select name="jobid">
                                                <%      ResultSet rs2 = st2.executeQuery("select * from JobDetails");
                                        String s2 = null;
                                        // String s2=null;
                                        while (rs2.next()) {
                                            s2 = rs2.getString("jobid");
                                            //    s2=rs.getString("Post");
%>
                                                <option value="<%=s2%>"><%=s2%></option>
                                                <%}%>
                                            </select>
                                        </label>

                                </td>
                                </tr>
                                <tr>

                                <td>Select an ExamID </td>
                                <td><label>
                                        <select name="examid">
                                            <%      ResultSet rs = st.executeQuery("select * from Exam ");
                                        String s1 = null;
                                        // String s2=null;
                                        while (rs.next()) {
                                            s1 = rs.getString("examid");
                                            //    s2=rs.getString("Post");
%>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%}%>
                                        </select>
                                    </label>

                            </td></tr>

                            <tr>
                                <td><div align="center">
                                        <input type="submit" value="Show Details" />
                                </div></td>
                            </tr>
                        </table>
                    </form>

                    <p>
                        <%
                                    } else {
                        %>
                    </p>
                    <table width="600px" border="0" align="left" cellpadding="6" cellspacing="0">

                        <tr bgcolor="#FFFFE0">
                            <td>Question No:</td>
                            <td>Question</td>
                            <td>Option 1</td>
                            <td>Option 2</td>
                            <td>Option 3</td>
                            <td>Option 4</td>
                            <td>Answer</td>
                            <td>Delete</td>
                        </tr>
                        <%

                                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                        Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                                        Statement st3 = con.createStatement();
                                        // Statement st2=con.createStatement();

                                        ResultSet rs3 = st3.executeQuery("select QuestionNo,Question,Option1,Option2,Option3,Option4,Answer from Question where ExamID='" +
                                                eid + "' and JobID='" + jid + "'");
                                        //  String s2=null;
                                        while (rs3.next()) {
                                            String qno = rs3.getString("QuestionNo");
                                            String ques = rs3.getString("Question");
                                            String op1 = rs3.getString("Option1");
                                            String op2 = rs3.getString("Option2");
                                            String op3 = rs3.getString("Option3");
                                            String op4 = rs3.getString("Option4");
                                            String ans = rs3.getString("Answer");



                        %>
                        <tr>
                            <td bgcolor="#CAA899"><%=qno%></td>
                            <td bgcolor="#CAA899"><div align="center">
                                    <%=ques%>
                            </div></td>
                            <td bgcolor="#CAA899"><div align="center">
                                    <%=op1%>
                            </div></td>
                            <td bgcolor="#CAA899"><div align="center">
                                    <%=op2%>
                            </div></td>
                            <td bgcolor="#CAA899"><div align="center">
                                    <%=op3%>
                            </div></td>
                            <td bgcolor="#CAA899"><div align="center">
                                    <%=op4%>
                            </div></td>
                            <td bgcolor="#CAA899"><div align="center">
                                    <%=ans%>
                            </div></td>
                            <td bgcolor="#CAA899"><div align="center"><a href="DeleteQues.jsp?qno=<%=qno%>&jid=<%=jid%>&eid=<%=eid%>">Delete</a></div></td>
                        </tr>

                        <%
                }
                con.close();
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