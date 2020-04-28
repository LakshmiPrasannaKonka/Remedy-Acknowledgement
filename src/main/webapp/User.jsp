<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<script type="text/javascript">
function validate(){
	var fn=document.getElementById("firstName").value;
	var pattern=/[A-Za-z]{6,32}/;
	var phone=document.getElementById("contactNumber").value;
	var pattern1=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var pwd=document.getElementById("password").value;
	var pattern2=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
	var seatNo=document.getElementById("seatNo").value;
	var ln=document.getElementById("lastName").value;
	var designation=document.getElementById("designation").value;
	var IpAddress=document.getElementById("IpAddress").value;
	var PcNumber=document.getElementById("PcNumber").value;
	var id=document.getElementById("userId").value;
	var ans=document.getElementById("answer").value;
	 if(fn==""){
		document.getElementById("firstName").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(ln==""){
		document.getElementById("lastName").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(seatNo==""){
		document.getElementById("seatNo").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(designation==""){
		document.getElementById("designation").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(PcNumber==""){
		document.getElementById("PcNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(IpAddress==""){
		document.getElementById("IpAddress").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(phnno==""){
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(id==""){
		document.getElementById("userId").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(pwd==""){
		document.getElementById("password").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(ans==""){
		document.getElementById("answer").style.borderColor = "red";
		alert("Please update mandatory highlighted fields");
		return false;
	}else if(!pattern.test(id)){
		document.getElementById("firstName").style.borderColor = "red";
		alert("Firstname should be minimum of 6 characters");
		return false;
	}else if(!pattern1.test(phone)){
		document.getElementById("contactNumber").style.borderColor = "red";
		alert("Enter phone number with maximum of 10 digits ");
		return false;
	}else if(!pattern2.test(pwd)){
		document.getElementById("password").style.borderColor = "red";
		alert("Enter password with minimum of 7 characters with one special character and numerical value");
		return false;
	}
}
</script>
</head>
<body>
<div class="header">
 <div style="head-align:center;">
</div>
<div align="center">
<h1>User Registration</h1>
<div class="formdata">
<form:form  onsubmit="return validate()" action="userreg" modelAttribute="user" method="post">
<!-- First Name, Last Name,Designation,seatNo,PcNumber,IpAddress, Contact Number, User Id, Password -->
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
<td>Designation:</td>
<td><form:input path="designation" id="designation"/></td>
</tr>
<tr>
<td>SeatNo:</td>
<td><form:input path="seatNo" id="seatNo"/></td>
</tr>
<tr>
<td>PcNumber:</td>
<td><form:input path="PcNumber" id="PcNumber"/></td>
</tr>
<tr>
<td>IpAddress:</td>
<td><form:input path="IpAddress" id="IpAddress"/></td>
</tr>

<tr>
<td>Contact Number:</td>
<td><form:input path="contactNumber" id="contactNumber" />
</td>
</tr>
<tr>
<td>UserId:</td>
<td><form:input path="id" id="userId" /></td>
</tr>
<tr>
<td>Password</td>
<td><form:input path="password" id="password" type="password"/>
</tr>
<tr>
<td>Secret Question:</td>
<td>
<form:select path="secretQuestion" id="secretQuestion" class="select-box" >
<option  selected="selected" value="In which month you born?">In which month you born?</option>
  <option value="What is your favorite movie?">What is your favorite movie?</option>
  <option value="What is your pet name?">What is your pet name?</option>
</form:select>
</td>
</tr>
<tr>
<td colspan="2" align="right">
<form:input path="answer" id="answer" placeholder="Answer" width="170px" />
</td>
</tr>
</table>
<br><br>
<div align="center">
<input type="submit" value ="submit" class="formsubmitbutton"/><br><br>
</form:form>
Already having account?<a href="userlogin">Login</a><br><br>
<a href="/">Home</a>
<br>
${message}

</div>
</body>
</html>
    