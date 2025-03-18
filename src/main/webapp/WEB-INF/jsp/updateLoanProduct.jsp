<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Loan Product</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('https://www.example.com/background.jpg');
            background-size: cover;
            background-position: center;
        }
        .form {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            color: #333;
            width: 100%;
            max-width: 600px;
        }
        .form h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .error-message {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/loanProducts/updateLoanProduct" method="post" class="form">
            <h1>Update Loan Product</h1>
            <c:if test="${not empty errorMessage}">
                <p class="error-message">${errorMessage}</p>
            </c:if>
            <div class="form-group row">
                <label for="loanProductId" class="col-sm-4 col-form-label">Loan Product ID:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="loanProductId" name="loanProductId" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="productName" class="col-sm-4 col-form-label">Product Name:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="productName" name="productName" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="interestRate" class="col-sm-4 col-form-label">Interest Rate:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="interestRate" name="interestRate" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="minAmount" class="col-sm-4 col-form-label">Min Amount:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="minAmount" name="minAmount" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="maxAmount" class="col-sm-4 col-form-label">Max Amount:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="maxAmount" name="maxAmount" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="tenure" class="col-sm-4 col-form-label">Tenure (in months):</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="tenure" name="tenure" required>
                </div>
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrap.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
