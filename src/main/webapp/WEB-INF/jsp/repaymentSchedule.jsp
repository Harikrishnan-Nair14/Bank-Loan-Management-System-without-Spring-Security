<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repayment Schedule</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #f8f9fa;
        }
        .form {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            color: #333;
            font-family: Arial, sans-serif;
            width: 100%;
            max-width: 800px;
        }
        .form h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .table-container {
            margin-bottom: 30px;
        }
        .table thead th {
            background-color: #4CAF50;
            color: white;
        }
        .table tbody tr:nth-child(even) {
            background-color: #e6f7ff;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
        .btn-info {
            background-color: #17a2b8;
            border-color: #17a2b8;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form">
            <h1>Repayment Schedule</h1>
            <div class="table-container">
                <table class="table table-striped">
                    <thead>
                        <tr>
                          <th>Repayment ID</th>
                            <th>Due Date</th>
                            <th>Amount</th>
                           <!--  <th>Status</th> -->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="repayment" items="${repaymentSchedule}">
                            <tr>
                            <td>${repayment.repaymentId}</td>
                                <td>${repayment.dueDate}</td>
                                <td>${repayment.amountDue}</td>
                             <%--    <td>${repayment.paymentStatus}</td> --%>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        <!--     <form action="/repayment/makePayment" method="post">
                <div class="form-group row">
                    <label for="repaymentId" class="col-sm-4 col-form-label">Repayment ID:</label>
                    <div class="col-sm-8">
                        <input type="text" id="repaymentId" name="repaymentId" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="paymentDate" class="col-sm-4 col-form-label">Payment Date:</label>
                    <div class="col-sm-8">
                        <input type="date" id="paymentDate" name="paymentDate" class="form-control" required>
                    </div>
                </div> -->
                <div class="form-group text-center">
                    <!-- <button type="submit" class="btn btn-primary">Make Payment</button> -->
               <!--      <button type="reset" class="btn btn-secondary">Clear All</button> -->
                    <a href="${pageContext.request.contextPath}/Home" class="btn btn-secondary main-menu">MAIN MENU</a>
                    <a href="/repayment/makePayment" class="btn btn-primary">MAKE PAYMENT</a>
                </div>
            </form>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
