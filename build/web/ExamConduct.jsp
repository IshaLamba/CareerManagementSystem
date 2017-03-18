<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        Connection con = null;
        Statement st = null, st2 = null;
        ResultSet rs = null;
        String sql = null;
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con = DriverManager.getConnection("jdbc:odbc:CMS");
            st = con.createStatement();
        } catch (Exception ex) {
            out.println("Error: " + ex.toString());
        }
%>
    
    
    

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | candidate test</title>
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

            <table width="304" height="243" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="center" class="style1">
                                    <p>Exam</p>
                            </div></td>
                        </tr>
                        <tr>
                            
                            
                        <%
        String jid = request.getParameter("jobid");
        try {
            if (jid == null) {
                        %>
                        <form name="exam1" action ="ExamConduct.jsp">
                            <td width="167" height="42"><span class="style7">Select a JobID </span></td>
                            <td width="112">
                                
                                <select name="jobid">
                                    <%
                                rs = st.executeQuery("select * from JobDetails");
                                String s1 = null;
                                // String s2=null;
                                while (rs.next()) {
                                    s1 = rs.getString("JobId");
                                    //    s2=rs.getString("Post");
                                    out.println("<option value='" + s1 + "'>" + s1 + "</option>");
                                }//while
                                    
                                    %>
                                </select>
                            </td>
                            <tr><td> <div align="center">
                                        <input type="submit" value="OK "/>
                            </div></td></tr>
                        </form>
                        <%
                            }//if
                            else {
                                jid = request.getParameter("jobid");
                                sql = "select Post from Exam where JobID='" + jid + "'";
                                rs = st.executeQuery(sql);
                                String post = null;
                                if (rs.next()) {
                                    post = rs.getString("Post");
                                }
                                rs.close();
                                    
                                    
                        %> <form name="examSelection" action ="11.jsp">
                            <tr>
                                <td><span class="style7">Post Name :</span></td>
                                <td><%=post%></td>
                                <td width="11">&nbsp;</td>
                            </tr>
                                
                            <tr>
                                <td height="30" class="style7">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="30" class="style7">Select an Exam</td>
                                <td><select name="examid">
                                    
                                        <%
                                sql = "select ExamID,ExamName from Exam where JobID='" + jid + "'";
                                rs = st.executeQuery(sql);
                                String exname = null;
                                String exid = null;
                                while (rs.next()) {
                                    exid = rs.getString("ExamID");
                                    exname = rs.getString("ExamName");
                                    out.println("<option value='" + exid + "'>" + exname + "</option>");
                                }
                                        %>
                                    </select>
                                </td>
                         </tr>
                            <tr>
                                <td class="style7"><div align="center">
                                        <input type="submit" value="OK "/>
                                </div></td>
                            </tr>
                        </form>
                    </table>
                    <p>&nbsp;</p>
                        
                    <%
                        
                session.setAttribute("jobid", request.getParameter("jobid"));
                session.setAttribute("post", post);
            }//else
        }//try
        catch (Exception e) {
            out.println(e);
        }
                    %>
                        
            
                        </div>
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>
    
