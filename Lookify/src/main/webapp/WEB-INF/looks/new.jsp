<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Add Song</title>
</head>
<body>
<div class="container">
<div class="row text-right">
<a href="/dashboard">Dashboard</a>
</div>
<div class="row">
<form:form action="/songs" method="post" modelAttribute="song">
	<div class="form-group mt-4">
        <form:label path="title">Title</form:label>
        <form:errors path="title"/>
        <form:input class="form-control" path="title"/>
	</div>
	<div class="form-group mt-3">
        <form:label path="artist">Artist</form:label>
        <form:errors path="artist"/>
        <form:input class="form-control" path="artist"/>
    </div>
	<div class="form-group mt-3">
        <form:label path="rating">Rating</form:label>
        <form:errors path="rating"/>
        <form:input class="form-control" type="number" min="1" max="10" path="rating"/>
	</div>
    <input type="submit" value="Submit" class="btn btn-dark mt-3"/>
</form:form></div>
</div>
</body>
</html>