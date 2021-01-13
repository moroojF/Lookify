<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>
<div class="container">
<div class="row text-right">
<a href="/dashboard">Dashboard</a>
</div>
<div class="row text-center">
<div class="card mt-5">
<div class="card-body">
<h3 class="card-title">Title:</h3>
<p class="card-title">
${song.title}.
</p>
<h4>Artist:</h4>  
<p class="card-text">
${song.artist}.
</p>
<h4>Rating (1-10):</h4>  
<p class="card-text">
${song.rating}.
</p>
</div>
</div>
<form action="/songs/${song.id}" method="post">
	<div class="form-group mt-4">
    <input type="hidden" name="_method" value="delete">
    <input type="submit" value="Delete">
    </div>
</form>
</div>
</div>
</body>
</html>