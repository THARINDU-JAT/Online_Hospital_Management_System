<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%

String  id = request.getParameter("nic");
//int no = Integer.parseInt(id);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "");
Statement stm = conn.createStatement();
stm.executeUpdate("delete from patient_info where nic = '"+id+"'");
response.sendRedirect("deSuccess.jsp");


%>