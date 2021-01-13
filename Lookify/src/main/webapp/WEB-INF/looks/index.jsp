<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Lookify</title>
</head>
<body>
<div class="container">
<div class="row">
<a href="songs/new" class="mr-4">Add New</a>
<a href="search/topTen">Top Songs</a>
</div>
<div class="row">
<table class="table table-bordered mt-5">
    <thead>
        <tr>
            <th>Title</th>
            <th>Rating</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${songs}" var="song">
        <tr>
            <td><a href="/songs/show/${song.id}"><c:out value="${song.title}"/></a></td>
            <td><c:out value="${song.rating}"/></td>
            <td><form action="/songs/${song.id}" method="post">
					<div class="form-group mt-4">
    				<input type="hidden" name="_method" value="delete">
    				<input type="submit" value="Delete">
    				</div>
				</form></td>
        </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</div>
</body>
</html>