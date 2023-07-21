<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Form</title>
<link rel="stylesheet" type="text/css" href="app.css">
<style>
.container {
  border: 2px solid black;
  margin-top: 7%;
  margin-bottom: 7%;
  margin-left: 3%;
  margin-right: 3%;
  padding: 20px;
}
body,
input,
select {
  background-color: lightblue;
}
input,
select {
  font-size: 16px;
  border-right: none;
  border-left: none;
  border-top: none;
  border-bottom: 2px solid black;
  background: lightblue;
  width: 100%;
  padding: 10px;
}
input,
select {
  border-left: none;
  border-right: none;
  border-top: none;
  margin: 10%;
}
.table {
  margin-left: 10%;
}
h2 {
  text-align: center;
}
button{
text-align:center;
}
</style>

<script type="text/javascript">
    function marksPercentage() {
      let totalMarksInputs = document.getElementsByClassName("totalMarks");
      let obtainedMarksInputs = document.getElementsByClassName("obtainedMarks");
      let marksPercentageInputs = document.getElementsByClassName("marksPercentage");
      let gradeInputs = document.getElementsByClassName("grade");

      for (let i = 0; i < totalMarksInputs.length; i++) {
        let totalMarks = parseFloat(totalMarksInputs[i].value);
        let obtainedMarks = parseFloat(obtainedMarksInputs[i].value);
        let marksPercentageInput = marksPercentageInputs[i];
        let gradeInput = gradeInputs[i];

        if (totalMarks > 0 && obtainedMarks >= 0 && obtainedMarks <= totalMarks) {
          let percentage = (obtainedMarks / totalMarks) * 100;
          marksPercentageInput.value = percentage.toFixed(2);

          if (percentage >= 75) {
            gradeInput.value = "Distinction";
          } else if (percentage >= 60 && percentage < 75) {
            gradeInput.value = "First class";
          } else if (percentage >= 50 && percentage < 60) {
            gradeInput.value = "Second class";
          } else if (percentage >= 40 && percentage < 50) {
            gradeInput.value = "Third class";
          } else {
            gradeInput.value = "Fail";
          }
        } else {
          marksPercentageInput.value = "";
          gradeInput.value = "";
        }
      }
    }

    document.addEventListener('focusout', function(event) {
      marksPercentage();
    });
  </script>

