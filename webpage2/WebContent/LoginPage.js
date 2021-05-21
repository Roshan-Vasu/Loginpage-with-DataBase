
//Login Function 
		
	function login(){
    
		var name =document.forms["myform"]["uname"].value;
		var pwd = document.forms["myform"]["pwd"].value;

		//check name Empty or not
		if(name == null || name ==""){
			document.getElementById("ErrorBox").innerHTML = "Enter the UserName";
			return false;
		}

		//check password Empty or not
		if(pwd ==null || pwd ==""){
			document.getElementById("ErrorBox").innerHTML = "Enter a Password";
			return false;
		}
		
		if(pwd>=8 && pwd<=12){
			document.getElementById("ErrorBox").innerHTML ="Enter a Password 8 to 12 Character";
		}

		//check username password is not null and login successfully 
		if(name != '' && pwd !=''){
			alert("Login Successfully!!");
		}
}


//Register Function

	function register(){
		var name1 = document.forms["myform2"]["uname"].value;
		var email = document.forms["myform2"]["email"].value;
		var pass = document.forms["myform2"]["pwd"].value;
		var rpass = document.forms["myform2"]["rpwd"].value;

		//check name Empty or not
		if(name1 == null || name1 ==""){
			document.getElementById("ErrorBox").innerHTML =
		    "Enter the UserName";
			return false;
		}

		if(email == null || email ==""){
			document.getElementById("ErrorBox").innerHTML=
			"Enter the Mail Id";
		}

		//check password Empty or not
		if(pass ==null || pass ==""){
			document.getElementById("ErrorBox").innerHTML = 
			"Enter a Password";
			return false;
		}

		//check Re-password Empty or not
		if(rpass ==null || rpass ==""){
			document.getElementById("ErrorBox").innerHTML = 
			"Re-Enter a Password";
			return false;
		}

		//check password and re-entery password are same or not!!
		if(pass !=rpass){
			document.getElementById("ErrorBox").innerHTML=
			"Password dosen't match";
			return false;
		}

		//check all condition are not empty and show output
		 if (name1 != '' && pass != '' && rpass !='' && email != '' && pass == rpass){


          alert("Register successfull");
      }
	}