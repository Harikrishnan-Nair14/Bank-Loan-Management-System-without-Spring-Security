<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Status</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .status-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('https://www.example.com/background.jpg');
            background-size: cover;
            background-position: center;
        }
        .status-content {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            color: #333;
            width: 100%;
            max-width: 600px;
        }
        .status-content h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .status-content p {
            font-size: 16px;
            margin: 10px 0;
        }
        .status-content a {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="status-container">
        <div class="status-content">
            <h1>Application Status</h1>
            <c:if test="${not empty loanApplication}">
                <p>Application ID: ${loanApplication.applicationId}</p>
                <p>Customer ID: ${loanApplication.customer.customerId}</p>
                <p>Loan Product ID: ${loanApplication.loanProduct.loanProductId}</p>
                <p>Loan Amount: ${loanApplication.loanAmount}</p>
                <p>Application Date: ${loanApplication.applicationDate}</p>
                <p>Approval Status: ${loanApplication.approvalStatus}</p>
            </c:if>
            <c:if test="${empty loanApplication}">
                <p>No application found with the provided ID.</p>
            </c:if>
            <a href="${pageContext.request.contextPath}/loanApplications/getApplicationStatus" class="btn btn-info">Check another status</a>
            <a href="${pageContext.request.contextPath}/loanApplications/index" class="btn btn-secondary">Home</a>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
