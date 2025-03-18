<!DOCTYPE html>
<html>
<head>
    <title>Application Success</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 20px;
            font-family: Arial, sans-serif;
        }
        .success-message {
            text-align: center;
            margin-top: 50px;
        }
        .links {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container success-message">
        <h1 class="alert alert-success">Loan Application Submitted Successfully!</h1>
        <div class="links">
            <a href="${pageContext.request.contextPath}/loanApplications/applyForLoan" class="btn btn-primary">Apply for another loan</a><br><br>
            <a href="${pageContext.request.contextPath}/loanApplications/index" class="btn btn-secondary">Home</a>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
