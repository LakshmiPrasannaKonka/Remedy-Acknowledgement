<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>User Home</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>
<%
String userid =(String) session.getAttribute("username");
if(userid==null)
{
	response.sendRedirect("/user/");
}
%>
<div class="header">
<h1 style="text-align: center">Welcome <span><%=userid%> </span></h1> 
<ul class="a">
<li><a href="#" class="a1">Remedy Creation</a></li>
<li ><a href="#" class="a1">ViewRemedy</a></li>
<li ><a href="userLogout" class="a1">Logout</a></li><br><br>
<a href="/">Home</a>
</ul>

</div>
</body>
</html>



    