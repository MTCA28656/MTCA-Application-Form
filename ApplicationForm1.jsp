<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Form</title>
<link rel="stylesheet" type="text/css" href="app.css">
<style>
.container{
border: 2px solid black;
margin-top:7%;
margin-bottom:7%;
margin-left:3%;
margin-right:3%;

  padding: 20px;
}
body,input,select{
background-color:lightblue;

}
input,select{
font-size: 16px;
border-right:none;
border-left:none;
border-top:none;
border-bottom:2px solid black;
 background:lightblue;
  width: 100%;
  padding: 10px;
  display
  }
input,select{

border-left:none;
border-right:none;
border-top:none;
margin:10%;
}
.table{
margin-left:25%;
}
h2{
text-align:center;
}

</style>

<script type="text/javascript">
     
document.addEventListener('focusout', function(event){
    marksPresentagae()
});
 
function marksPresentagae() {

  let totalMarksInput = document.getElementById("totalMarks");
  let obtainedMarksInput = document.getElementById("obtainedMarks");
  let marksPercentageMarksInput = document.getElementById("marksPercentage");

  totalMarks = totalMarksInput.value
  obtainedMarks= obtainedMarksInput.value
    
  if(totalMarks>0 && obtainedMarks>0&& obtainedMarks<=totalMarks){
     let tp = (obtainedMarks/totalMarks)*100;
     marksPercentageMarksInput.value=tp.toFixed(2);
  }else{
    marksPercentageMarksInput.value=""
    }
 }
</script>



</head>
<body>
<form name="education">
	<div class="container">

		<h1 align="center">Educational Qualifications:</h1>
		<table class="table">
			<tr>
				<td><h2 align="center">SSC :</h2></td>
			</tr>
			<tr>
				<td><h3>Board/University</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Group</h3></td>
				<td><b>:</b></td>
				<td><select name="Group">
						<option value="select">select</option>
						<option value="General">General</option>
						<option value="others">other</option>

				</select></td>
			</tr>
			<tr>
				<td><h3>Medium</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Marks</h3></td>
				</tr>
				<tr>
				<td><h4>Total Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text" class="form-control" placeholder="Total Marks" id="totalMarks"></td>
				</tr>
				<tr>
				<td><h4>Secured Marks</h4></td>
				<td><b>:</b></td>
				<td>  <input type="text" class="form-control" placeholder="Obtained Markes" id="obtainedMarks"></td>
				</tr>
				<tr>
				<td><h4>Percentage</h4></td>
				<td><b>:</b></td>
				<td>  <input type="text" class="form-control" placeholder="click here for Percentage" id="marksPercentage" disabled></td>
			</tr>
			<tr>
				<td><h3>Grade/Class</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Month and Year of Passing</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h2>Intermediate/HSC :</h2></td>
			</tr>
			<tr>
				<td><h3>Board/University</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Group</h3></td>
				<td><b>:</b></td>
				
				<td><select name="group">
						<option value="select">select</option>
						<option value="MPC">MPC</option>
						<option value="BiPC">BiPC</option>
						<option value="MBiPC">MBiPC</option>
						<option value="MEC">MEC</option>
						<option value="HEC">HEC</option>
						<option value="CEC">CEC</option>
						<option value="others">other</option>

				</select></td>
			</tr>
			<tr>
				<td><h3>Medium</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Marks</h3></td>
				</tr>
				<tr>
				<td><h4>Total Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
				</tr>
				<tr>
				<td><h4>Secured Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
				</tr>
				<tr>
				<td><h4>Percentage</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Grade/Class</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Month and Year of Passing</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Graduation :</h3></td>
			</tr>
			<tr>
			<td><h3>Board/University</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Group</h3></td>
				<td><b>:</b></td>
				<td><select name="groups">
						<option value="select">select</option>
						<option value="BSC">BSC(MPCS)</option>
						<option value="BSC">BSC(MECS)</option>
						<option value="BSC">BSC(MSCS)</option>
						<option value="BCA">BCA</option>
						<option value="BBA">BBA</option>
						<option value="BCom">BCom</option>
						<option value="others">other</option>
				</select></td>
			</tr>
			<tr>
				<td><h3>Medium</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Marks</h3></td>
				</tr>
				<tr>
				<td><h4>Total Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
				</tr>
				<tr>
				<td><h4>Secured Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
				</tr>
				<tr>
				<td><h4>Percentage</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Grade/Class</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Month and Year of Passing</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Other Educational Qualification :</h3></td>
			</tr>
			<tr>
			<td><h3>Board/University</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Group</h3></td>
				<td><b>:</b></td>
				
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Medium</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Marks</h3></td>
				</tr>
				<tr>
				<td><h4>Total Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
				</tr>
				<tr>
				<td><h4>Secured Marks</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
				</tr>
				<tr>
				<td><h4>Percentage</h4></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Grade/Class</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td><h3>Month and Year of Passing</h3></td>
				<td><b>:</b></td>
				<td><input type="text"></td>
			</tr>
			<tr>
			<td><input type="text"></td>
			</tr>
		</table>

	<div class="form-action-buttons ">
		<!--Input Button-->
	<button align="center" type="submit">Submit</button>
	</div>
</div>
	</form>
	
</body>
</html>