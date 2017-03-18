<%@ page contentType="text/html; charset=utf-8" language="java"  import="java.sql.*" errorPage="" %>
<%@page import="java.io.*,java.sql.*;" session="true" %>


<%

        String examID = request.getParameter("examid");
        String jobID = (String) session.getAttribute("jobid");
        String studentid=(String) session.getAttribute("s1");
		out.println("ExamId: "+ examID);  //2
		out.println("jobID: "+ jobID);  // 101
		System.out.println("ExamId: "+ examID);
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
        int[] ar = new int[10];  // JComment: int[] ar = new int[10];
        int i = 0;
        if (request.getParameter("examid") != "") {
		// JComment: To Run successfully this project make sure that u have Questionno 1 to 99 in question table
       /*     while (i < 10) {
                double x = Math.random();
                String t = String.valueOf(x * 20);
                t = t.substring(0, t.indexOf("."));
                int b = Integer.parseInt(t);
                //out.println(b + "<br>");
                boolean flag = false;
                for (int n = 0; n < ar.length; n++) {

                    if (b <= 0 || ar[n] == b) {
                        flag = true;
                    }

                }
                if (flag == false) {
                    ar[i] = b;
                    i++;
                }
            }//while */
			for(int k=1; k<=10; k++){
				ar[k-1] = k;
			}
			for(int k=0; k<ar.length; k++){
				System.out.println("ar: " +ar[k]);
			}
            try {
				 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				con = DriverManager.getConnection("jdbc:odbc:CMS");  
				st = con.createStatement();
                for (int n = 0; n < ar.length; n++) {
                   
                    rs = st.executeQuery("select * from Question Where JobID='" + jobID + "' and ExamID='" +
                            examID + "' and QuestionNo=" + ar[n]);
                    if (rs.next()) {
        
                        sql="insert into Temp_Data values('" + studentid + "'," + (n +1) + ",'" + rs.getString(4) +
                                "','" + rs.getString(5) +"','" +rs.getString(6) +"','" + rs.getString(7) + "','" +
                                rs.getString(8) + "','" + rs.getString(9) + "')";
                        //out.println(sql + "<br>");

                        st.executeUpdate(sql);
                    }
                }
                session.setAttribute("mark","0");
                session.setAttribute("examid", examID);
                response.sendRedirect("dispqst.jsp?qno=1");
            } catch (Exception ex) {
                out.println("Error: Cannot go forward<br>" + ex.toString() );
            }

        }
		else{
			out.println("here");
		}
%>



