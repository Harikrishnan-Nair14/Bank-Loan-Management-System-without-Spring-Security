<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>All Loan Applications</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        h1 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            margin-bottom: 20px;
        }
        .home-link {
            display: inline-block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">All Loan Applications</h1>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Application ID</th>
                    <th>Customer ID</th>
                    <th>Loan Product ID</th>
                    <th>Loan Amount</th>
                    <th>Application Date</th>
                    <th>Approval Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="application" items="${loanApplications}">
                    <tr>
                        <td>${application.applicationId}</td>
                        <td>${application.customer.customerId}</td>
                        <td>${application.loanProduct.loanProductId}</td>
                        <td>${application.loanAmount}</td>
                        <td>${application.applicationDate}</td>
                        <td>${application.approvalStatus}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/loanApplications/index" class="btn btn-primary home-link">Home</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
