<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/style.css">
	<script src="/js/main.js"></script>
</head>
<body>
<div class="container">
		<h1>Login and Registration</h1>
		<div class="row">
		<div class="column">
			<h3>Register</h3>
			<form:form action="/register" method="POST" modelAttribute="user">
				<div class="form-group">
					<form:label path="firstName">First Name</form:label>
					<form:errors path="firstName" />
					<form:input class= "form-control" path="firstName"/>
				</div>
				<div class="form-group">
					<form:label path="lastName">Last Name</form:label>
					<form:errors path="lastName" />
					<form:input class= "form-control" path="lastName"/>
				</div>
				<div class="form-group">
					<form:label path="email">Email</form:label>
					<form:errors path="email" />
					<form:input type="email" class= "form-control" path="email"/>
				</div>
				<div class="form-group">
					<form:label path="password">Password</form:label>
					<form:errors path="password" />
					<form:input type="password" class= "form-control" path="password"/>
				</div>
				<div class="form-group">
					<form:label path="confirmPassword">Confirm Password</form:label>
					<form:errors path="confirmPassword" />
					<form:input type="password" class= "form-control" path="confirmPassword"/>
				</div>
				<input class="btn btn-danger" type="submit" value="submit"/>
			</form:form>
		</div>
		
		<div class="column">
			<h3>Login</h3>
			<p>${loginError}</p>
			<form action="/login" method="POST">
				<div class="form-group">
					<label>Email</label>
					<input class="form-control" type="email" name="loginemail">
				</div>
				<div class="form-group">
					<label>Password</label>
					<input class="form-control" type="password" name="loginpassword" >
				</div>
				<button class="btn btn-danger">Login</button>
			</form>
		</div>
		</div>
	</div>
</body>
</html>