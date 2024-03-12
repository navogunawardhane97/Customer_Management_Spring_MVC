<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="style.css"> <!-- Link to your external CSS file -->

</head>
<body>


	<div class="container mt-3">
	
		<div class="row p-2" style="background-color: #87CEEB;">
			<div class="col-md-12 bg-light text-center">	
				<h1> Customer Records</h1>
			</div>
		</div>
		
		<div class="row p-2">
        	<div class="col-md-12 bg-light text-right">
        		<a href="addCustomer" class="btn btn-primary"> Add Customer </a>
        	</div>
       	</div>
        
		
		<div class="row">

			<table class="table table-striped table-hover">
				<thead>
					<tr class="table-info">
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Address</th>
						<th scope="col">Description</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cust" items="${customer}">
						<tr>
							<td class="table-plus">${cust.id}</td>
							<td>${cust.name}</td>
							<td>${cust.email}</td>
							<td>${cust.phoneNo}</td>
							<td>${cust.address}</td>
							<td>${cust.description}</td>
							
							
							<td><a href="editCustomer/${cust.id}" class="btn btn-outline-info">
									Edit </a></td>
							<td><a href="deleteCustomer/${cust.id}"
								class="btn btn-outline-danger"> Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>