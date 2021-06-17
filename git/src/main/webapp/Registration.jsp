<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Page</title>
	<link rel="stylesheet" type="text/css" href="loginpage.css">
	<script type="text/javascript" src="LoginPage.js"></script>
	<script type="text/javascript" src="ShowPassword.js"></script>
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
				<input type="Password" id="pass" name="pwd" placeholder="Enter a Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password contain must 8 Character, atlest 1 UpperCase, 1 LowerCase, 1 number and Special Character ">

				<p>Retype Password</p>
				<input type="password" name="rpwd" placeholder="Re-Enter a Password">

				<p class="show"  id="showhide"  name="showhide">Show Password</p>		
				<input type="checkbox" id="chk" name="chk" onclick="show()"> 

				<div id="ErrorBox"></div>
				<input type="submit" name="" value="Register">

				<br><br>
				<a href="loginpage.html">existing user, login !?</a>

			</form>

	</div>
</body>
</html>