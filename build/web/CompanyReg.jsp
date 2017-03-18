<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title>CMS | company registration </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
    
    
        <script language="javascript">
        function valid()
        {
            var a=document.form1.comname.value;
            var b=document.form1.compassword.value;
            var c=document.form1.comemail.value;
            var d=document.form1.comcontact.value;
            var e=document.form1.comcutoff.value;
            if(document.form1.comname.value=="")
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
            if(document.form1.comaddress.value=="")
            {
                alert("Enter Company Address");
                document.form1.comaddress.focus();
                return false;
            }
            if(document.form1.compost.value=="")
            {
                alert("Enter Company Post");
                document.form1.compost.focus();
                return false;
            }
            if(document.form1.comcriteria.value=="")
            {
                alert("Enter Company Criteria");
                document.form1.comcriteria.focus();
                return false;
            }
            if(document.form1.comusername.value=="")
            {
                alert("Enter Company Username");
                document.form1.comusername.focus();
                return false;
            }
            if(document.form1.compassword.value=="")
            {
                alert("Enter Company Password");
                document.form1.compassword.focus();
                return false;
            }
            if(b.length<8)
            {
                alert("Password should be minimum 8 characters");
                document.form1.compassword.focus();
                return false;
            }
            if(document.form1.comemail.value=="")
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
            if(document.form1.comcontact.value=="")
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
            if(document.form1.comcutoff.value=="")
            {
                alert("Enter Company Cutoff");
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
        <li class="active"><a href="CompanyReg.jsp">Company Registration</a></li>
        <li><a href="Login.jsp">Log In</a></li>
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
      <div id="content">
        <h1 align="center">Fill up the registration form</h1>

    <table width="100%" border="1" bgcolor="#F9F9F9"> 
        
                    <form action="savecompanydata.jsp" method="post" name="form1" id="form1">
                        <table width =100% border=0 cellpadding=3 cellspacing=0 bordercolor="#FFFFFF" >
                           
                            <tr bgcolor="" width=100%>
                                <td width="33%" bgcolor="#FFFFFF"><div align="right"><font SIZE="2" COLOR="black" face =arial >Name</font></div></td>
                                <td width="67%" bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comname" id="comname" size=30 maxlength=30>
                                </div></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#E6F0F0"><div align="right"><font SIZE="2" COLOR="black" face =arial>Address</font></div></td>
                                <td bgcolor="#E6F0F0"><div align="center">
                                        <input NAME="comaddress" TYPE="text" id="comaddress" size=30 maxlength=50>
                                </div></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F2DFE2"><div align="right"><font SIZE="2" COLOR="black" face =arial>Post</font></div></td>
                                <td bgcolor="#F2DFE2"><div align="center">
                                        <input NAME="compost" TYPE="text" id="compost" size=30  maxlength=50>
                                </div></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F2DFE2"><div align="right"><font SIZE="2" COLOR="black" face =arial>Criteria</font></div></td>
                                <td bgcolor="#F2DFE2"><div align="center">
                                        <input NAME="comcriteria" TYPE="text" id="comcriteria" size=30  maxlength=50>
                                </div></td>
                            </tr>
                            <tr  wdth =100%>
                                <td bgcolor="#FFFFFF"><div align="right"><font SIZE="2" COLOR="black" face =arial>Username</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comusername" id="comusername"size=30 maxlength=30 value=''>
                                </div></td>
                            </tr>
                            <tr  wdth =100%>
                                <td bgcolor="#E6F0F0"><div align="right"><font SIZE="2" COLOR="black" face =arial>Password</font></div></td>
                                <td bgcolor="#E6F0F0"><div align="center">
                                        <input TYPE="password" NAME="compassword" id="compassword" size=30 maxlength=30 value=''>
                                </div></td>
                            </tr>
                            <tr  bgcolor =#FEF7E9>
                                <td bgcolor="#F2DFE2"><div align="right"><font SIZE="2" COLOR="black" face =arial>Email_id</font></div></td>
                                <td bgcolor="#F2DFE2"><div align="center">
                                        <input TYPE="text" NAME="comemail" id="comemail" size=30 maxlength=30 value=''>
                                </div></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF"><div align="right"><font SIZE="2" COLOR="black" face =arial>Contact No:</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comcontact" id="comcontact" size=30 maxlength=10 >
                                                     </div></td>
                            </tr>
                            <tr  bgcolor =#FEF7E9>
                                <td bgcolor="#E6F0F0"><div align="right"><font SIZE="2" COLOR="black" face =arial>CutOff %</font></div></td>
                                <td bgcolor="#E6F0F0"><div align="center">
                                        <input TYPE="text" NAME="comcutoff" id="comcutoff" size=30 maxlength=30 value=''>
                                </div></td>
                            </tr>
                            <tr>
                                <td height="51" colspan=2 bgcolor="#F2DFE2" ><div align="center"><br>
                                        <input TYPE="reset"> &nbsp;&nbsp;<input TYPE="submit" value="Submit" onclick="return valid()">
                                </div>                                 </td>
                            </tr>
                        </table>
                    </form>
            
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