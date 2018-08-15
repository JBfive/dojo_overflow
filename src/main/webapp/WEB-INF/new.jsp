<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Create New</title>
</head>
<body>
	<h1>What's your question?</h1>
	<form:form method="POST" action="/questions/new" modelAttribute="newQuestion">
		<form:hidden path="id"/>
		
     <form:label path="question">Name
     	<form:errors path="question"/>
     	<form:textarea path="question"/>
     </form:label><br>
     
     
     
     Tags: <input type="text" name="tagList"><br>
    
      <input type="submit" name="" value="Submit">
    </form:form>
</body>
</html>