<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

        String jid = request.getParameter("jid");
        String eid = request.getParameter("eid");
        String msg = "";
        if (request.getParameter("update") != null) {
            String examid = request.getParameter("examid");
            String jobid = request.getParameter("jobid");
            String postname = request.getParameter("postname");
            String examname = request.getParameter("exname");
            String cutoff = request.getParameter("cutoff");
            String sql = "Update Exam Set Post='" + postname + "', ExamName='" + examname + "', Cutoff='" +
                    cutoff + "' where JobID='" + jobid + "' and ExamID='" + examid + "'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
            Statement st = con.createStatement();
            int x = st.executeUpdate(sql);

            if (x > 0) {
                msg = "success";
                response.sendRedirect("ExamView.jsp?jobid=" + jobid);

            } else {
                msg = "Updation failed";
            }
        }
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company Edit exam</title>
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
			var a= document.frm.exname.value;
			var b= document.frm.cutoff.value;
			if(document.frm.postname.value=="")
            {
                alert("Enter Post Name");
                document.frm.postname.focus();
                return false;
            }
            
			if(document.frm.exname.value=="")
            {
                alert("Enter Exam Name");
                document.frm.exname.focus();
                return false;
            }
			
			if(document.frm.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.frm.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.frm.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.frm.cutoff.focus();
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

            
                    <%


        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
        Statement st = con.createStatement();
        Statement st3 = con.createStatement();
        ResultSet rs = st.executeQuery("select * from Exam where JobID='" + jid + "' and ExamID='" + eid + "'");
        String post = "", exname = "", cutoff = "";
        if (rs.next()) {
            post = rs.getString("Post");
            exname = rs.getString("ExamName");
            cutoff = rs.getString("Cutoff");
        }
                    %>
                    <h2><strong>Edit Exam Details</strong></h2>
                    <form name="frm" action="EditExam.jsp" method="post" onsubmit="return check()">
                        <table width="600" border="0" cellpadding="6" cellspacing="0">
                          
                            <tr bgcolor="#FEF7E9">
                                <td>Post</td>
                                <td><input type="text" name="postname" id="postname" value="<%=post%>" /></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Exam Name</td>
                                <td><input type="text" name="exname" id="exname" value="<%=exname%>" /></td>
                            </tr>
                            <tr bgcolor=#FEF7E9>
                                <td>Cutoff</td>
                                <td><input type="text" name="cutoff" id="cutoff" value="<%=cutoff%>" /></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td></td>
                                <td>
                                    <input name="jobid" type="hidden" id="jobid" value="<%=jid%>" />
                                    <input name="examid" type="hidden" id="examid" value="<%=eid%>" />
                                <input type="submit" name="update" id="update" value="Update" /></td>
                            </tr>
                            <tr bgcolor=#FEF7E9>
                                <td></td>
                                <td><%=msg%></td>
                            </tr>
                        </table>
                    </form>
            
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