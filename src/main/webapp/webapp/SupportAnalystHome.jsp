<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Support Analyst Home</title>
<link rel="stylesheet" type="text/css" href="/style1.css"/>
</head>
<body>
<%
String userid =(String) session.getAttribute("username");
if(userid==null)
{
	response.sendRedirect("/supportanalyst/");
}
%>
<div class="header">
<h1 style="text-align: center">Welcome <span><%=userid%> </span></h1> 
<ul class="a">
<li><a href="#" class="a1">RequestRemedies</a></li>

<li ><a href="supportanalystlogout" class="a1">Logout</a></li>
<li><a href="/">Home</a></li>
</ul>

</div>
</body>
</html>



    