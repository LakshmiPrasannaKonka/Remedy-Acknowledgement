<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>
<div align="left">
<div style="text-align:left">

<c:forEach items="${list}" var="userremedy"> 
<table border="1" class="t1">
<tr>
<th>UserId</th>
<th>PcNumber</th>
<th>ContactNumber</th>
</tr>
<tr>
<td>${userremedy.getUserId()}</td>
<td>${admin.getPcNumber()}</td>
<td>${admin.getContactNumber()}</td>
</tr>

<a href="/">user Home</a>

</table>
</c:forEach>
${message}
</div>
<%
RequestDispatcher rd=request.getRequestDispatcher("UserHome.jsp");
rd.include(request,response);
%>
</div>
</body>
</html>