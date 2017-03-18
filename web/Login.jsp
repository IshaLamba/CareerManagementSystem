<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head>
<title>CMS|Log in</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="3_column.css" type="text/css" />
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
    
<div class="wrapper row3">
  <div class="rnd">
    <div id="container" class="clear">
      <!-- ####################################################################################################### -->
      <div id="homepage" class="clear">
        <!-- ###### -->
        <div id="left_column">
            
          <img src="images/demo/long banner.gif" alt="" />
        </div>
        <!-- ###### -->
        <div id="rightcolumn">
        <h1><img src="./images/login2.png" /><strong>Login Page</strong></h1>
        <p><strong>Enter your username and password below</strong></p>
        <div class="ex">
        <form name="login" method="post" action="savelogindata.jsp">
            <br></br>
            <br></br>
                <table width="500" border="0" align="center" cellpadding="8" cellspacing="0">

                    <tr>
                       <td>
                            Enter Username 
                        </td>
                        <td>
                          <input name="username" type="text" id="username" />
                        </td>
                    </tr>
                    <tr>
                        <td> Enter Password
                        </td>
                        <td>
                            <input name="password" type="password" id="password" />
                        </td>
                    </tr>
                    <tr>
                        
                        <td align="right">
                           <input type="submit" name="Submit" value="Login" />
                        </td>     
                    </tr>
                </table>
        </form>
        </div>
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