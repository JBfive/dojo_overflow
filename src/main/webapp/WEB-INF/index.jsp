<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Dashboard Page</title>
</head>
<body>
	<h1>Question Dashboard</h1>
	
	<table>
		<tr>
			<td>Question</td>
			<td>Tag</td>
		<tr>
		<c:forEach items="${ questions }" var="question" >
			<tr>
			<td> <a href="/questions/${ question.id }"><c:out value="${ question.question }"/></a> </td>
			<td>
				<c:forEach items="${ question.tags }" var="tag" >
					<span> <c:out value="${ tag.name }"/> </span>
				</c:forEach>
			  </td>
			</tr>
		</c:forEach>
	</table>
		<a href="/questions/new">New Question</a>
</body>
</html>