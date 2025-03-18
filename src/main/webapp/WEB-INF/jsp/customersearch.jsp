<%@page import="com.example.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Page</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>




	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

<%-- <%  
Customer customer=(Customer)   request.getAttribute("Search");
if(customer!=null)
{
	out.println(" found "+customer.getCustomerId()+" \t"+customer.getName());
}

%> --%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<c:if test="${not empty customer}">

 <div class="container mt-5" id="id1" >
		<div class="card">
			<div class="card-header bg-primary text-white">
				<h2>Customer Account Details</h2>
			</div>
			<div class="card-body">
				<div class="row mb-3">
					<div class="col-sm-4">
						<strong>Id:</strong>
					</div>
					<div class="col-sm-8">${customer.customerId}</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-4">
						<strong>Name:</strong>
					</div>
					<div class="col-sm-8">${customer.name}</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-4">
						<strong>Address:</strong>
					</div>
					<div class="col-sm-8">${customer.address}</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-4">
						<strong>Contact Number:</strong>
					</div>
					<div class="col-sm-8">${customer.phone}</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-4">
						<strong>KYC Status:</strong>
					</div>
					<div class="col-sm-8">${customer.kycStatus}</div>
				</div>
			</div>
		</div>
</c:if>

<div style="text-align: center; font-family: Arial, sans-serif; color: #333;">
    <c:if test="${empty customer}">
        <c:if test="${hi1=='greeting'}">
            Id not found
        </c:if>
    </c:if>
</div>



<c:if test="${empty customer}">
	<c:if test="${hi=='welcome'}">
	</c:if>
</c:if>
<div>
<a href="Home page" class="btn btn-info">HOME PAGE</a>
</div>




