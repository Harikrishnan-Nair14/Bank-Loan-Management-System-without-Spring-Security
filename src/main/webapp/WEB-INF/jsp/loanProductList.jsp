<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Products</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        h2 {
            margin-bottom: 30px;
            color: #333;
            text-align: center;
        }
        .card {
            border: none;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .card-title {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #008000; /* Pale Green */
        }
        .card-text {
            font-size: 1rem;
            line-height: 1.5;
            color: #333;
        }
        .btn-update {
            margin-top: 10px;
            width: 100%;
        }
        .add-button {
            margin-bottom: 20px;
        }
        .btn-add-product {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            padding: 10px 20px;
            cursor: pointer;
        }
        .main-menu {
            position: absolute;
            top: 20px;
            right: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>LOAN PRODUCTS</h2>
    <div class="row add-button">
        <div class="col-md-12">
            <a href="${pageContext.request.contextPath}/loanProducts/add" class="btn btn-add-product">Add Loan Product</a>
        </div>
    </div>
    <div class="row">
        <c:forEach var="loanProduct" items="${loanProducts}">
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">ID: ${loanProduct.loanProductId}</h5>
                        <p class="card-text">
                            <strong>Product Name:</strong> ${loanProduct.productName}<br/>
                            <strong>Interest Rate:</strong> ${loanProduct.interestRate}%<br/>
                            <strong>Minimum Amount:</strong> ${loanProduct.minAmount}<br/>
                            <strong>Maximum Amount:</strong> ${loanProduct.maxAmount}<br/>
                            <strong>Tenure (in months):</strong> ${loanProduct.tenure}<br/>
                        </p>
                        <a href="${pageContext.request.contextPath}/loanProducts/updateLoanProduct?loanProductId=${loanProduct.loanProductId}" class="btn btn-primary btn-update">Update Loan Product</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<a href="${pageContext.request.contextPath}/Home" class="btn btn-secondary main-menu">MAIN MENU</a>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
