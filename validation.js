// Form Submit Function
function onFormSubmit() {
    // check validity
    if (hasSpecialChar()) {
        }
        if(mail_validate()){}
     
}



//if input field is empty then it turn into red color box.....
function requiredField(input) {
    if (input.value.length < 1) {
      //red border
        input.style.borderColor = "#e74c3c";
        }else {
      //black border
        input.style.borderColor = "black";
    }
        }
        
        
        function requiredField(textarea) {
    if (textarea.value.length < 1) {
      //red border
        textarea.style.borderColor = "#e74c3c";
        }else {
      //black border
        textarea.style.borderColor = "black";
    }
        }
        
        
        function hasSpecialChar(){
    let regex=/[@!#$%^&*()_+\-=\[\]{};':"\\|<>\/?]/;
    //var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var validstuname=document.myform.stuname.value.match(regex);
      var validmothername=document.myform.mname.value.match(regex);
      var validfathername=document.myform.fname.value.match(regex);
   //   var validmail=document.myform.email.value.match(mailformat);
    isValid = true;
    
   
   	 
    //student-name-validation-check
    if(validstuname){
		 isValid = false;
        document.getElementById("name-validate").classList.remove("hide");
		
		}
		else {
        isValid = true;
        if (!document.getElementById("name-validate").classList.contains("hide"))
        {
            document.getElementById("name-validate").classList.add("hide");
        }
   	 }
   	 //mother-name-validation-check
   	 if(validmothername){
		 isValid = false;
        document.getElementById("mother-name-validate").classList.remove("hide");
		
		}
		else {
        isValid = true;
        if (!document.getElementById("mother-name-validate").classList.contains("hide"))
        {
            document.getElementById("mother-name-validate").classList.add("hide");
        }
   	 }
   	 
   	 
   	 //father-name-validation-check
   	 if(validfathername){
		 isValid = false;
        document.getElementById("father-name-validate").classList.remove("hide");
		
		}
		else {
        isValid = true;
        if (!document.getElementById("father-name-validate").classList.contains("hide"))
        {
            document.getElementById("father-name-validate").classList.add("hide");
        }
   	 }
   return isValid;
    }
    
    
    
    function mail_validate(){
     let mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
 var validmail=document.myform.email.value.match(mailformat);
    isValid = true;
    if(!validmail){
		 isValid = false;
        document.getElementById("emailvalidationError").classList.remove("hide");
		
		}
		else {
        isValid = true;
        if (!document.getElementById("emailvalidationError").classList.contains("hide"))
        {
            document.getElementById("emailvalidationError").classList.add("hide");
        }
   	 }
   	 return isValid;
   	 }
   