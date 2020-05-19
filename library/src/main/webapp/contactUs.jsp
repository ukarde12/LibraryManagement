<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Library | Contact Us</title>
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
	<form class="form-container">
	<h1>Contact US</h1>
		<div class="form-row">
		<div class="form-group col-md-6">
			<label for="firstname">First Name:</label> <input type="text"
				class="form-control" id="text" placeholder="Enter first name"
				name="firstname">
		</div>
		<div class="form-group col-md-6">
			<label for="lastname">Last Name:</label> <input type="text"
				class="form-control" id="text" placeholder="Enter last name"
				name="lastname">
		</div>
		</div>
		<div class="form-group">
			<label for="email">Email Address:</label> <input type="email"
				class="form-control" id="text" placeholder="Enter email"
				name="email">
		</div>
		<div class="form-group">
			<label for="feedback">Your Feedback:</label> 
			<textarea class="form-control" id="feedback" placeholder="Enter feedback" name="text" rows="3"></textarea>
		</div>
		<div class="form-group">
			<label for="contact">Contact no:</label> <input type="number"
				class="form-control" id="contactno" placeholder="Enter contact number"
				name="contact number">
		</div>
		<div class="form-group">
		<button type="submit" class="btn btn-primary btn-block">Submit</button>
		</div>
	</form>
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