<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<style>
h1{
font-family: 'Times New Roman', serif;
color: Blue;
}
</style>
</head>
<body>


	<div class="container mt-3">

		
		<div class="row p-2 text-bg-primary p-3">
			<div class="col-md-12 bg-light text-center ">	
				<h1>Edit Customer</h1>
			</div>
		</div>
		
		<form action="updateCustomer" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<input type="hidden" value="${customer.id}" class="form-control" id="id" name="id"
							readonly="readonly" >
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							value="${customer.name }" class="form-control" id="name"
							name="name" placeholder="Enter Name" style="border-width: 3px;">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="email">Email</label> <input type="text"
							value="${customer.email }" class="form-control"
							id="email" name="email"
							placeholder="Enter Email"style="border-width: 3px;">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="phoneNo">Phone Number</label> <input
							type="text" class="form-control" id="phoneNo"
							value="${customer.phoneNo }" name="phoneNo"
							placeholder="Enter Phone Number" style="border-width: 3px;">
					</div>
				</div>
				
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address" style="border-width: 3px;"> ${customer.address } </textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="description">Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="5" placeholder="Enter Description" style="border-width: 3px;"> ${customer.description } </textarea>
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-success">Submit</button>
		</form>

	</div>

</body>
</html>