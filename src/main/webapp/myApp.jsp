<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Appointment history</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>


<link rel="stylesheet" type="text/css" href="css/myApp.css"/>

</style>
</head>

<body>
	<div class="topnav">
<center><h1  style="color:#ffffff;">HOSPITAL MANAGEMENT SYSTEM</h1></center>
</div>
<div align="right">
	<a href = "dash.jsp"><button name="filter"  type="submit" class="btn  btn-default btn-block">GO Dashbord</button></a>
<%
    String pID = request.getParameter("pID");
	String driverName = "com.mysql.jdbc.Driver";
	String url= "jdbc:mysql://localhost:3307/hospital_management_system";
	String userName = "root";
	String password = "";
	
	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>


<br/>
<div class="container">
<div class="row">
<div class="col-md-12 col-xs-12 ">
<div>
</div>
</div>
</div><br/><br/><br/><br/>


</div></div>
<div class="container">
<div class="row">
<div class="col-md-12 col-xs-12">
<div class="page-header">
<h3 style="font-family:calibri;" class="text-center">My Appointment | History</h3></div>
</div>
</div>
</div>

<div style="border-radius:10px; padding:20px;" class="container alert-success">
<div class="row">
<div class="col-md-12 ">
<h4 style="font-family:calibri;" class="text-center">Appointment Info</h4>
<br />
<table style="background-color:#FFF; font-size:12px; " class="table table-striped table-hover table-bordered">
<thead>
<tr>
<th><strong>Patient ID</strong></th>
<th><strong>Patient Name</strong></th>
<th><strong>Patient Age</strong></th>
<th><strong>Gender</strong></th>
<th><strong>Address</strong></th>
<th><strong>Contact Number</strong></th>
<th><strong>Disease</strong></th>
<th><strong>Doctor Name</strong></th>
<th><strong>Doctor Specialization</strong></th>
<th><strong>Consultancy Fees</strong></th>
<th><strong>Appointment Date</strong></th>
<th><strong>Appointment Time</strong></th>
<th><strong></strong></th>
</tr>
</thead>

<%
	try{	
		connection = DriverManager.getConnection(url, userName, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM  patient_appointment_details";

		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
	
	<tr bgcolor="#DEB887">
			
			<td><%=resultSet.getString("pID") %></td>
			<td><%=resultSet.getString("pName") %></td>
			<td><%=resultSet.getString("age") %></td>
			<td><%=resultSet.getString("gender") %></td>
			<td><%=resultSet.getString("address") %></td>
			<td><%=resultSet.getString("phone") %></td>
			<td><%=resultSet.getString("disease") %></td>
			<td><%=resultSet.getString("dName") %></td>
			<td><%=resultSet.getString("dSpecialization") %></td>
			<td><%=resultSet.getString("consultancyFees") %></td>
			<td><%=resultSet.getString("appDate") %></td>
			<td><%=resultSet.getString("AppTime") %></td>		
		</tr>
		            
	<%		
		}
		connection.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>
</div>
</div>
</div>

	<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />	

<br />
<br />
<br />	
<br />	
	<!-----start footer--->
		
				<div class="footer-bottom"><h3> Copyright &copy; All Rights Reserved by SLIIT
				
				</h3>
    
    </div>
			
		
	<!-----end footer--->

</body>

</html>
    