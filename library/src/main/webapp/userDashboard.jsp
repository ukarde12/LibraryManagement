<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">

<title>Library | User Dashboard</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="js/index.js"></script>

	<nav class="navbar navbar-expand-md"> 
	<jsp:include page="jsp/navigationbar.jsp"></jsp:include> </nav>
	
	<h1> Hello my friend </h1>
	
	
	<div class="container features">
		<jsp:include page="jsp/containertabs.jsp"></jsp:include>
	</div>

	<footer class="page-footer">
		<jsp:include page="jsp/footer.jsp"></jsp:include>
	</footer>
</body>
</html>