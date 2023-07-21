<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css1.css">
<link rel="stylesheet" type="text/css" href="validation.css">
<script src=validation.js>

</script>
<style>
input[type=text], input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
label.validation-error{
    color:   red;
    margin-left: 5px;
}
.hide{
    display:none;
}
#note{
color:red;

}
button{
font-size:20px;
width:100px;
margin:10px;	 
padding:10px;
background:rgb(100,100,100);
color:white;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body >

<div class="top-left-text">
								<h3>
									<br><font color="red">&nbsp<b><u>ICET CODE : MTCA</b></u></font>
								</h3>
							</div>
	<div class="container">

		<img src="Logo1.jpg" class="top-left-image" alt="Image 1"> <img
			src="Logo2.jpg" class="top-right-image" alt="Image 2">

		<div class="img3">
			<img src="p2.png"> <label class="label1" for="file">Choose
				Image</label> <input type="file" id="file" name="myfile"
				onchange="loadImage(event)"> <img id="output" />
		</div>

		<div class="h1">
			<h2 align="center" color="red">MOTHER THERESA INSTITUTE OF
				COMPUTER APPLICATIONS</h2>
		</div>
		<h3 align="center">
			(Affiliated by AICTE, Affiliated to S. V. University, Tirupati) <br>
			Melumoi(Post), <b> PALAMANER - 517408</b>, Chittoor Dist., A.P. <br>
			<a href="www.mtimca.edu.in">www.mtimca.edu.in </a>,Email : <a
				href="mailto:mtimca@gmail.com">mtimca@gmail.com</a> <br> PHONE
			: <a href="tel:08579-268575">08579-268575</a>
		</h3>
		<div class="h2">
			<h2 align="center">APPLICATION FORM</h2>
		</div>
		
		
		
		
		
		<p id="note">note: * indicates mandatory fields</p>
		<form name="myform" action="education-details.jsp" method="post" onsubmit="event.preventDefault();onFormSubmit();" autocomplete="off">
			
		
			<table class="table2" id="group" >
			<tr>
					<td>
						<h4>
							Collge Roll No:<sup style="color:red">* </sup><br>(Office Use only):
						</h4>
					</td>
							<td><input type="text" name="rollno" maxlength="7" 
							style="font-size: 16px;  width: 30%; padding: 10px; display: block;  width: 30%; padding: 12px 20px; border: 2px solid black;"
							onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="requiredField(this)" required></input>
	
					</td>
				</tr>

				<tr>

					<td>
						<h4>
							1.NAME OF THE CANDIDATE :<sup style="color:red">* </sup><br>(Capitals as per SSC.)
						</h4>
					</td>

						<td>
						<div>	
								<!--Validation Error-->
						<label class="validation-error hide" id="name-validate">only alphabets and '.' and whitespace's are allowed</label>
								 
							
								
								
								<input type="text" name="stuname" id="stuname" maxlength="30" 
									title="Only Letters" onkeydown="return alphaOnly(event);"
									onblur="requiredField(this)|| hasSpecialChar(this)" onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
								  
									style="text-transform: uppercase;font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 90%;
  padding: 10px;
  display:block; "  required /></div>

							
						</td>
					

				</tr>

				<tr>

					<td>
						<h4>2.Gender<sup style="color:red">* </sup></h4>
					</td>

					<td onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}">:
					<input type="Radio" id="male" name="gender" value="Male">
						Male <input type="Radio" id="Female" name="gender" value="Female">
						Female
					</td>


				</tr>



				<tr>

					<td>

						<h4>3.Aadhar No:<sup style="color:red">* </sup></h4>

					</td>

					<td>
						<div class="adharnum-1">
							<input type="text" name="stuaadharno" maxlength="12" 
								onblur="requiredField(this)" onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
								onkeypress='return event.charCode >= 48 && event.charCode <= 57'  required
								style="font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 90%;
  padding: 10px;
  display:block; "></input>

						</div>
					</td>

				</tr>

				<tr>

					<td>

						<h4>4. Name of the mother :<sup style="color:red">* </sup></h4>
					</td>

					<td><div>	
								<!--Validation Error-->
						<label class="validation-error hide" id="mother-name-validate">only alphabets and '.' and whitespace's are allowed</label>
								 
							
								
								
								<input type="text"  name="mname" id="mname" maxlength="30" 
									title="Only Letters" 
									onblur="requiredField(this)|| hasSpecialChar(this)"
										onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
									style="font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 90%;
  padding: 10px;
  display:block; "  required /></div>
