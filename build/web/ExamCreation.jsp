<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company exam creation</title>
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
			var a= document.form1.examid.value;
			var b= document.form1.cutoff.value;
			if(document.form1.examid.value=="")
            {
                alert("Enter Exam ID");
                document.form1.examid.focus();
                return false;
            }
            else if(!parseInt(a))
            {
                alert("Enter Integer");
                document.form1.examid.focus();
                return false;
            }
			if(document.form1.examname.value=="")
            {
                alert("Enter Exam Name");
                document.form1.examname.focus();
                return false;
            }
			
			if(document.form1.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.form1.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.form1.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.form1.cutoff.focus();
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
                    <h2><strong> Exam Creation</strong></h2>
                    <table width="300" border="0" cellspacing="0" cellpadding="10">
                        
                        <%
        String jid = request.getParameter("jobid");
        try {
            if (jid == null) {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                Statement st = con.createStatement();
                        %>
                        <form name="form2" action="ExamCreation.jsp">
                            <td>Select a JobID </td>
                            <td>
                                <label>
                                    <select name="jobid">
                                        <%      ResultSet rs = st.executeQuery("select * from JobDetails");
                                    String s1 = null;
                                    // String s2=null;
                                    while (rs.next()) {
                                        s1 = rs.getString("JobId");
                                        //    s2=rs.getString("Post");

                                        %>
                                        <option value="<%=s1%>"><%=s1%></option>
                                        <% }//while %>
                                    </select>
                                </label>
                            </td>
                            <tr></tr>        
                            <tr><td> <div align="center">
                                        <input type="submit" value="Show Details">
                            </div></td></tr>
                        </form>
                        <%
                          }//if
                          else {
                              jid = request.getParameter("jobid");
                              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                             Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                              Statement st = con.createStatement();
                              Statement st2 = con.createStatement();
                              ResultSet rs = st.executeQuery("select * from JobDetails where JobId='" + jid + "'");
                              String s2 = null;
                              while (rs.next()) {
                                  s2 = rs.getString("Post");;

                        %>
                        <tr>
                            <td>Post Name :</td>
                            <td><%=s2%></td>
                        </tr>
                    </table>
                    <p>&nbsp;</p>
                    <form name="form1" method="post" action="saveexamdetails.jsp" onSubmit="return check()">
                        <table width="400" cellpadding="6" cellspacing="0" border="0" align="center">
                            <tr bgcolor=#FEF7E9>
                                <td width="150"><strong>Exam ID</strong></td>
                                <td width="250"><input type="text" name="examid"></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td><strong>Exam Name </strong></td>
                                <td><input type="text" name="examname"></td>
                            </tr>
                            <tr bgcolor=#FEF7E9>
                                <td><strong>Cutoff %</strong></td>
                                <td><input type="text" name="cutoff"></td>
                            </tr>

                            <tr bgcolor="#F3E8DA">
                                <td></td>
                                <td>
                                        <input type="submit" name="Submit" value="Submit">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <%
                }//while
                session.setAttribute("jobid", request.getParameter("jobid"));
                session.setAttribute("post", s2);
            }//else

        }//try
        catch (Exception e) {
            out.println(e);
        }
                    %>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>