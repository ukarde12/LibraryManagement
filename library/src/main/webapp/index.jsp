<html>
<title>Library Management</title>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
		<div class="overlay"></div>
		<div class="description">
			<h1>Welcome to our Library</h1>
			<p>Hello!!! You will get various collections of books. You are
				just one <b>click</b> away from your favourite books. So click on login &
				enjoy reading.</p>
			<button class="btn btn-outline-secondary btn-lg">Login</button>
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
