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
<div style="head-align:center;">
<h1>Welcome <span><%=session.getAttribute("name")%></span></h1>
<ul class="a">
<li><a href="remedyinfo" class="a1">Remedy Information</a></li>
<li><a href="req" class="a1">RequestList</a></li>
<li><a href="#" class="a1">Help</a></li>
<li><a href="adminLogout" class="a1">Logout</a></li><br><br>

<a href="/">Home</a>
</ul>
</div>
</body>
</html>

    