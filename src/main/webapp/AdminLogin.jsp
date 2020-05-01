<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<script type="text/javascript">
function validate(){
	var id=document.getElementById("userId").value;
	var pwd=document.getElementById("password").value;
	if(id==""){
		alert("please update mandatory highlighted fields");
		document.getElementById("userId").style.borderColor = "red";		
		return false;
		}else if(pwd==""){
			alert("please update mandatory highlighted fields");
			document.getElementById("password").style.borderColor = "red";
				return false;
			}
}

</script>
</head>
<body>

<div align="center">
<div class="header">
 <div style="text-align:center">

</div>
<h2>Admin Login</h2>
<div class="formdata">
<div align="center">
<form:form onsubmit="return validate()" action="loginverify" method="post" modelAttribute="adminlogin">
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
<li class="l"><a href="forgotuid">Forgot UserId</a></li>
<li class="l"><a href="forgotpswd">Forgot Password</a></li>



</ul>
New Admin?<a href="/">Registration</a>
<br><br>
<a href="/">Home</a>

<br>
${message}
</div>
</div>
</body>
</html>

    