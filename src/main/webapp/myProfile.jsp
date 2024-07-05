<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>

<head>

<title>MY Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrap-theme.min.css"/>

<link rel="stylesheet" type="text/css" href="css/myApp.css"/>
<style type="text/css">
  .active a{
    background-color: #c6c6c6;
}
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>

</style>
</head>
<body>
	<div class="topnav">
<center><h1  style="color:#ffffff;">HOSPITAL MANAGEMENT SYSTEM</h1></center>
</div>
<div align="right">
	<a href = "dash.jsp"><button name="filter"  type="submit" class="btn  btn-default btn-block">Go Dashboard</button></a>
	<!-- start of the header -->

 
</div>

<table style="background-color:#FFF; font-size:15px; " class="table table-striped table-hover table-bordered">

<%
    String nic = request.getParameter("nic");
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
<div style="border-radius:10px; padding:20px;" class="container alert-success">
<div class="row">
<div class="col-md-12 ">
<h2 style="font-family:calibri;" class="text-center">My Profile</h2></div>
</div>
</div>


<br/>

<table style="background-color:#FFF; font-size:12px; " class="table table-striped table-hover table-bordered">
<thead>
<tr>

<th><strong>NIC Number</strong></th>
<th><strong>User Name</strong></th>
<th><strong>Email</strong></th>
<th><strong>Gender</strong></th>
<th><strong>Password</strong></th>
<th><strong>Confirm Password</strong></th>
<th><strong>Contact Number</strong></th>
<th><strong>District</strong></th>
<th><strong>Address</strong></th>
<th><strong>country</strong></th>
<th><strong>Register Date</strong></th>
<th><strong><center>Update</center></strong></th>
<th><strong><center>Delete</center></strong></th>
</tr>
</thead>
   <%
	try{	
		connection = DriverManager.getConnection(url, userName, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM  patient_info";

		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
	
	
		<tr bgcolor="#DEB887">
			
			<td><%=resultSet.getString("nic") %></td>
			<td><%=resultSet.getString("userName") %></td>
			<td><%=resultSet.getString("email") %></td>
			<td><%=resultSet.getString("gender") %></td>
			<td><%=resultSet.getString("password") %></td>
			<td><%=resultSet.getString("CPassword") %></td>
			<td><%=resultSet.getString("phone") %></td>
			<td><%=resultSet.getString("district") %></td>
			<td><%=resultSet.getString("Address") %></td>
			<td><%=resultSet.getString("country") %></td>
			<td><%=resultSet.getString("regDate") %></td>	
			
			<td align="center"><button  name="filter"  type="delete" class="btn  btn-default btn-block"><b>Update</b></button></td>

<td align="center"><a href = 'delete.jsp?nic=<%=resultSet.getString("nic") %>'><button name="filter"  type="delete" class="btn  btn-default btn-block"><b>Delete</b></button></a></td>	
		</tr>




	<%		
		}
		connection.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

</table>

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
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<!-----start footer--->
		<footer>
				<div class="footer-bottom"> 
     <h3><b>Copyright &copy; All Rights Reserved by SLIIT </b></h3>
    </div>
			
		</footer>
	<!-----end footer--->
</body>
</html>
