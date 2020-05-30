<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Library | Login</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="js/index.js"></script>
	<nav class="navbar navbar-expand-md"> <jsp:include
		page="jsp/navigationbar.jsp"></jsp:include> </nav>

	<header class="page-header header conatainer-fluid">
	 <section class="container-fluid"> 
	 <section class="row justify-content-center"> 
	 <section class="col-12 col-sm-6 col-md-3">
	<form:form class="form-container" method="POST" action="/login">
	<h1>LOGIN</h1>
	<div class="form-error ${error != null ? 'has-error':''}">
		<div class="form-group ">
			<label for="email">Email:</label> <input type="email"
				class="form-control" id="email" placeholder="Enter email"
				name="email" required>
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password"
				class="form-control" id="password" placeholder="Enter password"
				name="password" required>
		</div>
		<span>${error}</span>
		</div>
		<div class="form-group">
		<button type="submit" class="btn btn-primary btn-block">Login</button>
		</div>
		Don't have an account? <a onclick="location.href='/registration'" href="/registration"> Sign Up</a>
			<div class="d-flex justify-content-center links">
            <a href="#">Forgot your password?</a>
            </div>
	</form:form>
	</section> 
	</section> 
	</section> 
	</header>
	<div class="container features">
		<jsp:include page="jsp/containertabs.jsp"></jsp:include>
	</div>

	<footer class="page-footer"> <jsp:include
		page="jsp/footer.jsp"></jsp:include> </footer>
</body>
</html>