</head>
<body>
<form name="education">
  <div class="container">
    <h1 align="center">Educational Qualifications:</h1>
    <table class="table">
      <tr>
        <td>
          <h2 align="center">SSC :</h2>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Board/University</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="sscBoard"></td>
      </tr>
      <tr>
        <td>
          <h3>Group</h3>
        </td>
        <td><b>:</b></td>
        <td>
          <select name="sscGroup">
            <option value="select">select</option>
            <option value="General">General</option>
            <option value="others">other</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Medium</h3>
        </td>
        <td><b>:</b></td>
        <td> <select name="sscMedium">
            <option value="select">select</option>
            <option value="English">English</option>
            <option value="Telugu">Telugu</option>
            <option value="Urdu">Urdu</option>
            <option value="others">other</option>
          </select></td>
      </tr>
      <tr>
        <td>
          <h3>Marks</h3>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Total Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control totalMarks" placeholder="Total Marks"></td>
      </tr>
      <tr>
        <td>
          <h3>Secured Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control obtainedMarks" placeholder="Obtained Marks" onblur="marksPercentage()"></td>
      </tr>
      <tr>
        <td>
          <h3>Percentage</h3>
        </td>
        <td><b>:</b></td>
      <td><input type="text" class="form-control marksPercentage" placeholder="click here for Percentage" disabled></td>
      </tr>
      <tr>
        <td>
          <h3>Grade/Class</h3>
        </td>
        <td><b>:</b></td>
      <td><input type="text" class="form-control grade" placeholder="Grade/Class" disabled></td>
      
      </tr>
      <tr>
        <td>
          <h3>Month and Year of Passing</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="sscPassingYear"></td>
      </tr>
      <tr>
        <td>
          <h2>Intermediate/HSC :</h2>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Board/University</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="intermediateBoard"></td>
      </tr>
      <tr>
        <td>
          <h3>Group</h3>
        </td>
        <td><b>:</b></td>

        <td>
          <select name="intermediateGroup">
            <option value="select">select</option>
            <option value="MPC">MPC</option>
            <option value="BiPC">BiPC</option>
            <option value="MBiPC">MBiPC</option>
            <option value="MEC">MEC</option>
            <option value="HEC">HEC</option>
            <option value="CEC">CEC</option>
            <option value="others">other</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Medium</h3>
        </td>
        <td><b>:</b></td>
        <td><select name="interMedium">
            <option value="select">select</option>
            <option value="English">English</option>
            <option value="Telugu">Telugu</option>
            <option value="Urdu">Urdu</option>
            <option value="others">other</option></td>
      </tr>
      <tr>
        <td>
          <h3>Marks</h3>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Total Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control totalMarks" placeholder="Total Marks"></td>
      </tr>
      <tr>
        <td>
          <h3>Secured Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control obtainedMarks" placeholder="Obtained Marks" onblur="marksPercentage()"></td>
      </tr>
      <tr>
        <td>
          <h3>Percentage</h3>
        </td>
        <td><b>:</b></td>
       <td><input type="text" class="form-control marksPercentage" placeholder="click here for Percentage" disabled></td>
      </tr>
      <tr>
        <td>
          <h3>Grade/Class</h3>
        </td>
        <td><b>:</b></td>
					<td><input type="text" class="form-control grade"
						placeholder="click here for Percentage" disabled></td>

				</tr>
      <tr>
        <td>
          <h3>Month and Year of Passing</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="intermediatePassingYear"></td>
      </tr>
      <tr>
        <td>
          <h3>Graduation :</h3>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Board/University</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="graduationBoard"></td>
      </tr>
      <tr>
        <td>
          <h3>Group</h3>
        </td>
        <td><b>:</b></td>
        <td>
          <select name="graduationGroup">
            <option value="select">select</option>
            <option value="BSC(MPCS)">BSC(MPCS)</option>
            <option value="BSC(MECS)">BSC(MECS)</option>
            <option value="BSC(MSCS)">BSC(MSCS)</option>
            <option value="BCA">BCA</option>
            <option value="BBA">BBA</option>
            <option value="BCom">BCom</option>
            <option value="others">other</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Medium</h3>
        </td>
        <td><b>:</b></td>
        <td><select name="degreeMedium">
            <option value="select">select</option>
            <option value="English">English</option>
            <option value="Telugu">Telugu</option>
            <option value="Urdu">Urdu</option>
            <option value="others">other</option></td>
      </tr>
      <tr>
        <td>
          <h3>Marks</h3>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Total Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control totalMarks" placeholder="Total Marks"></td>
      </tr>
      <tr>
        <td>
          <h3>Secured Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control obtainedMarks" placeholder="Obtained Marks" onblur="marksPercentage()"></td>
      </tr>
      <tr>
        <td>
          <h3>Percentage</h3>
        </td>
        <td><b>:</b></td>
    <td><input type="text" class="form-control marksPercentage" placeholder="click here for Percentage" disabled></td>
      </tr>
      <tr>
        <td>
          <h3>Grade/Class</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control grade" placeholder="Grade/Class" disabled></td>
      
      </tr>
      <tr>
        <td>
          <h3>Month and Year of Passing</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="graduationPassingYear"></td>
      </tr>
      <tr>
        <td>
          <h3>Other Educational Qualification :</h3>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Board/University</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="otherBoard"></td>
      </tr>
      <tr>
        <td>
          <h3>Group</h3>
        </td>
        <td><b>:</b></td>

        <td><input type="text" name="otherGroup"></td>
      </tr>
      <tr>
        <td>
          <h3>Medium</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="otherMedium"></td>
      </tr>
      <tr>
        <td>
          <td>
          <h3>Marks</h3>
        </td>
      </tr>
      <tr>
        <td>
          <h3>Total Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control totalMarks" placeholder="Total Marks"></td>
      </tr>
      <tr>
        <td>
          <h3>Secured Marks</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control obtainedMarks" placeholder="Obtained Marks" onblur="marksPercentage()"></td>
      </tr>
      <tr>
        <td>
          <h3>Percentage</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control marksPercentage" placeholder="click here for Percentage" disabled></td>
      </tr>
      <tr>
        <td>
          <h3>Grade/Class</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" class="form-control grade" placeholder="Grade/Class" disabled></td>
      
      </tr>
      <tr>
        <td>
          <h3>Month and Year of Passing</h3>
        </td>
        <td><b>:</b></td>
        <td><input type="text" name="otherPassingYear"></td>
      </tr>
      
    </table>

    <div class="form-action-buttons">
      <!--Input Button-->
      <button  type="submit">Submit</button>
    </div>
  </div>
</form>
<script type="text/javascript">
  document.addEventListener('focusout', function(event) {
    marksPercentage();
  });
</script>
</body>
</html>
