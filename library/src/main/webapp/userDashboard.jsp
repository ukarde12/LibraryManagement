<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">

<title>Library | User Dashboard</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="js/index.js"></script>

	<nav class="navbar navbar-expand-md"> <jsp:include
		page="jsp/navigationbar.jsp"></jsp:include> </nav>

	<header class="page-header header conatainer-fluid"> 
	 <c:if test="${pageContext.request.userPrincipal.name != null}">
	<form id="logoutForm" method="POST" action="/logout">
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
	<c:set var="username" value="${pageContext.request.userPrincipal.name}" scope="page"/>
	<%! String var;
	char c;
	%>
	<%  var = (String)pageContext.getAttribute("username");
		String finalUsername = "";
		for(int i=0;i<var.length();i++){
			 c= var.charAt(i);
			if(c == '@'){
				break;
			}
			else{
				
				finalUsername = finalUsername + c;
			}
		}
	%>
	<div style="display:flex; flex-direction: row; justify-content: space-between; align-items: right" >
	<h2>Welcome <%out.print(finalUsername +','); %></h2>
	<div class="form-logout">
	  <div class="form-group">
		<button type="submit" id="logoutBtn"class="btn btn-primary btn-block" onclick="document.forms['logoutForm'].submit()">Logout</button>
	</div>
	</div>
	</div>
	</c:if>  
	</header>


	<div class="container features">
		<jsp:include page="jsp/containertabs.jsp"></jsp:include>
	</div>

	<footer class="page-footer"> <jsp:include
		page="jsp/footer.jsp"></jsp:include> </footer>
</body>
</html>