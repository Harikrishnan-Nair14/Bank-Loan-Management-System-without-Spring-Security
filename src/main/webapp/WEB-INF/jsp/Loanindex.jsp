<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Product Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://www.example.com/background.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 20px;
            margin-top: 50px;
            text-align: center;
        }
        .navbar a {
            margin: 10px;
        }
        h2 {
            margin-bottom: 30px;
        }
        button {
            margin-top: 10px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Loan Product Management</h2>
        <nav class="navbar mb-4 justify-content-center">
            <a href="${pageContext.request.contextPath}/loanProducts/add" class="btn btn-primary">Add Loan Product</a>
            <a href="${pageContext.request.contextPath}/loanProducts/updateLoanProduct" class="btn btn-primary">Update Loan Product</a>
            <a href="${pageContext.request.contextPath}/loanProducts/all" class="btn btn-primary">View All Loan Products</a>
        </nav>
     
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
