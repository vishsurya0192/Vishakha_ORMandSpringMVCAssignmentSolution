<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	
<title>Customer Form</title>
</head>
<body>
	<div class="container">
		<h3
			style="background-color: #0dd70d; color: #fff; font-weight: bold; padding-left: 10px; margin-top: 10px; height: 50px; padding-top: 8px;">Customer Relationship Management</h3>
		<hr>
		<form action="/CustomerRelationshipManagement/customer/save" method="POST">
		
		<input type="hidden" name="id" value="${Customer.id}" />
			<div class="form-inline">
				<input type="text" name="firstName" value="${Customer.firstName}"
					class="form-control mb-4 col-4" placeholder="firstName">
			</div>
			<div class="form-inline">
				<input type="text" name="lastName" value="${Customer.lastName}"
					class="form-control mb-4 col-4" placeholder="lastName">
			</div>
			<div class="form-inline">
				<input type="text" name="email" value="${Customer.email}"
					class="form-control mb-4 col-4" placeholder="email">
			</div>
			<button type="submit" class="btn btn-info col-2">save</button>
		</form>
		<hr>
		<a href="/CustomerRelationshipManagement/customer/list">Back to
			Customer List</a>
	</div>		

</body>
</html>