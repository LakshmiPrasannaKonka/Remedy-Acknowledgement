<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
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
<div class="header">
 <div style="text-align:center">
</div>
<h1>User Login</h1>
<div class="formdata">

<div align="center">
<form:form onsubmit="return validate()" action="userloginverify" method="post" modelAttribute="userlogin">
 <table align="center">

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
<li class="l"><a href="Uforgotuid">ForgotUserid</a></li>
<li class="l"><a href="Uforgotpswd">Forgot Password</a></li>
</ul>
New User?<a href="user">Registration</a><br><br>
<a href="/">Home</a>
<br>
${message}
</div>
</div>
</body>
</html>

    