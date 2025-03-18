<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make Payment</title>
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
            max-width: 600px;
        }
        .form h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form">
            <h1>Make Payment</h1>
            <form action="/repayment/pay" method="post">
                <div class="form-group">
                    <label for="repaymentId">Repayment ID:</label>
                    <input type="text" id="repaymentId" name="repaymentId" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="paymentDate">Payment Date:</label>
                    <input type="date" id="paymentDate" name="paymentDate" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="payAmount">Pay Amount:</label>
                    <input type="number" id="payAmount" name="payAmount" class="form-control" step="0.01" required>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary">Submit Payment</button>
                    <button type="reset" class="btn btn-secondary">Reset</button>
                      <a href="/Home" class="btn btn-info">HOME PAGE</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
