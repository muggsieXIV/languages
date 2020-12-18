<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*, java.util.*, javax.servlet.*" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
        <title>Languages</title>
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        
</head>
<body> 
	<div>
		<h1>All Languages</h1>
		<table>
		    <thead>
		        <tr>
		            <th>Name</th>
		            <th>Creator</th>
		            <th>Version</th>
		            <th>Action</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${languages}" var="language">
		        <tr>
		            <td><c:out value="${language.name}"/></td>
		            <td><c:out value="${language.creator}"/></td>
		            <td><c:out value="${language.version}"/></td>
		            <td>
		            	<a href="/languages/${language.id}/edit">Edit Book</a>
			            <form action="/languages/${language.id}" method="post">
				    		<input type="hidden" name="_method" value="delete">
				    		<input type="submit" value="Delete">
						</form>
		            </td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
			<form:form action="/languages/new" method="post" modelAttribute="languages">
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
			</form:form>   
	</div>



</body>
</html>