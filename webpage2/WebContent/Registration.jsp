<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registration Page</title>
	<link rel="stylesheet" type="text/css" href="Loginpage.css">
	<script type="text/javascript" src="LoginPage.js"></script>
</head>
<body>

	<div class="box">
		<img src="avatar2.png" class="user">
		<h1>Register Here</h1>

			<form name="myform2" onsubmit="return register()" action="register" method="post">
				<p>User Name</p>
				<input type="text" name="uname" placeholder="Enter a User Name">

				<p>Email Id</p>
				<input type="Email" name="email" placeholder="Enter a Email Id here">

				<p>Password</p>
				<input type="Password" name="pwd" placeholder="Enter a Password">

				<p>Retype Password</p>
				<input type="password" name="rpwd" placeholder="Re-Enter a Password">

				<div id="ErrorBox"></div>
				<input type="submit" name="" value="Register">

				<br><br>
				<a href="index2.jsp">existing user, login !?</a>

			</form>

	</div>

</body>
</html>