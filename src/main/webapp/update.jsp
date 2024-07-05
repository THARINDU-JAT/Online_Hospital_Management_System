<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link href="css/login.css" type="text/css" rel="stylesheet" />
<link href="css/font-awesome.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Patient Profile</title>
</head>

<body>

<div class="container">
<div class="row">
<div class="col-md-12 col-xs-12">
<div class="page-header">
<h1 class="text-center ">Hospital Management System</h1></div>
</div>
</div>
</div>
<br />
<div align="center" > <h2>
Update your profile..!</h2></div><br>

<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4 col-xs-12">
<div class="panel panel-default">
<div class="panel-heading text-center">Up Date Patient Details</div>


  <div class="panel-body"><center>
  <small class="text-danger">All fields are required</small>
    <form action="" method="post">


<table style="border:none;"  border="0" class="table table-responsive">
<tr>
<td colspan="2" style="padding:5px;">
  <input name="nic"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="NIC number">
</td>
<tr><td colspan="2" style="padding:5px;">
  <input name="un"  required="required" style="border-radius:0px" type="text" class="form-control" placeholder="User Name">
</td></tr>

<td colspan="2" style="padding:5px;">
  <input name="uemail"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Email">
</td>
</tr>
<td colspan="2" style="padding:5px;">
  <input name="pws"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Password">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="cpws"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Confirm Password">
</td>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="cn"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Contact Number">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="dis"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="District">
</td>
</tr>

<tr>
<td colspan="2" style="padding:5px;">
  <input name="gn"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Gender">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="add"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Address">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="co"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="country">
</td>
</tr>
<tr>
<td colspan="2" style="padding:5px;">
  <input name="red"   required="required" style="border-radius:0px; padding:10px;" type="text" class="form-control" placeholder="Register Date">
</td>
</tr>
  <tr><td align="center"><button name="filter"  type="submit" class="btn  btn-default btn-block">UPDATE</button></td></tr>

</table>
</center></form>


  </div>
  <div class="panel-footer text-center">Press Update button after completing</div>
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
