
<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>

    <body >
        <p>
            <% try {
            String c1 = (String) session.getAttribute("s1");
            // session.getAttribute("c1", c1);
            String c2 = (String) session.getAttribute("s2");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
            Statement st = con.createStatement();
            String sql = "Update Com set CName ='" + request.getParameter("comname") + "',CAddress ='" +
                    request.getParameter("comaddress") + "',CPost ='" + request.getParameter("compost") +
                    "',CCriteria ='" + request.getParameter("comcriteria") + "',CEmail ='" + request.getParameter("comemail") +
                    "',CContact ='" + request.getParameter("comcontact") + "',CCutoff ='" + request.getParameter("comcutoff") +
                    "' where CUsername ='" + c1 + "'";
            st.executeUpdate(sql);
            %>
            <font color="red" size="5">
                <%out.println("You have Successfully Edited!!!");%>
            </font>
            <%
        } catch (Exception e) {
            out.println(e);
        }

            %>
        </p>
        <p><a href="CompanyHomePage.jsp"><strong>Go forward </strong></a></p>
    </body>
</html>
