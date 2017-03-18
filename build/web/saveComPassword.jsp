<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
    <body bgcolor="#F9F9F9">
        <p>
            <% try {
            String c2 = request.getParameter("user");
            // session.getAttribute("c1", c1);
            String c1 = request.getParameter("pass");
            String newpass = request.getParameter("newpass");

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");

            Statement st = con.createStatement();
            Statement st2 = con.createStatement();
            String sql1 = "Update Login set Password='" + newpass + "'where Username='" + c2 + "'and Password='" + c1 + "'";
            //String sql2 = "Update Com set CPassword='" + newpass + "'where CUsername='" + c2 + "'and CPassword='" + c1 + "'";
            //out.println(sql1);
            st.executeUpdate(sql1);
            //st.executeUpdate(sql2);
            %>
            <font color="red" size="5">
                <%out.println("You have Successfully Changed!!!");%>
            </font>
            <%   } catch (Exception e) {
            out.println(e);
        }
            %>
        </p>
        <p>&nbsp;</p>
        <p><a href="CompanyHomePage.jsp"><strong>Goto Home</strong></a> </p>
    </body>
</html>
