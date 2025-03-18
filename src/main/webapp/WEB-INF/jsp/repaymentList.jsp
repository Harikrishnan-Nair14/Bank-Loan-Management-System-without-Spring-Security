<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repayment List</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table-container {
            margin: 30px auto;
            width: 80%;
        }
        .table thead th {
            background-color: #4CAF50;
            color: white;
        }
        .table tbody tr:nth-child(even) {
            background-color: #e6f7ff;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <h1 class="text-center">Repayment List</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Repayment ID</th>
                    <th>Application ID</th>
                    <th>Due Date</th>
                    <th>Amount Due</th>
                    <th>Payment Date</th>
                    <th>Payment Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="repayment" items="${repaymentList}">
                    <tr>
                        <td>${repayment.repaymentId}</td>
                        <td>${repayment.loanApplication.applicationId}</td>
                        <td>${repayment.dueDate}</td>
                        <td>${repayment.amountDue}</td>
                        <td>${repayment.paymentDate}</td>
                        <td>${repayment.paymentStatus}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="form-group text-center">
             
                    <a href="/Home" class="btn btn-info">HOME PAGE</a>
                    <a href="/repayment/makePayment" class="btn btn-primary">MAKE PAYMENT</a>
                </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
