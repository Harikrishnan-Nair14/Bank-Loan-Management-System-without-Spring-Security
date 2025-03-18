<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BANK LOAN MANAGEMENT SYSTEM</title>
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
        h1 {
            margin-bottom: 30px;
        }
        form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="mb-4">
            <h1>HANDLE CUSTOMER</h1>
            <img src="https://cdn-icons-png.flaticon.com/128/3781/3781699.png" alt="Logo" style="max-height: 50px;">
        </div>
        
        <nav class="navbar mb-4 justify-content-center">
            <a href="customerForm" class="btn btn-primary">CREATE CUSTOMER PROFILE</a>
            <a href="updateCustomerForm" class="btn btn-primary">UPDATE CUSTOMER PROFILE</a>
            <a href="customerProfile" class="btn btn-primary">VIEW ALL CUSTOMERS</a>
             <a href="Home">MAIN MENU</a>
            <!-- <a href="customersearch" class="btn btn-primary">SEARCH CUSTOMER PROFILE</a> -->
        </nav>

        <!-- <form action="searchByid" method="get" class="mb-4">
            <div class="form-group">
                <label for="customerId">Customer ID:</label>
                <input type="text" class="form-control" name="id" id="id" required>
            </div>
            <button type="submit" name="operation" value="View Details" class="btn btn-success">View Details</button>
            <input type="submit" name="operation" value="Search product">
        </form> -->

        <form action="customersearch" method="post">
            <div class="form-group">
                <label for="customerId">Customer ID:</label>
                <input type="text" class="form-control" name="id" id="id" required>
            </div>
            <button type="submit" name="operation" value="Search product" class="btn btn-success">View Details</button>
            <!-- <input type="submit" name="operation" value="Search product"> -->
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
