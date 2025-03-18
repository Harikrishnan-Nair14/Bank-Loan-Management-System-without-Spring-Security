<!DOCTYPE html>
<html>
<head>
    <title>Update Success</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .success-message {
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 20px;
            text-decoration: none;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Loan Product Updated Successfully!</h1>
        <div class="success-message">
            <p><strong>Product ID:</strong> ${updatedLoanProduct.loanProductId}</p>
            <p><strong>Product Name:</strong> ${updatedLoanProduct.productName}</p>
            <p><strong>Interest Rate:</strong> ${updatedLoanProduct.interestRate}</p>
            <p><strong>Min Amount:</strong> ${updatedLoanProduct.minAmount}</p>
            <p><strong>Max Amount:</strong> ${updatedLoanProduct.maxAmount}</p>
            <p><strong>Tenure:</strong> ${updatedLoanProduct.tenure} months</p>
        </div>
        <a href="${pageContext.request.contextPath}/loanProducts/all" class="btn btn-custom">Back</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
