<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="loginpage.css">
	<script type="text/javascript" src="loginpage.js"></script>
	<script type="text/javascript" src="ShowPassword.js"></script>
</head>
<body>
<div class="box">
		<img src="avatar2.png" class="user">
		<h1>Login Here</h1>

			<form name="myform" onsubmit="return login()" action="test" method="post">
				<p>User Name</p>
				<input type="text" name="uname" placeholder="Enter a User Name"/>

				<p>Password</p>
				<input type="Password" name="pwd" id="pass" placeholder="Enter a Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password contain must 8 Character, atlest 1 UpperCase, 1 LowerCase, 1 number and Special Character "/>
				
				<p class="show"  id="showhide"  name="showhide">Show Password</p>		
				<input type="checkbox" id="chk" name="chk" onclick="show()">
				
				
				<div class="error" id="ErrorBox"></div>
				<input type="submit" name="" value="Login"/>

			
				<a href="Registration.jsp">Sign Up</a>
				
				
			</form>

	</div>
</body>
</html>