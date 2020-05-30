<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Library | Registration</title>
</head>

<body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="js/index.js"></script>

	<nav class="navbar navbar-expand-md"> <jsp:include
		page="jsp/navigationbar.jsp"></jsp:include> </nav>
		
		<header class="page-header header conatainer-fluid">
	 <section class="container-fluid"> 
	 <section class="row justify-content-center"> 
	 <section class="col-12 col-sm-6 col-md-3">
	
	<form:form class="form-container" modelAttribute="userForm" method="POST">
	<h1>Registration</h1>
	
		<div class="form-row">
		<spring:bind path="firstname">
		<div class="form-group col-md-6">
			<label for="firstname">First Name:</label> 
			<input type="text" class="form-control" id="text" placeholder="Enter first name"
				name="firstname" required>
				<form:errors path="firstname" cssStyle="color: #ff0000;"></form:errors>
		</div>
		</spring:bind>
		<spring:bind path="lastname">
		<div class="form-group col-md-6">
			<label for="lastname">Last Name:</label> <input type="text"
				class="form-control" id="text" placeholder="Enter last name"
				name="lastname" required>
				<form:errors path="lastname" cssStyle="color: #ff0000;"></form:errors>
		</div>
		</spring:bind>
		</div>
		<spring:bind path="email">
		<div class="form-group">
			<label for="email">Email Address:</label> <input type="email"
				class="form-control" id="text" placeholder="Enter email"
				name="email" required>
				<form:errors path="email" cssStyle="color: #ff0000;"></form:errors>
		</div>
		</spring:bind>
		<spring:bind path="password">
		<div class="form-group">
			<label for="password">Password:</label> <input type="password"
				class="form-control" id="password" placeholder="Enter password"
				name="password" required>
				<form:errors path="password" cssStyle="color: #ff0000;"></form:errors>
		</div>
		</spring:bind>
		<spring:bind path="confirmpassword">
		<div class="form-group">
			<label for="confirmpassword">Confirm Password:</label> <input type="password"
				class="form-control" id="confirmpassword" placeholder="Enter confirm password"
				name="confirmpassword" required>
				<form:errors path="confirmpassword" cssStyle="color: #ff0000;"></form:errors>
		</div>
		</spring:bind>
		<spring:bind path="contactno">
		<div class="form-group">
			<label for="contactno">Contact no:</label> <input type="text"
				class="form-control" id="contactno" placeholder="Enter contact number"
				name="contactno" required>
			<form:errors path="contactno" cssStyle="color: #ff0000;"></form:errors>
		</div>
		</spring:bind>
		<div class="form-group">
		<button type="submit" class="btn btn-primary btn-block">Register</button>
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