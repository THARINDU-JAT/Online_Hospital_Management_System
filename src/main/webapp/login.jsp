<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="css/bootstrap.min.css"/>

<link rel="stylesheet" href="css/bootstrap-theme.min.css"/>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" type="text/css" rel="stylesheet" />
<link href="css/font-awesome.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<title>Patient Login</title>
</head>

<body>
	<div class="topnav">
<center><h1  style="color:#ffffff;">HOSPITAL MANAGEMENT SYSTEM</h1></center>
</div>
<div align="right">
	<a href = "index.jsp"><button name="filter"  type="submit" class="btn  btn-default btn-block">GO HOME</button></a>
<div class="container">
<div class="row">
<div class="col-md-12">

</div>
</div>
</div>
<br />


<div class="container">
<div class="row">
<div class="col-md-4 col-md-push-2  col-xs-12 ">

	<form action="LoginServlet" method="post">
	<center>
	<img id="mimg" src="images/mimg.png" class="img-responsive" />
	<br>
	<div class="input-group input-group-lg"><span class="input-group-addon"><img style="width:30px" src="images/user.png" /></span>
	  <input type="text" name="sadmun" required="required" style=" height:52px; font-size:20px" id="field"  class="form-control " placeholder="Username">
	</div>
	<br />
	<div class="input-group input-group-lg"><span class="input-group-addon"><img style="width:30px" src="images/lock.png" /></span>
	  <input type="password"  name="sadmpw" required="required" style=" font-size:20px; height:52px;" class="form-control " placeholder="Password">
	</div>
	<br />
	<div align="center">
	<button name="filter"  type="submit" class="btn  btn-default btn-block">LOGIN</button>
	<br>
	
	</div>
	</form>

	</div>
	<div style="font-size :18px; border-style: none  none none dotted; border-width: 2px; border-color: rgba(0, 0, 0, 0.2); height: 390px;text-align: justify;" class="col-md-4 col-md-push-2  col-xs-12 "><br><h4>This the main system login form for to access the system. if you are not a memeber of systme create your login access with using </h4><a target="_blank" style="font-colour="Blue""; href = "reg.jsp"><button name="filter"  type="submit" class="btn  btn-default btn-block">Register Here</button></a>
<br>
	<br>Enter Login details that provided by Hospital Administartion. </div>
	</div>

	<br><br>

</div>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

	<!-----start footer--->
		<footer>
				<div class="footer-bottom"> 
     <h3><b>Copyright &copy; All Rights Reserved by SLIIT </b></h3>
    </div>
			
		</footer>
	<!-----end footer--->

	</body>
	
	
	</html>
