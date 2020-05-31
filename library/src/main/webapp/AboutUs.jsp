<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library | About Us</title>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="js/index.js"></script>

	<nav class="navbar navbar-expand-md">
		<jsp:include page="jsp/navigationbar.jsp"></jsp:include>
	</nav>
	
	<header class="page-header header conatainer-fluid">
	<form id="logoutForm" method="POST" action="/logout">
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
	
		<div class="overlay"></div>
		<div class="descriptionAboutus"> 
		<div class ="logoutText" style="display:flex; flex-direction: row; justify-content: space-between; align-items: right">
		<h1></h1>
		<div class="form-logout">
	  	<div class="form-group">
		<button type="submit" id="logoutBtn"class="btn btn-primary btn-block" onclick="document.forms['logoutForm'].submit()">Logout</button>
	</div>
	</div>
	</div>
			<h1>About Our Library</h1>
			<p>Hello!!! Welcome to our Library. We are happy that you are interested in our book collection.
			 Welcome to our Library. We are happy that you are interested in our book collection.
			 Welcome to our Library. We are happy that you are interested in our book collection.
			  Welcome to our Library. We are happy that you are interested in our book collection.
			   Welcome to our Library. We are happy that you are interested in our book collection.
			</p>
		</div>
		
	</header>
	
	<div class="container features">
		<jsp:include page="jsp/containertabs.jsp"></jsp:include>
	</div>
	
	<footer class="page-footer">
		<jsp:include page="jsp/footer.jsp"></jsp:include>
	</footer>

</body>
</html>