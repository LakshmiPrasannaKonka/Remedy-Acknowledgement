<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
<link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<%
String userid =(String) session.getAttribute("name");
if(userid==null)
{
	response.sendRedirect("/admin/");
}
%>

<div class="header">
<h1>Welcome <span><%=session.getAttribute("name")%></span></h1>
<ul class="a">
<li><a href="/" class="a1">Remedy Information</a></li>
<li><a href="req" class="a1">Support Analyst Registrations</a></li>
<li><a href="/" class="a1">Help</a></li>
<li><a href="adminlogout" class="a1">Logout</a></li>
</ul>
</div>
</body>
</html>

    