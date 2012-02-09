// JavaScript Document





function login()

{

	 var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;

	  email = document.getElementById("username");

	  password=document.getElementById('password');

	if(email.value == "Email ID")

	{

	 alert("Email ID is Required");

     email.focus();

     return false;  

  }

  

 if(!email.value.match(emailExp))

	{		

		alert("Invalid Email Format");

		email.focus();

		return false;

	}
   
	if(password.value == "Password" || password.value == "" )

	{

	 alert("Password is Required");

     password.focus();

     return false;  

  }

	

	return true;

	

}



//for signup form







