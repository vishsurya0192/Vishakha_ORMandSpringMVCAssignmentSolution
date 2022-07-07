<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Directory</title>
</head>
<body>
<div class="container">
	<h3 style="background-color: #0dd70d; color: #fff; font-weight: bold; padding-left: 10px; margin-top: 10px; height: 50px; padding-top: 8px;">Customer Relationship Management</h3>
	<hr>
	<form action="/CustomerRelationshipManagement/customer/save" class="form-inline">
	
	<!-- add button -->
	<a href="/CustomerRelationshipManagement/customer/showFormForAdd" 
	class="btn btn-primary btn-sm mb-3"> Add Customer </a>
	</form> 
	
<table class="table table-bordered table-striped"
			style="text-align: center;">
			<thead class="thead-dark">
				<tr>
					<!--  <th>id</th> -->
					<th>firstName</th>
					<th>lastName</th>
					<th>email</th>
					<th>action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Customer}" var="tempCustomer">
				<tr>
				<!--  <td><c:out value="${tempCustomer.id}"/></td>-->
				<td><c:out value="${tempCustomer.firstName}"/></td>
				<td><c:out value="${tempCustomer.lastName}"/></td>
				<td><c:out value="${tempCustomer.email}"/></td>
				<td>
					<!-- Add"update" button/link -->
					<a href="/CustomerRelationshipManagement/customer/showFormForUpdate?id=${tempCustomer.id}"
	class="btn btn-info btn-sm"> Update</a>
	<a href="/CustomerRelationshipManagement/customer/delete?id=${tempCustomer.id}"
	class="btn btn-danger btn-sm"
	onclick="if(!(confirm('Are you sure you want to delete this Customer?'))) return false">
	Delete</a>
	</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>

</div>

</body>
</html>