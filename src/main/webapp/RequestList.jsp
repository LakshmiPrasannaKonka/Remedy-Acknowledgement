<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SupportAnalystRegistrations</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>
<div align="left">
<div style="text-align:left">
<h2>SARegistrationRequests</h2>
<c:forEach items="${list}" var="admin"> 
<table border="1" class="t1">
<tr>
<th>AdminId</th>
<th>FirstName</th>
<th>LastName</th>
<th>Age</th>
<th>Gender</th>
<th>ContactNumber</th>
<th>SupportLevel</th>
<th>Status</th>
</tr>
<tr>
<td>${admin.getAnalystId()}</td>
<td>${admin.getFirstName()}</td>
<td>${admin.getLastName()}</td>
<td>${admin.getAge()}</td>
<td>${admin.getGender()}</td>
<td>${admin.getContactNumber()}</td>
<td>${admin.getSupportLevel()}</td>
<td>${admin.getStatus()}</td>
</tr>
<tr>
<td colspan="7" align="center">
<a href="accept?name=${admin.getAnalystId()}"><button>Accept</button></a>
<a href="reject?name=${admin.getAnalystId()}"><button>Reject</button></a>

</td>
</tr>

</table>
</c:forEach>
${message}
</div>
<%
RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
rd.include(request,response);
%>
</div>
</body>
</html>