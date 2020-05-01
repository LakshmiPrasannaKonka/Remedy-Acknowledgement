<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Registration page</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<script type="text/javascript">
function validate(){
	var fname=document.getElementById("firstName").value;
	var lname=document.getElementById("lastName").value;
	var age=document.getElementById("age").value;
	var gender=document.getElementById("gender").value;
	var phone=document.getElementById("contactNumber").value;
	var id=document.getElementById("adminId").value;
	var pwd=document.getElementById("password").value;
	var qstn1=document.getElementById("secretquestion1").value;
	var ans1=document.getElementById("answer1").value;
	var qstn2=document.getElementById("secretquestion2").value;
	var ans2=document.getElementById("answer2").value;
	var qstn3=document.getElementById("secretquestion3").value;
	var ans3=document.getElementById("answer3").value;
		
	var pattern=/[A-Za-z]{6,32}/;
	var pattern1=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var pattern2=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
	if(fname==""){
		alert("Please update Mandatory fields");
		document.getElementById("firstName").style.borderColor="red";
		return false;
		}
	 if(lname==""){
		alert("Please update Mandatory fields");
		document.getElementById("lastName").style.borderColor="red";
		return false;
		}
	 if(age==""){
		 alert("Please update Mandatory fields");
		document.getElementById("Age").style.borderColor="red";		
		return false;
		}
	 if(gender==""){
		alert("Please update Mandatory fields");
			document.getElementById("Gender").style.borderColor="red";
			return false;
			}
	 if(phone==""){
		alert("Please update Mandatory fields");
		document.getElementById("contactNumber").style.borderColor="red";
		return false;
		}		
	 if(id==""){
		alert("Please update Mandatory fields");
		document.getElementById("adminId").style.borderColor="red";
		
		return false;
		}
	 if(pwd==""){
		alert("Please update Mandatory fields");
		document.getElementById("password").style.borderColor="red";		
		return false;
		}
	 if(qstn1==""){
			alert("Please update Mandatory fields");
			document.getElementById("secretquestion1").style.borderColor="red";		
			return false;
			}

	 if(ans1==""){
			alert("Please update Mandatory fields");
			document.getElementById("answer1").style.borderColor="red";		
			return false;
			}
		
	 if(qstn2==""){
			alert("Please update Mandatory fields");
			document.getElementById("secretquestion2").style.borderColor="red";		
			return false;
			}

	 if(ans2==""){
			alert("Please update Mandatory fields");
			document.getElementById("answer2").style.borderColor="red";		
			return false;
			}
	 if(qstn3==""){
			alert("Please update Mandatory fields");
			document.getElementById("secretquestion3").style.borderColor="red";		
			return false;
			}

	 if(ans3==""){
			alert("Please update Mandatory fields");
			document.getElementById("answer3").style.borderColor="red";		
			return false;
			}
		
	 	 if(!pattern.test(id)){
		alert("Please update Mandatory fields");
		document.getElementById("adminId").style.borderColor="red";
		return false;		
		}
	 if(!pattern1.test(phone)){
		alert("Please update Mandatory fields");
		document.getElementById("contactNumber").style.borderColor="red";
		return false;
		}
	 if(!pattern2.test(pwd)){
		alert("Please update Mandatory fields");
		document.getElementById("password").style.borderColor="red";
		return false;
		
		}		
	
}
</script>
</head>
<body>
<div class="header"/>
<div style="head-align:center;">
</div>
<h1>Admin Registration</h1>
<div class="formdata">
<form:form onsubmit="return validate()" action="adminreg" modelAttribute="admin" method="post">
<!-- First Name, Last Name, Age, Gender, Contact Number, Admin Id, Password -->
<table align="center">
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
<td><form:input path="age" id="age"/></td>
</tr>
<tr>
<td>Gender:</td>
<td><form:radiobutton path="gender" value="female" id="gender" />Female
<form:radiobutton path="gender" value="male" id="gender" />Male

</td>
</tr>
<tr>
<td>Contact Number:</td>
<td><form:input path="contactNumber" id="contactNumber" />
</td>
</tr>
<tr>
<td>AdminId:</td>
<td><form:input path="adminId" id="adminId" /></td>
</tr>
<tr>
<td>Password</td>
<td><form:input path="password" id="password" type="password"/>
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
<div align="center">
<input type="submit" value ="submit" class="formsubmitbutton"/><br><br>
</form:form>
Already having account?<a href="adminlogin">Login</a>
<br>
<a href="/">Home</a>
${message}
</body>
</div>
</html>


    