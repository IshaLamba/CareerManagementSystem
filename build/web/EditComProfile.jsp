<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company edit</title>
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
		var a=document.form1.comname.value;
           	var c=document.form1.comemail.value;
            	var d=document.form1.comcontact.value;
            	var e=document.form1.comcutoff.value;
				if(document.form1.comname.value == "")
				{
					alert("Enter Company Name");
                	document.form1.comname.focus();
                	return false;
				}
				else if(parseInt(a))
           		 {
                alert("Company Name cannot be integer");
                document.form1.comname.focus();
                return false;
           		 }
				if(document.form1.comaddress.value == "")
				{
					alert("Enter Company Address");
                	document.form1.comaddress.focus();
                	return false;
				}
				if(document.form1.compost.value == "")
				{
					alert("Enter Post");
                	document.form1.compost.focus();
                	return false;
				}
				if(document.form1.comcriteria.value == "")
				{
					alert("Enter Criteria of the Company");
                	document.form1.comcriteria.focus();
                	return false;
				}
				if(document.form1.comemail.value == "")
				{
					alert("Enter Company Email");
                	document.form1.comemail.focus();
                	return false;
				}
				else if(c.indexOf('@')==-1)
         	   {
                alert("Enter Email Correctly");
                document.form1.comemail.focus();
                return false;
          		}
           		 else if(c.indexOf('.')==-1)
           		 {
                alert("Enter Email Correctly");
                document.form1.comemail.focus();
                return false;
          		  }
				if(document.form1.comcontact.value == "")
				{
					alert("Enter Company Contact no:");
                	document.form1.comcontact.focus();
                	return false;
				}
				else if(!parseInt(d))
            	{
                alert("Enter integer");
                document.form1.comcontact.focus();
                return false;
            	}
            	else if(((document.form1.comcontact.value.length)<6) || ((document.form1.comcontact.value.length)>11))
            	{
                alert("Phone no should contain atleast 6 integers ");
                document.form1.comcontact.focus();
                return false;
            	}
				if(document.form1.comcutoff.value == "")
				{
					alert("Enter Company Cutoff mark");
                	document.form1.comcutoff.focus();
                	return false;
				}
				 else if(!parseInt(e))
            	{
                alert("Enter integer");
                document.form1.comcutoff.focus();
                return false;
            	}
           	 	else if(parseInt(e)<0||parseInt(e)>100)
            	{
                alert("Enter cutoff in %");
                document.form1.comcutoff.focus();
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
        <a href="CompanyHomePage.jsp">company Profile</a>  
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


            ResultSet rs = st.executeQuery("select CName,CAddress,CPost,CCriteria,CEmail,CContact,CCutoff from Com where CUsername='" + c1 + "'");
            String a = null;
            String b = null;
            String c = null;
            String d = null;
            String e = null;
            String f = null;
            String g = null;
            while (rs.next())
            {
                a = rs.getString("CName");
                b = rs.getString("CAddress");
                c = rs.getString("CPost");
                d = rs.getString("CCriteria");
                e = rs.getString("CEmail");
                f = rs.getString("CContact");
                g = rs.getString("CCutoff");

                        %>
                        <h2><strong>Edit Company Profile</strong></h2>
                        <form method="POST" action="savecompanyedit.jsp" name="form1" onSubmit="return check()">
                            <table width ="600px" border=0 cellpadding=6 cellspacing=0 >
            
                                <tr bgcolor=#FEF7E9 width=100%>
                                    <td width="46%">
                                   Name
                                    </td>
                                    <td width="54%">
                                        <input TYPE="text" NAME="comname" id="comname" size=30 maxlength=30 value="<%=a%>">
                                    </td>
                                </tr>
                                <tr bgcolor="#F3E8DA">
                                    <td>
                                    Address
                                    </td>
                                    <td>
                                       <input NAME="comaddress" TYPE="text" id="comaddress" size=30 maxlength=50 value="<%=b%>">
                                    </td>
                                </tr>
                                <tr bgcolor=#FEF7E9 >
                                    <td>
                                    Post
                                    </td>
                                    <td>
                                    <input NAME="compost" TYPE="text" id="compost" size=30  maxlength=50 value="<%=c%>">
                                    </td>
                                </tr>
                                <tr bgcolor="#F3E8DA">
                                    <td>
                                    Criteria
                                    </td>
                                    <td>
                                    <input NAME="comcriteria" TYPE="text" id="comcriteria" size=30  maxlength=50 value="<%=d%>">
                                    </td>
                                </tr>
                                <tr  bgcolor=#FEF7E9>
                                    <td>
                                    Email_id
                                    </td>
                                    <td>
                                    <input TYPE="text" NAME="comemail" id="comemail" size=30 maxlength=30 value="<%=e%>">
                                    </td>
                                </tr>
                                <tr bgcolor="#F3E8DA">
                                    <td>
                                    Contact No
                                    </td>
                                    <td>
                                     <input TYPE="text" NAME="comcontact" id="comcontact"size=20 maxlength=30 value="<%=f%>">
                                            <font SIZE="2" COLOR="#CC0000" face =arial>(STD-No.)</font>
                                            </td>
                                </tr>
                                <tr bgcolor =#FEF7E9>
                                    <td>CutOff %</td>
                                    <td><input TYPE="text" NAME="comcutoff" id="comcutoff" size=30 maxlength=30 value="<%=g%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <input type="reset" />
                                    </td>
                                    <td align="left">
                                        <input TYPE="submit" value="Edit" >
                                    </td>
                                </tr>
                            </table>
                        </form>

                    <% }//while

        } catch (Exception e) {
            out.println(e.toString());
        }
                    %>
                </td>
            </tr>
        </table>
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





