<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | company add questions</title>
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
                var a= document.form1.Qno.value;
                if(document.form1.Qno.value=="")
                    {
                        alert("Enter Question No:");
                        document.form1.Qno.focus();
                        return false;
                    }
                    else if(!parseInt(a))
                        {
                            alert("Enter Integer");
                            document.form1.Qno.focus();
                            return false;
                        }
                        if(document.form1.question.value=="")
                            {
                                alert("Enter Question");
                                document.form1.question.focus();
                                return false;
                            }
                            
                            if(document.form1.option1.value=="")
                                {
                                    alert("Enter First Option");
                                    document.form1.option1.focus();
                                    return false;
                                }
                                if(document.form1.option1.value=="")
                                    {
                                        alert("Enter First Option");
                                        document.form1.option1.focus();
                                        return false;
                                    }
                                    if(document.form1.option2.value=="")
                                        {
                                            alert("Enter Second Option");
                                            document.form1.option2.focus();
                                            return false;
                                        }
                                        if(document.form1.option3.value=="")
                                            {
                                                alert("Enter Third Option");
                                                document.form1.option3.focus();
                                                return false;
                                            }
                                            if(document.form1.option4.value=="")
                                                {
                                                    alert("Enter Fourth Option");
                                                    document.form1.option4.focus();
                                                    return false;
                                                }
                                                if(document.form1.answer.value=="")
                                                    {
                                                        alert("Enter Correct Answer");
                                                        document.form1.answer.focus();
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
            <h2><strong>Add Questions</strong></h2>
                    <form name="form1" method="post" action="savequestions.jsp" onSubmit="return check()">
                        <table width="500" border="0" cellpadding="6" cellspacing="0">
                            
                            <%
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
                Statement st = con.createStatement();
                Statement st1 = con.createStatement();
                            %>
                            <tr bgcolor="#FEF7E9">
                                <td>Job ID </td>
                                <td> <label>
                                        <select name="jobid" id="jobid">
                                            <%      ResultSet rs1 = st1.executeQuery("select * from JobDetails");
                                          String s = null;
                                          // String s2=null;
                                          while (rs1.next()) {
                                              s = rs1.getString("jobid");
                                              //    s2=rs.getString("Post");

                                            %>
                                            <option value="<%=s%>"><%=s%></option>
                                            <%}%>  
                                        </select>
                                </label></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Exam ID</td>
                                <td>
                                    <label>
                                        <select name="examid">
                                            <%      ResultSet rs = st.executeQuery("select * from Exam");
                                          String s1 = null;
                                          // String s2=null;
                                          while (rs.next()) {
                                              s1 = rs.getString("examid");
                                              //    s2=rs.getString("Post");

                                            %>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%} %>
                                        </select>
                                </label>         
                                </td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td>Question No</td>
                                <td>
                                <input name="Qno" type="text" size="10"/>       
                                </td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Question</td>
                                <td>
                                  <label>
                                        <textarea name="question" cols="28"></textarea>
                                  </label>               
                                </td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td>Option1</td>
                                <td>
                                    <input name="option1" type="text" size="30"/>
                                </td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Option2</td>
                                <td><input name="option2" type="text" size="30"/></td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td>Option3</td>
                                <td><input name="option3" type="text" size="30"/></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td>Option4</td>
                                <td><input name="option4" type="text" size="30"/></td>
                            </tr>
                            <tr bgcolor="#FEF7E9">
                                <td>Answer</td>
                                <td><input name="answer" type="text" size="30"></td>
                            </tr>
                            <tr bgcolor="#F3E8DA">
                                <td></td>
                                <td>
                                        <input type="submit" name="Submit" value="Add Question">
                                </td>
                            </tr>
                        </table>
                    </form> 
                    <%
            } catch (Exception e) {
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



