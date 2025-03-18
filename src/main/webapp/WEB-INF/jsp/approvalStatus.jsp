<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approval Status</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
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
        .status {
            font-size: 1.5em;
            color: green;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form">
            <h1>Approval Status</h1>
            <p class="status">Status: ${approvalStatus}</p>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
