<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<body>
<div class="container">
<div class="row">
<h4>Top Ten Songs:</h4>

<a href="/dashboard">Dashboard</a>

<div class="row">
<table class="table table-bordered mt-5">
    <thead>
        <tr>
            <th>Title</th>
            <th>Artist</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${top10songs}" var="song">
        <tr>
            <td><a href="/songs/show/${song.id}"><c:out value="${song.title}"/></a></td>
            <td><c:out value="${song.artist}"/></td>
        </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</div>
</div>
</body>
</html>