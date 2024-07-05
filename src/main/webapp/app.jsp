<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<link rel="stylesheet" href="css/bootstrap.min.css"/>

<link rel="stylesheet" href="css/bootstrap-theme.min.css"/>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link href="css/login.css" type="text/css" rel="stylesheet" />
<link href="css/font-awesome.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Patient Appointment</title>
</head>

<body>

	<div class="topnav">
<center><h1  style="color:#ffffff;">HOSPITAL MANAGEMENT SYSTEM</h1></center>
</div>
<div align="right">
	<a href = "dash.jsp"><button name="filter"  type="submit" class="btn  btn-default btn-block">GO Dashbord</button></a>
<div class="container">
<div class="row">
<div class="col-md-12 col-xs-12">
<div class="page-header">
</div>
</div>
</div>
</div>
<br />
<div align="center" > <h2>
BOOK YOUR APPOINTMENT..!
</h2></div><br/>


<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4 col-xs-12">
<div class="panel panel-default">
<div class="panel-heading text-center">Appointment form</div>


  <div class="panel-body"><center>
  <small class="text-danger">All fields are required</small>
    <form action="AppServlet" method="post">


<table style="border:none;"  border="0" class="table table-responsive">
<tr>
<td colspan="2" style="padding:5px;">
  <input name="pid"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Patient ID">
</td>
<tr><td colspan="2" style="padding:5px;">
  <input name="pn"  required="required" style="border-radius:0px" type="text" class="form-control" placeholder="Patient Name">
</td></tr>

<td colspan="2" style="padding:5px;">
  <input name="age"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Age">
</td>
</tr>
<td colspan="2" style="padding:5px;">
  <input name="gn"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Gender">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="add"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Address">
</td>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="Ph"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Contect number">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="dise"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Disease">
</td>
</tr>

<tr>
<td colspan="2" style="padding:5px;">
  <input name="dn"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Doctor Name">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="sp"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Specialization">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="con"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Consultancy Fees">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="apD"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Appointment Date">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="apT"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Appointment Time">
</td>
</tr>
  <tr><td colspan="2" style="padding:5px;"><center><button name="filter"  type="submit" class="btn  btn-default btn-block">Submit</button></center></td></tr>

</table>
</form>
</center>


  </div>
  <div class="panel-footer text-center">Press Submit button after Appointment completing</div>
</div>

</div>
</div>
</div>

<!-----start footer--->
		<footer>
				<div class="footer-bottom"> 
     <h3><b>Copyright &copy; All Rights Reserved by SLIIT </b></h3>
    </div>
			
		</footer>
	<!-----end footer--->
</body>
</html>
