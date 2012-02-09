// JavaScript Document





function patient_new()

{
     
	
     social_security = document.getElementById("social_security");
	 first_name = document.getElementById("first_name");
	 last_name = document.getElementById("last_name");
	 middle_initial = document.getElementById("middle_initial");
     date_of_birth = document.getElementById("date_of_birth");
	 
	 suffix = document.getElementById("suffix");
	 <!--var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;-->
	 var numExp = /^[0-9-]+$/;
	 var SSNExp = /^[0-9]{3}[\- ]?[0-9]{2}[\- ]?[0-9]{4}$/;
     var DateExp = /^[0-9]{2}[\- ]?[0-9a-zA-Z]{3}[\- ]?[0-9]{4}$/;
	 

	if(social_security.value == "")
    {
	 alert("Social Security is Required");
     social_security.focus();
     return false;  
    }
    
   if(social_security.value != "")
   {
     if(!social_security.value.match(SSNExp))
    {		
	  alert("You must enter a valid SSN (123-45-6789)");
	  social_security.value =""
      social_security.focus();
      return false;
	} 	
   }

  
     if(first_name.value == "")
    {
	 alert("Firstname is Required");
     first_name.focus();
	 return false;  
    }
	
	
	if(last_name.value == "")
    {
	 alert("Lastname is Required");
     last_name.focus();
	 return false;  
    }
	
	if(middle_initial.value == "")
    {
	 alert("Middle initial is Required");
     middle_initial.focus();
	 return false;  
    }
  
  
  
   if(date_of_birth.value == "")
    {
	 alert("Date of birth is Required");
     date_of_birth.focus();
	 return false;  
    }
   
   
   if(date_of_birth.value != "")
   {
     if(!date_of_birth.value.match(DateExp))
    {		
	  alert("You must enter a valid date (dd/mmm/yyyy)");
	  date_of_birth.value =""
      date_of_birth.focus();
      return false;
	} 	
   }
   
	
   if(suffix.value == "")
    {
	 alert("Suffix is Required");
     suffix.focus();
	 return false;  
    }
	
	
	
	
	return true;

	

}



//for signup form







