<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title> CMS | candidate edit</title>
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
            function setVal(obj)
            {
                if(obj.checked==false)
                {
                    document.getElementById("expyears").disabled=true;
                    document.getElementById("company").disabled=true;
                    document.getElementById("designation").disabled=true;
                    document.getElementById("salary").disabled=true;
                    document.getElementById("comAddress").disabled=true;

                }else{
                    document.getElementById("expyears").disabled=false;
                    document.getElementById("company").disabled=false;
                    document.getElementById("designation").disabled=false;
                    document.getElementById("salary").disabled=false;
                    document.getElementById("comAddress").disabled=false;
                }
            }
            function check()
            {
                var x=document.form1.name.value;
                var y=document.form1.college.value;
                var d=document.form1.markDegree.value;
                var a=document.form1.collegephone.value;
                var e=document.form1.telephone.value;
                var f=document.form1.pin.value;
                var g=document.form1.expyears.value;
                var h=document.form1.salary.value;

                if(document.form1.name.value=="")
                {
                    alert("Enter Your Name");
                    document.form1.name.focus();
                    return false;
                }
                else if(parseInt(x))
                {
                    alert("Enter name Correctly");
                    document.form1.name.focus();
                    return false;
                }
                if(document.form1.college.value=="")
                {
                    alert("Enter College Name ");
                    document.form1.college.focus();
                    return false;
                }
                else if(parseInt(y))
                {
                    alert("Enter College Name correctly");
                    document.form1.college.focus();
                    return false;
                }
                if(document.form1.collegephone.value=="")
                {
                    alert("Enter collegephone number ");
                    document.form1.collegephone.focus();
                    return false;
                }
                else if(!parseInt(a))
                {
                    alert("Enter CollegePhone Integer");
                    document.form1.collegephone.focus();
                    return false;
                }
                else if(((document.form1.collegephone.value.length)<6) || ((document.form1.collegephone.value.length)>11))
                {
                    alert("Phone no: should contain atleast 6 integers ");
                    document.form1.collegephone.focus();
                    return false;
                }
                if(document.form1.collegeemail.value=="")
                {
                    alert("Enter College email ");
                    document.form1.collegeemail.focus();
                    return false;
                }
                else if(document.form1.collegeemail.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.collegeemail.focus();
                    return false;
                }
                else if(document.form1.collegeemail.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.collegeemail.focus();
                    return false;
                }
                if(document.form1.markDegree.value=="")
                {
                    alert("Enter Degree mark");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(!parseInt(d))
                {
                    alert("Enter Integer");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(parseInt(d).length<0||parseInt(d).length>100)
                {
                    alert("Enter Degree % mark correctly  ");
                    document.form1.markDegree.focus();
                    return false;
                }
                if(document.form1.email.value=="")
                {
                    alert("Enter email ");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.email.focus();
                    return false;
                }
                if(document.form1.telephone.value=="")
                {
                    alert("Enter phone number ");
                    document.form1.telephone.focus();
                    return false;
                }
                else if(!parseInt(e))
                {
                    alert("Enter Ph Integer");
                    return false;
                }
                else if(((document.form1.telephone.value.length)<6) || ((document.form1.telephone.value.length)>11))
                {
                    alert("Phone no should contain atleast 6 integers ");

                    document.form1.telephone.focus();
                    return false;
                }
                if(document.form1.address.value=="")
                {
                    alert("Enter Address");
                    document.form1.address.focus();
                    return false;
                }
                if(document.form1.state.value=="")
                {
                    alert("Specify State");
                    document.form1.address.focus();
                    return false;
                }
                if(document.form1.pin.value=="")
                {
                    alert("Enter pin number ");
                    document.form1.pin.focus();
                    return false;
                }
                else if(!parseInt(f))
                {
                    alert("Enter Integer");
                    document.form1.pin.focus();
                    return false;
                }
                else if((document.form1.pin.value.length)<6)
                {
                    alert("Pin no: should contain 6 integers ");
                    document.form1.pin.focus();
                    return false;
                }
                
                if(document.getElementById("cat").checked==true)
                {
                    if(document.getElementById("expyears").value=="")
                    {
                        alert("Enter Exp years");
                        document.getElementById("expyears").focus();
                        return false;
                    }
					else
					{
					var expyr=document.getElementById("expyears").value;
					if (!parseInt(expyr)){
                            alert("Expyr invalid");
                            return false;
                        }
					}
					
                    if(document.getElementById("company").value=="")
                    {
                        alert("Enter Company");
                        document.getElementById("company").focus();
                        return false;
                    }

                    if(document.getElementById("designation").value=="")
                    {
                        alert("Enter Designation");
                        document.getElementById("designation").focus();
                        return false;
                    }

                    if(document.getElementById("salary").value=="")
                    {
                        alert("Enter Salary");
                        document.getElementById("salary").focus();
                        return false;
                    }else{
                        var sal=document.getElementById("salary").value;
                        if (!parseInt(sal)){
                            alert("Salary invalid");
                            return false;
                        }
						if(document.getElementById("comAddress").value=="")
                    {
                        alert("Enter Company Address");
                        document.getElementById("comAddress").focus();
                        return false;
                    }
                    }
                }
                return true;
            }
        </script>
    </head>

<body onload="setVal(document.getElementById('cat'))">
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
            
            


                    <% try {

            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");


            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");


            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Details where Username='" + c1 + "'");

            String s1 = null;
            String s2 = null;
            String s3 = null;
            String s4 = null;
            String s5 = null;
            String s6 = null;
            String s7 = null;
            String s8 = null;
            String s9 = null;
            String s10 = null;
            String s11 = null;

            String expyrs = "", company = "", desig = "", sal = "", comadd = "", category = "";
            while (rs.next()) {
                s1 = rs.getString(2);//name
                s2 = rs.getString(5);//colg
                s3 = rs.getString(6);//colgph
                s4 = rs.getString(7);//colgemail
                s5 = rs.getString(9);//mark
                s6 = rs.getString(11);//email
                s7 = rs.getString(12);//tph
                s8 = rs.getString(13);//add
                s9 = rs.getString(14);//state
                s10 = rs.getString(15);//pin
                s11 = rs.getString(16);//category

            }
            String sql = "select * from Experienced where Username='" + c1 + "'";
            rs = st.executeQuery(sql);
            if (rs.next()) {
                expyrs = rs.getString(2);
                company = rs.getString(3);
                desig = rs.getString(4);
                sal = rs.getString(5);
                comadd = rs.getString(6);
                category = "Experienced";
            } else {
                category = "Fresher";
            }
                    %>

                    <form method="POST" action="savestudentedit.jsp" name="form1" onsubmit="return check()">
                        <table border=0 cellpadding=3 cellspacing=0  align=center width="600px" >
                            <tr bgcolor =#FEF7E9>
                                <td colspan="2" bgcolor="#E2E0CF"><div align="center"><strong>Edit Profile</strong></div></td>
                            </tr>
                            <tr bgcolor =#FEF7E9 width =100%>
                                <td width="48%" bgcolor="#F3E8DA">Name&nbsp;
                                <font color="#993333">(as in academic records)</font></td>
                                <td width="52%" bgcolor="#F3E8DA"><input TYPE="text" NAME="name" size=30
                                                                         maxlength=30 value='<%=s1%>'>                </td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    College in which studying
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="college" size=30 maxlength=30 value='<%=s2%>'>                       </td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    College Phone
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="collegephone" size=30 maxlength=30                                       value='<%=s3%>'><font SIZE="2" COLOR="#CC0000" face =arial (Std-No.)>                                 </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td>
                                    College Email
                                </td>
                                <td><input TYPE="text" NAME="collegeemail" size=30 maxlength=50 value='<%=s4%>'>                                 </td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                % of Marks
                                </td>
                                <td bgcolor="#F3E8DA">
                                    <table width="111" border=0 cellpadding=0 cellspacing=0>
                                        <tr>
                                            <td width="95"><div align="center"><font COLOR="#3366CC" face =arial> MCA/M-Tech %</font> </div></td>
                                        </tr>
                                        <tr>
                                            <td><input TYPE="text" NAME="markDegree" size=8 maxlength=8 value='<%=s5%>' onblur="checkDec('markBSC')">                                              </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr  bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    Email_id
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="email" size=30 maxlength=30 value='<%=s6%>'></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td>
                                Mobile Number
                                </td>
                                <td><input NAME="telephone" TYPE="text" id="telephone" value="<%=s7%>">
                                    <font SIZE="2" COLOR="#CC0000" face ='arial'>(Mob-No.)  </font>
                                </td>
                            </tr>
                            <tr  bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA" >Address</td>
                                <td bgcolor="#F3E8DA">
                                    <input class=USS_TEXT maxLength=30 name="address" size=40 value='<%=s8%>'>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td>State</td>
                                <td><select name=state> <option selected value='<%=s9%>'>Select State</option>
                                        <option value=AP>Andhra Pradesh</option> <option value=AR>Arunachal
                                        Pradesh</option> <option value=AS>Assam</option> <option
                                            value=BR>Bihar</option> <option value=CH>Chandigarh</option> <option
                                            value=CG>Chattisgarh</option> <option value=DL>Delhi</option> <option
                                            value=GA>Goa</option> <option value=GJ>Gujarat</option> <option
                                            value=HR>Haryana</option> <option value=HP>Himachal Pradesh</option>
                                        <option value=JK>Jammu &amp; Kashmir</option> <option
                                            value=JH>Jharkhand</option> <option value=KA>Karnataka</option> <option
                                            value=KL>Kerala</option> <option value=MP>Madhya Pradesh</option>
                                        <option value=MH>Maharashtra</option> <option value=MN>Manipur</option>
                                        <option value=ML>Meghalaya</option> <option value=MZ>Mizoram</option>
                                        <option value=NL>Nagaland</option> <option value=OR>Orissa</option>
                                        <option value=PY>Pondicherry</option> <option value=PB>Punjab</option>
                                        <option value=RJ>Rajasthan</option> <option value=SK>Sikkim</option>
                                        <option value=TN>Tamilnadu</option> <option value=TR>Tripura</option>
                                        <option value=UA>Uttaranchal</option> <option value=UP>Uttar
                                        Pradesh</option> <option value=WB>West Bengal</option> <option
                                    value=XX>Others</option></select><br>                           </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td bgcolor="#F3E8DA">
                                    Pincode
                                </td>
                                <td bgcolor="#F3E8DA"><INPUT class=USS_TEXT maxLength=6 name="pin" size=6 value='<%=s10%>'>
                                    
                                            <input type="hidden" name="category" id="category" value="<%=category%>" />
                                </td>
                            </tr>
                            <%
     if (s11.equalsIgnoreCase("Fresher")) {
                            %>

                            <tr bgcolor="#FFFFFF">
                                <td>
                                   Category
                                </td>
                                <td align="left" >
                                    <input type="checkbox" name="cat" id="cat"  value='Experienced'  onclick="setVal(this);" />Experienced
                                </td>
                            </tr>

                            <%     }

                            %>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    Experienced Years
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="expyears" id="expyears" size=30 maxlength=30 value="<%=expyrs%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">Company</font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="company" id="company" size=30 maxlength=30 value="<%=company%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">Designation </font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="designation" id="designation" size=30 maxlength=30 value="<%=desig%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">Salary</font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="salary" id="salary" size=30 maxlength=30 value="<%=sal%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">Company Address</font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="comAddress" id="comAddress" size=30 maxlength=30 value="<%=comadd%>"></td>
                            </tr>
                            <tr>
                                <td height="49" colspan=2 align="center" ><input TYPE="submit" value="Edit"></td>
                            </tr>
                        </table>
                    </form>

                    <%// }//while
        }//try
        catch (Exception e) {
            out.println(e);
        }

                    %>

       </div>
      </div>
      <!-- ####################################################################################################### -->
     
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->


    </body>
</html>
