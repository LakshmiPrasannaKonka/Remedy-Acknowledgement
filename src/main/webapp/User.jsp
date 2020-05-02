<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<<<<<<< HEAD
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

=======
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
	var qstn1=document.getElementById("secretquestion1").value;
	var ans1=document.getElementById("answer1").value;
	var qstn2=document.getElementById("secretquestion2").value;
	var ans2=document.getElementById("answer2").value;
	var qstn3=document.getElementById("secretquestion3").value;
	var ans3=document.getElementById("answer3").value;
		
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
>>>>>>> e1b5ce3d439e4ef94f9b0d405cf528095647417a
</head>
<body>


<div class="container-fluid">
<div class="row mainheader">
<div class="col-sm text-nowrap">

<span class="logo">Remedy Acknowledgement</span>
</div>
<<<<<<< HEAD

<div class="col-sm">

<nav class="navbar navbar-expand-lg nav-default  navbarmenu">
  
  <button class="navbar-toggler navbutton" type="button" data-toggle="collapse" data-target="#menus" aria-controls="menus" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    
  </button>
  <div class="collapse navbar-collapse" id="menus">
    <div class="navbar-nav">
    
        <a class="nav-item nav-link active"  href="admin">Admin <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="supportanalyst">Support Analyst</a>
      <a class="nav-item nav-link" href="user">User</a>    </div>
  </div>
</nav>

</div>



</div>
<div class="row mainsection">
 <div class="col-sm">
 <span class="text-success">${message}</span>
<div align="center">   
<div class="card" style="width: 30rem;margin-top: 30px;border-radius: 10px;">
  
  <div class="card-body">
    <h5 class="card-title">User Registration</h5>
   <form:form action="userreg" method="post" modelAttribute="user" onsubmit="return uservalidation()">
   <div class="form-row">
   <div class="form-group col-md-6">
   <form:label path="firstName">First Name :</form:label>
   
   <form:input path="firstName" class="form-control input-sm" name="firstName" id="firstName"/>
   
   </div>
   
   
   <div class="form-group col-md-6">
   
   <form:label path="lastName">Last Name :</form:label>
   
   <form:input path="lastName" class="form-control input-sm" name="lastName" id="lastName"/>
   
   </div>
   </div>
   
   <div class="form-row">
   
   <div class="form-group col-md-6">
   <form:label path="id">User Name :</form:label>
   
   <form:input path="id" class="form-control input-sm" id="userId" name="userId"/>
   
   </div>
   
   
   <div class="form-group col-md-6">
   
   <form:label path="password">Password :</form:label>
   
   <form:password path="password" class="form-control input-sm" id="password" name="password"/>
   
   </div>
   
   
   </div>
   
   <div class="form-row">
   
   <div class="form-group col-md-6">
   <form:label path="designation">Designation :</form:label>
   
   <form:input path="designation" class="form-control input-sm" id="designation" name="designation"/>
   
   </div>
   
   
   <div class="form-group col-md-6">
   
   <form:label path="seatNo">Seat No :</form:label>
   <form:input path="seatNo" name="seatNo" id="seatNo"/>
   </div>
   
   
   </div>
   
   <div class="form-row">
   
   <div class="form-group col-md-6">
   <form:label path="PcNumber">PC Number :</form:label>
   
   <form:input path="PcNumber" class="form-control input-sm" id="PcNumber" name="PcNumber"/>
   
   </div>
   
   
   <div class="form-group col-md-6">
   
   <form:label path="IpAddress">IP Address :</form:label>
   <form:input path="IpAddress" name="IpAddress" id="IpAddress"/>
   </div>
   
   
   </div>
   
   <div class="form-row">
   
   <div class="form-group col-md-6">
   <form:label path="email">Email :</form:label>
   
   <form:input path="email" class="form-control input-sm" id="email" name="email"/>
   
   </div>
   
   
   <div class="form-group col-md-6">
   
   <form:label path="contactNumber">Mobile Number :</form:label>
   
   <form:password path="contactNumber" class="form-control input-sm" id="contactNumber" name="contactNumber"/>
   
   </div>
   
   
   </div>
   
   <div class="form-group">
   
   <div>
   
   <form:label path="secretquestion1">SecretQuestion1</form:label>
   </div>
   <div>
   <form:select  path="secretquestion1" class="form-controll">
   
   <option>In which month you born?</option>
  <option value="What is your favorite movie?">What is your favorite movie?</option>
  <option value="What is your pet name?">What is your pet name?</option>
   </form:select>
   
   </div>
   </div>
    <div class="form-row">
   
   <div class="form-group col-sm-12">
   
   <form:label path="answer1">Answer1</form:label>
   <form:input path="answer1" class="form-control" name="answer1" id="answer1"/>
   </div>
   
   </div>
   
   <div class="form-group">
   
   <div>
   
   <form:label path="secretquestion2">SecretQuestion2</form:label>
   </div>
   <div>
   <form:select  path="secretquestion2" class="form-controll">
   
   <option>What is your favorite place?</option>
  <option value="What is your favorite food item?">What is your favorite food item?</option>
  <option value="What is your highest education?">What is your highest education?</option>
   </form:select>
   
   </div> 
   </div>
    <div class="form-row">
   
   <div class="form-group col-sm-12">
   
   <form:label path="answer2">Answer</form:label>
   <form:input path="answer2" class="form-control" name="answer2" id="answer2"/>
   </div>
   
   </div>
   <div class="form-group">
   
  
   
   <div>
   
   <form:label path="secretquestion3">SecretQuestion3</form:label>
   </div>
   <div>
   <form:select  path="secretquestion3" class="form-controll">
   
   <option>what is your favorite comic?</option>
  <option value="What is your home town?">What is your home town?</option>
  <option value="What is your favorite color?">What is your favorite color?</option>
   </form:select>
   
   </div>
   
   <div class="form-row">
   
   <div class="form-group col-sm-12">
   
   <form:label path="answer3">Answer3</form:label>
   <form:input path="answer3" class="form-control" name="answer3" id="answer3"/>
   </div>
   
   </div>
  

     <div class="form-row">
   
   <div class="form-group col-sm-12">
   
   
   <button class="btn btn-primary btn-lg">Register</button>
   </div>
   
   </div>
   
   </form:form> 
   
=======
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
<input type="submit" value ="submit" class="formsubmitbutton"/><br><br>
</form:form>
Already having account?<a href="userlogin">Login</a><br><br>
<a href="/">Home</a>
<br>
${message}
>>>>>>> e1b5ce3d439e4ef94f9b0d405cf528095647417a

<span class="signup">Do you have Account?</span><a href="userlogin" class="signupbtn">Login</a>
</div>
  </div>
</div>
</div>
</div>
</div>
<script src="validators.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>


    


    