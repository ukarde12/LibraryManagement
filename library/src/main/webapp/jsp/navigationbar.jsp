<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="../js/index.js"></script>
		<h2 align="center">Library Management</h2>
		<button class="navbar-toggler navbar-dark" type="button"
			data-toggle="collapse" data-target="#main-navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="main-navigation"
			align="center">
			<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/userDashboard" onClick="location.href='/userDashboard'">My Dashboard</a></li>
				<li class="nav-item"><a class="nav-link" href="/index" onClick="location.href='/index'">Home</a></li>
				<li class="nav-item"><a class="nav-link"  href="/AboutUs" onClick="location.href='/AboutUs'">About Us</a></li>
				<li class="nav-item"><a class="nav-link" href="/contactUs" onClick="location.href='/contactUs'">Contact Us</a></li>
			</ul>
			<div class="overlay"></div>
		</div>
</body>
</html>