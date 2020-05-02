<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Branch Admin Login</title>
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
</div>
</div>
</div>
</body>
</html>

    