<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Code</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
	<div class="jumbotron">
		<form method="POST" action="/validatecode">
			<h1 class="display-4">What is the code?</h1>
			<p class="lead">Please enter the code to view the secret page.</p>
			
			<p style="color:red"><c:out value="${error}"/></p>
			
			<hr class="my-4">
			<p class="lead">
				<input type="text" class="form-control" id="validationTooltip01" placeholder="Code Here" name="code" required>
			    <input class="btn btn-primary btn-md" type="submit" value="Try Code">
		  	</p>
	  	</form>
	</div>
</body>
</html>