</td>

				</tr>

				<tr>

					<td>
						<div class="adharnum-2">
							<h4>5.Mother Aadhar No:<sup style="color:red">* </sup></h4>
						</div>
					</td>

					<td>
								 
					<input 
						style="font-size: 16px; border-right: none; border-left: none; border-top: none; border-bottom: 2px solid black;  width: 90%; padding: 10px; display: block;"
						type="text" name="maadharno" maxlength="12"
						 onblur="requiredField(this)|| hasSpecialChar(this)"
							 onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}" 
						 required>
						 </input>
					</td>
				</tr>

				<td>
					<h4>6. Name of the Father:<sup style="color:red">* </sup></h4>
				</td>

				<td>
				<label class="validation-error hide" id="father-name-validate">only alphabets and '.' and whitespace's are allowed</label>
							
				<input type="text" name="fathername" id="fname" maxlength="30"
					title="Only Letters" onkeydown="return alphaOnly(event);"
					onblur="requiredField(this)||hasSpecialChar(this)"
					onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
					onfocus="if (this.value == '') {this.value = '';}"
					style="font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 90%;
  padding: 10px;
  display:block; "  required/></td>
				</tr>

				<tr>

					<td>
						<div class="adharnum-3">
							<h4>7.Father Aadhar No:<sup style="color:red">* </sup></h4>
						</div>
					</td>

					<td><input 
						style="font-size: 16px; border-right: none; border-left: none; border-top: none; border-bottom: 2px solid black;  width: 90%; padding: 10px; display: block;"
						type="text" name="faadharno" maxlength="12"
						onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="requiredField(this)" 
						onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}">
						</input>
				</tr>

				<tr>

					<td>
						<h4>
							8.Occupation of the parent:<sup style="color:red">* </sup>
						</h4>
					</td>

					<td><input type="text" name="occupation" maxlength="30" 
						title="Only Letters" onkeydown="return alphaOnly(event);"
						onblur="requiredField(this)"
						onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
						onfocus="if (this.value == '') {this.value = '';}" style="font-size: 16px;
							border-right:none;
						border-left:none;
						border-top:none;
						border-bottom:2px solid black;
						 background:lightblue;
						  width: 90%;
						  padding: 10px;
						  display:block; "  required></td>

					<td>
						<h4>Income:<sup style="color:red">* </sup></h4>
					</td>

					<td><select name="income" > 
					<option value="select">select</option>
							<option value="below 1 lakh">below 1 lakh</option>
							<option value="below 2 lakhs">below 2 lakhs</option>
							<option value="below 5 lakhs">below 5 lakhs</option>
							<option value="above 5 lakhs">above 5 lakhs</option>
					</select></td>

				</tr>



				<div>
					<tr>

						<td>
							<h4>9. Date of Birth(DD/MM/YYYY) :<sup style="color:red">* </sup></h4>
						</td>

						<td><input type="date" min="1995-01-01" max="2003-01-01" name="dob" 
						onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}">
						</td>

					</tr>
				</div>

				<tr>
					<td>
						<h4>10. Blood group<sup style="color:red">* </sup></h4>
					</td>
					<td>
						<!--DropDown  A+, A-, B+, B-, O+, O-, AB+, AB- Options--> <select
						name="bloodgroup">
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
					</select>

					</td>
				</tr>

				<tr>
					<td>
						<h4>11. Nationality:<sup style="color:red">* </sup></h4>
					</td>
					<td><input type="text" name="nationality" maxlength="20" required
					title="Only Letters" onkeydown="return alphaOnly(event);"
						onblur="requiredField(this)"
						onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
						onfocus="if (this.value == '') {this.value = '';}" style="font-size: 16px;
							border-right:none;
						border-left:none;
						border-top:none;
						border-bottom:2px solid black;
						 background:lightblue;
						  width: 90%;
						  padding: 10px;
						  display:block; " ></td>
						
						
						
					<td><h4 > Religion:<sup style="color:red" >* </sup></h4></td>
					<td><input style="font-size:16px;
							border-right:none;
						border-left:none;
						border-top:none;
						border-bottom:2px solid black;
						 background:lightblue;
						  width: 90%;
						  padding: 10px;
						  display:block;"  type="text" name="religion" maxlength="20" required
					title="Only Letters" onkeydown="return alphaOnly(event);"
						onblur="requiredField(this)" 
						onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
						onfocus="if (this.value == '') {this.value = '';}"></td>
				</tr>


				<tr>

					<td><h4>11.Category of Res:<sup style="color:red">* </sup></h4></td>
					<td>
					<script src="cor.js"></script>
					
					<select class="caste" name="cor" id="subject">
							<option value="" selected="selected">Select Category</option>
					</select></td>
					<td>
						<h4>Caste:<sup style="color:red">* </sup></h4>
					</td>
					<td><select name="caste" id="topic">
							<option value="" selected="selected">Caste
					</option>
					</select></td>
				</tr>


				<tr>
					<td>
						<h4>13.Address for communication<sup style="color:red">* </sup></h4>
					</td>
					<td><textarea class="txt"  rows="3" cols="30" maxlength="60" name="address"
							onblur="requiredField(this)"
							onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
							required></textarea>
						<hr color="black"></td>
				</tr>


				<tr>
					<td>
						<div class="num">
							<h4>15.Mobile no. (+91)</h4>
						</div>
					</td>
					<td>
						<div class="num">
							Mobile 1:<sup style="color:red">* </sup> <input 
						type="text" name="mobileno1" maxlength="10"
						onkeypress='return event.charCode >= 48 && event.charCode <= 57' onblur="requiredField(this)"
							onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}"
							style="font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 90%;
  padding: 10px;
  display:block; " required>
						</div>

					</td>


					<td><div class="num">
							Mobile 2: <input
						type="text" name="mobileno2" maxlength="10" placeholder="optional field"
						onkeypress='return event.charCode >= 48 && event.charCode <= 57' style="font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 90%;
  padding: 10px;
  display:block; ">
						</div></td>
				</tr>
				
				<tr>
					<td>
						<h4>16.Email Id<sup style="color:red">* </sup></h4>
					</td>
					<td>
					 <div>
                       
                        <!--Validation Error-->
                        <label class="validation-error hide" id="emailvalidationError">invalid email</label>
                        <!--Email-->
                        <input type="email" name="userName" id="email" onblur="requiredField(this)||mail_validate()"
                        onkeyup="if(this.textLength!=0){subnewtopic.disabled=false} else{subnewtopic.disabled=true}">
                    </div>
					</td>
				</tr>

			</table><br>
			<button type="submit"  name="subnewtopic" id="subnewtopic"disabled="disabled">Next</button>
			
</form>
			
	</div>
	
	
	
	<script src="SCRIPT/javaScript2.js" type="text/javascript"></script>
	
</body>
</html>