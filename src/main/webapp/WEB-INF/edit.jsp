   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java</title>
</head>
<body>
	<h1>Edit here!</h1>
	<a href="/languages">Dashboard</a>
	<form action="/languages/${language.id}" method="post">
		    		<input type="hidden" name="_method" value="delete">
		    		<input type="submit" value="Delete">
				</form>
	<%-- <form:form action="/books/${book.id}" method="post" modelAttribute="book">
	    <p>
	        <form:label path="name">Name</form:label>
	        <form:errors path="name"/>
	        <form:input path="name"/>
	    </p>
	    <p>
	        <form:label path="creator">Creator</form:label>
	        <form:errors path="creator"/>
	        <form:textarea path="creator"/>
	    </p>
	    <p>
	        <form:label path="version">Version</form:label>
	        <form:errors path="version"/>
	        <form:input path="version"/>
	    </p>
	    <input type="submit" value="Submit"/>
	</form:form> --%>
</body>
</html>