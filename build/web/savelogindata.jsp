<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
    <body>
        <% try {
            String s1 = request.getParameter("username");
            String s2 = request.getParameter("password");


            session.setAttribute("s1", s1);
            session.setAttribute("s2", s2);
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn = DriverManager.getConnection("jdbc:odbc:CMS");
            Statement st = conn.createStatement();
            Statement st2 = conn.createStatement();
            String stat = "";
            ResultSet rs;
            rs = st.executeQuery("select * from Login where Username='" + s1 + "' and Password='" + s2 + "'");
        %>
        <!-- <input type= "hidden" name="id" value ="<%=s1%>">
           <input type= "hidden" name="pass" value ="<%=s2%>">-->
           <%
            while (rs.next()) {
                stat = rs.getString("status");
            } //while
            if (stat.equals("s")) {
                response.sendRedirect("CandidateHomePage.jsp");
            } else if (stat.equals("c")) {
                response.sendRedirect("CompanyHomePage.jsp");
            } else if (stat.equals("a")) {
                response.sendRedirect("AdminHomePage.jsp");
            } else {
                response.sendRedirect("LoginProblem.jsp");

            }
        }//try
        catch (Exception e) {
            out.println(e);
        }
        %>
        <!-- <input type="hidden" name = "hid" value="<%request.getParameter("username");%>" -->
    </body>
</html>
