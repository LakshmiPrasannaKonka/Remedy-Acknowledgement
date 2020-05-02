<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
=======

>>>>>>> e1b5ce3d439e4ef94f9b0d405cf528095647417a
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script type="text/javascript">
function validate(){
	var id=document.getElementById("userId").value;
	var pwd=document.getElementById("password").value;
	if(id==""){
		document.getElementById("userId").style.borderColor = "red";
		alert("please update mandatory highlighted fields");
		return false;
		}else if(pwd==""){
			document.getElementById("password").style.borderColor = "red";
			alert("please update mandatory highlighted fields");
				return false;
			}
}
</script>


</head>
<body>
<<<<<<< HEAD

<div class="container-fluid">
<div class="row mainheader">
<div class="col-sm text-nowrap">

<span class="logo">Remedy Acknowledgement</span>
</div>

<div class="col-sm">

<nav class="navbar navbar-expand-lg nav-default  navbarmenu">
  
  <button class="navbar-toggler navbutton" type="button" data-toggle="collapse" data-target="#menus" aria-controls="menus" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    
  </button>
  <div class="collapse navbar-collapse" id="menus">
    <div class="navbar-nav">
    
       <a class="nav-item nav-link active"  href="admin">Admin <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="supportanalyst">Support Analyst</a>
      <a class="nav-item nav-link" href="user">User</a>
    </div>
  </div>
</nav>

=======
<div style="text-align:center">
<div class="header">

<h1>SupportAnalystLogin</h1>
<div class="formdata">
<div align="center">
<form:form onsubmit="return validate()" action="supportanalystverify" method="post" modelAttribute="supportanalystlogin">
<table>
<tr>
<td>UserId:</td>
<td><form:input path="userId" class="formcontrol" id="userId"/></td>
</tr>
<tr>
<td>Password:</td>
<td><form:input path="password" class="formcontrol" id="password" type="password"/></td>
</tr>
</table>
<input type="submit" value="submit" class="formsubmitbutton"/>
</form:form>
<ul>
<div align="center">
<li><a href="Aforgotuid">Forgot Userid </a></li>
<li><a href="Aforgotpswd">Forgot Password</a></li>
</ul>
New User?<a href="supportanalyst">Registration</a><br><br>
<a href="/">Home</a>
<br>
${message}
>>>>>>> e1b5ce3d439e4ef94f9b0d405cf528095647417a
</div>



</div>
<div class="row mainsection">
 <div class="col-sm">
 <span class="text-success">${message}</span>
<div align="center">   
<div class="card" style="width: 18rem;margin-top: 30px;border-radius: 10px;">
  
  <div class="card-body">
    <h5 class="card-title">Support Analyst Login</h5>
   <form:form action="userloginverify" onsubmit="return loginvalidate()" method="post" modelAttribute="supportanalystlogin">
  
    <div class="form-row">
    <div class="form-group col-sm-6">
    <form:label path="userId">User Name</form:label>
    <form:input path="userId" id="userId" name="userId"/>
    </div>
    </div>
  
  <div class="form-row">
  <div class="form-group col-sm-6">
    <form:label path="password">Password</form:label>
    <form:password path="password" id="password" name="password"/>
    </div>
    </div>
  
  
     <div class="form-row">
   
   <div class="form-group col-sm-12">
   
   
   <button class="btn btn-primary btn-lg">Login</button>
   </div>
   
   </div>
   
   </form:form> 
   

<span class="signup">Don't  have an Account?</span><a href="supportanalystlogin" class="signupbtn">Register</a>
<li><a href="Aforgotuid">Forgot Userid </a></li>
<li><a href="Aforgotpswd">Forgot Password</a></li>
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


    


    