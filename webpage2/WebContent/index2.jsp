<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
	<link rel="stylesheet" type="text/css" href="LoginPage.css">
	<script type="text/javascript" src="LoginPage.js"></script>
</head>
<body>
<div class="box">
		<img src="avatar2.png" class="user">
		<h1>Login Here</h1>

			<form name="myform" onsubmit="return login()" action="test" method="post">
				<p>User Name</p>
				<input type="text" name="uname" placeholder="Enter a User Name">

				<p>Password</p>
				<input type="password" name="pwd" placeholder="Enter a Password">
				
				
				 <div id="ErrorBox"></div>
				<input type="submit" name="" value="Login">

				<br><br>
				<a href="Registration.jsp">Register for a new account</a>

			</form>

	</div>
</body>
</html>