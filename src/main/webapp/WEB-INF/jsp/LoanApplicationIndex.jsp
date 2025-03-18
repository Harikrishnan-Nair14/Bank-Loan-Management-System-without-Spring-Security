<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Application Management</title>
    <!-- Bootstrap CSS -->
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
        <h2>Loan Application Management</h2>
        <nav class="navbar mb-4 justify-content-center">
            <a href="${pageContext.request.contextPath}/loanApplications/applyForLoan" class="btn btn-primary">Apply for Loan</a>
            <a href="${pageContext.request.contextPath}/loanApplications/getApplicationStatus" class="btn btn-primary">Get Application Status</a>
            <a href="${pageContext.request.contextPath}/loanApplications/viewAllLoans" class="btn btn-primary">View All Applications</a>
        </nav>
        <a href="${pageContext.request.contextPath}/Home" class="btn btn-secondary">          MAIN MENU       </a>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
