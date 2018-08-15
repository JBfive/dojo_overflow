<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Show Details</title>
</head>
<body>
	<h1> <c:out value="${ question.question }"/> </h1>
	<p>Tags: 
		<c:forEach items="${ question.tags }" var="tag" >
					<span> <c:out value="${ tag.name }"/> </span>
		</c:forEach>
	</p>
	<table>
		<tr>
			<td>Answers</td>
		<tr>
		<c:forEach items="${ question.answers }" var="answer" >
			<tr>
			<td> <c:out value="${ answer.answer }"/> </td>
			</tr>
		</c:forEach>
	</table>
		<p>Add your answer</p>
		
		<form:form method="POST" action="/questions/${ question.id }" modelAttribute="newAnswer">
		
		
     <form:label path="answer">Answer:
     	<form:errors path="answer"/>
     	<form:textarea path="answer"/>
     </form:label><br>
 
    
      <input type="submit" name="" value="Answer it">
    </form:form>
	
</body>
</html>