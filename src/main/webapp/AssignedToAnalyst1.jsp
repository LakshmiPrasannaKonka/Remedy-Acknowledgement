<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RemedyInformation</title>
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
<th>Category</th>
<th>Statement</th>
</tr>
<tr>
<td>${userremedy.getUserId()}</td>
<td>${userremedy.getPcNumber()}</td>
<td>${userremedy.getContactNumber()}</td>
<td>${userremedy.getCategory()}</td>
<td>${userremedy.getStatement()}</td>
</tr>
<tr>
<td colspan="7" align="center">
<a href="assignedtoanotheranalyst2?name=${userremedy.getUserId()}"><button>AssignedToAnotherAnalyst2</button></a>
<a href="assignedtoanotheranalyst3?name=${userremedy.getUserId()}"><button>AssignedToAnotherAnalyst3</button></a>

</td>
</tr>

</table>
</c:forEach>
${message}
</div>
<%
RequestDispatcher rd=request.getRequestDispatcher("SupportAnalystHome.jsp");
rd.include(request,response);
%>
</div>
</body>
</html>