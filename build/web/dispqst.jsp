<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS|Questions</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
</head>
    <body>

        <%
        Connection con;
        Statement st;
        ResultSet rs;
        String sql;
        
        int qno = Integer.parseInt(request.getParameter("qno"));
        String studentid = (String) session.getAttribute("s1");
        String qstn = "", ch1 = "", ch2 = "", ch3 = "", ch4 = "", ans = "";
        try {
            sql = "select * from Temp_Data where StudID='" + studentid + "' and QstNo=" + qno;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con = DriverManager.getConnection("jdbc:odbc:CMS");
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                qstn = rs.getString(3);
                ch1 = rs.getString(4);
                ch2 = rs.getString(5);
                ch3 = rs.getString(6);
                ch4 = rs.getString(7);
                ans = rs.getString(8);
        %>



        <form action="calcmark.jsp" method="post">

            <table width="829" height="244" border="1" bgcolor="#F9F9F9">
                <tr>
                    <td width="148"><strong>Question <%=qno%>
                      of 10
                      </strong>
                      <input type="hidden" name="qno" value="<%=qno%>">                  </td>
                    <td><strong><%=qstn%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>1</strong></div></td>
                    <td width="460">
                      <strong>
                      <input name="ch" type="radio" value="<%=ch1%>">
                      <%=ch1%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>2</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch2%>">
                      <%=ch2%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>3</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch3%>">
                      <%=ch3%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>4</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch4%>">
                      <%=ch4%></strong></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="ans" value="<%=ans%>"></td>
                    <%
                if (qno <=9) {  //JComment:  if (qno <=9) {
                    %>
                    <td><input type="submit" name="next" value="Next Question"></td>
                    <%} else {
                    %>
                    <td width="199"><input type="submit" name="Finish" value="Finish"></td>
                    <%                }
                    %>
                </tr>
            </table>
        </form>
        <%            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }
    //out.println(session.getAttribute("mark"));
%>
        <h1>&nbsp;</h1>
    </body>
</html>
