<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Application Status</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
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
    </style>
</head>
<body>
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/loanApplications/getApplicationStatus" method="post" class="form">
            <h1>Get Application Status</h1>
            <div class="form-group row">
                <label for="applicationId" class="col-sm-4 col-form-label">Application ID:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="applicationId" name="applicationId" required>
                </div>
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">Check Status</button>
                <a href="${pageContext.request.contextPath}/loanApplications/index" class="btn btn-info">Home</a>
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
