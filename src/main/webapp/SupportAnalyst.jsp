<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Admin</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
<script type="text/javascript">
	function validate() {
		var fn = document.getElementById("firstName").value;
		var pattern = /[A-Za-z]{6,32}/;
		var phone = document.getElementById("contactNumber").value;
		var pattern1 = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
		var pwd = document.getElementById("password").value;
		var pattern2 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
		var age = document.getElementById("age").value;
		var ln = document.getElementById("lastName").value;
		var gender = document.getElementById("gender").value;
		var supportLevel = document.getElementById("supportLevel").value;
		var id = document.getElementById("analystId").value;
		var qstn1=document.getElementById("secretquestion1").value;
		var ans1=document.getElementById("answer1").value;
		var qstn2=document.getElementById("secretquestion2").value;
		var ans2=document.getElementById("answer2").value;
		var qstn3=document.getElementById("secretquestion3").value;
		var ans3=document.getElementById("answer3").value;
			
		if (fn == "") {
			document.getElementById("firstName").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (ln == "") {
			document.getElementById("lastName").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (age == "") {
			document.getElementById("age").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (gender == "") {
			document.getElementById("gender").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (id == "") {
			document.getElementById("analystId").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (pwd == "") {
			document.getElementById("password").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (phnno == "") {
			document.getElementById("contactNumber").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (supportlevel == "") {
			document.getElementById("supportLevel").style.borderColor = "red";
			alert("Please update mandatory highlighted fields");
			return false;
		}
		if (!pattern.test(fn)) {
			document.getElementById("firstName").style.borderColor = "red";
			alert("Firstname should be minimum of 6 characters");
			return false;
		} else if (!pattern1.test(phone)) {
			document.getElementById("contactNumber").style.borderColor = "red";
			alert("Enter phone number with maximum of 10 digits ");
			return false;
		} else if (!pattern2.test(pwd)) {
			document.getElementById("password").style.borderColor = "red";
			alert("Enter password with minimum of 7 characters with one special character and numerical value");
			return false;
		}
	}
</script>
</head>
<body>
	<div class="header">
	 <div style="head-align:center">
	</div>
	<div align="center">
	<h1>Support Analyst Registration</h1>
	<div class="formdata">
		<form:form onsubmit="return validate()" action="supportanalystreg"
			modelAttribute="supportanalyst" method="post">
			<!-- First Name, Last Name, Age, Gender, Contact Number, SupportAnalyst Id, Password -->
			<table>
				<tr>
					<td>FirstName:</td>
					<td><form:input path="firstName" id="firstName" /></td>
				</tr>
				<tr>
					<td>LastName:</td>
					<td><form:input path="lastName" id="lastName" /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" id="age" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:radiobutton path="gender" value="female" id="gender" />Female
						<form:radiobutton path="gender" value="male" id="gender" />Male 
							</td>
				</tr>
				<tr>
					<td>Contact Number:</td>
					<td><form:input path="contactNumber" id="contactNumber" /></td>
				</tr>
				<tr>
					<td>SupportLevel</td>
					<td><input type="radio" id="L1" name="supportLevel" value="L1">
						<label for="supportLevel">L1</label> <input type="radio" id="L2"
						name="supportLevel" value="L2"> <label for="supportLevel">L2</label>

						<input type="radio" id="L3" name="supportLevel" value="L3">
						<label for="supportLevel">L3</label></td>
				</tr>
				<tr>
					<td>SupportAnalystId:</td>
					<td><form:input path="analystId" id="analystId" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input path="password" id="password" type="password" /></td>
				</tr>
				<tr>
				
<td>Secret Question1:</td>
<td>
<form:select path="secretquestion1" id="secretQuestion1" class="select-box" >
<option  selected="selected" value="In which month you born ?">In which month you born?</option>
  <option value="What is your favorite movie?">What is your favorite movie?</option>
  <option value="What is your pet name?">What is your pet name?</option>
</form:select>
</td>
</tr>

<tr>
<td colspan="2" align="right">
<form:input path="answer1" id="answer1" placeholder="Answer" width="170px" />
</td>
</tr>

<tr>
<td>Secret Question 2:</td>
<td>
<form:select path="secretquestion2" id="secretquestion2" class="select-box" >
<option  selected="selected" value="What is your favourite place?">What is your favourite place?</option>
  <option value="What is your parent's anniversary?">What is your parent's anniversary?</option>
  <option value="What is your highest education?">What is your highest education?</option>
</form:select>
</td>
</tr>
<tr>
<td colspan="2" align="right">
<form:input path="answer2" id="answer2" placeholder="Answer" width="170px" />
</td>
</tr>
<tr>
<td>Secret Question 3:</td>
<td>
<form:select path="secretquestion3" id="secretquestion3" class="select-box" >
<option  selected="selected" value="What is your favourite comic?">What is your favourite comic?</option>
  <option value="What is your hometown?">What is your hometown?</option>
  <option value="In what town or city did you meet your spouse/partner?">In what town or city did you meet your spouse/partner?</option>
</form:select>
</td>
</tr>
<tr>
<td colspan="2" align="right">
<form:input path="answer3" id="answer3" placeholder="Answer" width="170px" />
</td>
</tr>					
</table>
<br><br>
<div align="center">
<input type="submit" value="submit" class="formsubmitbutton" /><br><br>
</form:form>
Already having account?<a href="supportanalystlogin">Login</a><br><br>
<a href="/">Home</a>
${message}
</body>
</div>
</html>

