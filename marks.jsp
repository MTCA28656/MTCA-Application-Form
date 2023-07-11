<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>







</head>
<body>
<h4 align="left">Educational Qualifications:<sup style="color:red">* </sup></h4>
			<table class="education" border=1 class="table1" align="center">
				<tr>
					<td rowspan=2><b>Course</b></td>
					<td rowspan=2><b>Board/University</b></td>
					<td rowspan=2><b>Group</b></td>
					<td rowspan=2><b>medium</b></td>
					<td colspan=3><b>marks/CGPA</b></Td>
					<td rowspan=2><b>Class/Grade</b></td>
					<td rowspan=2><b>month & Year of passing</b></td>
				</tr>
				<tr>
					<td><b>Total</b></td>
					<td><b>Secured</b></td>
					<td><b>Percentage</b></td>
				</tr>
				
			
				<tr class="ssc">
					<th>SSC</th>
					<td><textarea rows="3" cols="25" name="10-board"
							maxlength="40" required></textarea></td>
					<td><select
						name="Group">
						<option value="select">select</option>
							<option value="General">General</option>
							<option value="others">other</option>
							
					</select></td>
					<td><input type="text" name="10-medium" maxlength="8" required></td>
					
					
					<td>
					<div id="total">600</div>
				
					</td>
						
					<td><input type="text"  name="marks" id="sscmarks" onblur="fnpercentage1();"/></td>
					<td>
						
				
						<input type="text" id="sscpercentage"  onfocus=fnpercentage1(); maxlength="4">
						
					
					 
					
					</td>
					<td><input type="text" name="10-grad" maxlength="4" required></td>
					<td><input type="text" name="10-yop" maxlength="4" required></td>
				</tr>
				
				<tr class="inter">
					<td><b>Intermediate</b></td>
					<td><textarea rows="3" cols="25"></textarea></td>
					<td	><select
						name="group">
						<option value="select">select</option>
							<option value="MPC">MPC</option>
							<option value="BiPC">BiPC</option>
							<option value="MBiPC">MBipc</option>
							<option value="MEC">MEC</option>
							<option value="HEC">HEC</option>
							<option value="CEC">CEC</option>
							<option value="others">other</option>
							
					</select></td>
					<td><input type="text" name="12-medium" maxlength="4" required></td>
					<td>1000</td>
					<td><input type="text" name="intermarks" maxlength="4"
						required></td>
					<td><input type="text" id="interpercentage"  onfocus=inter(); maxlength="4">
						</td>
					<td><input type="text" name="12-grad" maxlength="4" required></td>
					<td><input type="text" name="12-yop" maxlength="4" required></td>
				</tr>
				<tr class="degree">
					<td><b>Graduation</b></td>

					<td><textarea rows="3" cols="25"></textarea></td>
					<td><select
						name="groups">
						<option value="select">select</option>
							<option value="BSC">BSC(MPCS)</option>
							<option value="BSC">BSC(MECS)</option>
							<option value="BSC">BSC(MSCS)</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="BCom">BCom</option>
							<option value="others">other</option>
					</select></td>
					<td><input type="text" name="d-medium" maxlength="4" required></td>
					<td>10-points</td>
					<td><input type="text" name="d-marks" maxlength="4" required></td>
					<td><input type="text" id="d-percentage" maxlength="6" onfocus=fnpercentage3();></td>
					<td><input type="text" name="d-grad" maxlength="4" required></td>
					<td><input type="text" name="d-yop" maxlength="4" required></td>

				</tr>
			

			</table>
			
function fnpercentage1(){
<script type="text/javascript">
var sscmarks=parseInt(document.getElementById('sscmarks').value);
var percentage=((marks/600)*100);
if(sscmarks<600){

document.getElementById('sscpercentage').value=percentage;
//alert(total);
}
else
	{
	document.getElementById('sscpercentage').value=("error");
	}
}

function inter(){
	var inter-marks=parseInt(document.getElementById('intermarks').value);
	if(inter-marks<1000){
	var percentage=((marks/1000)*100);
	document.getElementById('interpercentage').value=percentage;
	//alert(total);
	}
	}


function fnpercentage3(){
	var d-marks=parseInt(document.getElementById('d-marks').value);
	//var total=parseInt(document.getElementById('total').value);
	var percentage=((marks/10)*9.5);
	document.getElementById('d-percentage').value=percentage;
	//alert(total);
	}




</script>
</body>
</html>