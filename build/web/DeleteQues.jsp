<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>CMS </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body>
        <table>
    
<% try      
      {

      String qno=request.getParameter("qno");
       String jid=request.getParameter("jid");
        String eid=request.getParameter("eid");
      out.println(qno);
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:CMS");
           Statement st=con.createStatement();
     st.executeUpdate("Delete from Question where QuestionNo="+qno+" and ExamID='" + eid +
             "' and JobID='" + jid + "'");
       response.sendRedirect("ViewQues.jsp?jobid=" + jid + "&examid=" + eid);
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
