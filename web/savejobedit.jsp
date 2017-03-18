<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
        <style type="text/css">
            <!--
            body {
                background-color: #E2EFD6;
            }
            -->
    </style>
    <body>
        <table>
            <% try {
            String jid = request.getParameter("jobid");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:CMS");
            Statement st = con.createStatement();
            st.executeUpdate("Update JobDetails set Post='" + request.getParameter("post") + "',Criteria='" + request.getParameter("criteria") + "',NoOfVacancies='" + request.getParameter("vacancies") + "',Salary='" + request.getParameter("salary") + "',LastDate='" + request.getParameter("lastdate") + "' where JobId='" + jid + "'");
            %>
            <font color="red" size="5"> <%out.println("You have Successfully Edited!!!");%></font>
            <%   } catch (Exception e) {
            out.println(e);
        }

            %>
        </table>
        <p>&nbsp;</p>
        <p><a href="CompanyHomePage.jsp"><strong>Goto Home</strong></a> </p>
    </body>
</html>
