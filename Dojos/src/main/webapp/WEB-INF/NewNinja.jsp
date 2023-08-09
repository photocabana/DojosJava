<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
</head>
<body>
	<h1>New Ninja</h1>
	<form:form action="/ninjas" method="POST" modelAttribute="ninja">
    <p>
        <form:label path="dojo">Dojo: </form:label>
        <form:errors path="dojo"/>
        <form:select path="dojo">
        	<c:forEach var="dojo" items="${dojos}">
	        
	        	<option value="${dojo.id}"><c:out value="${dojo.name}"/></option>
	        
        	</c:forEach>
        </form:select>
    </p>
    <p>
        <form:label path="firstName">First Name: </form:label>
         <form:errors path="firstName"/>
        <form:input path="firstName"/>
    </p>
    <br>
    <p>
        <form:label path="lastName">Last Name: </form:label>
         <form:errors path="lastName"/>
        <form:input path="lastName"/>
    </p>
    <br>
    <p>
        <form:label path="age">Age: </form:label>
         <form:errors path="age"/>
        <form:input path="age"/>
    </p>
    <br>
    <input type="submit" value="Create"/>
</form:form> 
</body>
</html>