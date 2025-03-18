<!DOCTYPE html>
<html>
<head>
    <title>Bank Loan Management System</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fffff66;
            padding-top: 60px;
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
            color: #9A6735;
        }
        .module-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin-top: 40px;
        }
        .module-box {
            width: 45%;
            padding: 40px;
            margin: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent background */
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.2s;
        }
        .module-box:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .module-box h2 {
            color: #023D54;
            margin-bottom: 20px;
        }
        .navbar-dark.bg-blue {
            background-color: #023D54;
        }
        .nav-link {
            color: #ffffff !important; /* White color */
        }
        .dropdown-menu {
            background-color: #023D54;
        }
        .dropdown-item {
            color: #ffffff !important;
        }
        .nav-item-space {
            margin-right: 50px; /* Adjust the margin value as needed */
        }
        .btn-access {
            background-color: #55c2da;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-blue fixed-top">
        <a class="navbar-brand" href="#">Bank Loan Management System</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <!-- <li class="nav-item"><a class="nav-link" href="Home page">Customer Management</a></li>
                <li class="nav-item"><a class="nav-link" href="/loanProducts/index">Loan Product Management</a></li>
                <li class="nav-item"><a class="nav-link" href="/loanApplications/index">Loan Application Management</a></li>
                 -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="reportDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Report</a>
                    <div class="dropdown-menu" aria-labelledby="reportDropdown">
                        <a class="dropdown-item" href="/reports/customer">LoanReport</a>
                        <a class="dropdown-item" href="/reports/repayment">RepaymentReport</a>
                        <a class="dropdown-item" href="/repayment/list">OutstandingReport</a>
                    </div>
                </li>
                <li class="nav-item nav-item-space"><a class="nav-link" href="#">BLMS</a></li>
            </ul>
        </div>
    </nav>

    <div class="module-container">
        <div class="module-box">
            <h2>Customer Management</h2>
            <p>This module focuses on customer account creation, KYC (Know Your Customer) verification, and account maintenance. It acts as the foundation for associating customers with loan applications.</p>
            <a href="Home page" class="btn btn-access">Access</a>
        </div>
        <div class="module-box">
            <h2>Loan Product Management</h2>
            <p>This module is designed for managing loan products offered by the bank, such as personal loans, home loans, and vehicle loans. It includes details like interest rates, tenures, and eligible amounts.</p>
            <a href="/loanProducts/all" class="btn btn-access">Access</a>
        </div>
        <div class="module-box">
            <h2>Loan Application Management</h2>
            <p>This module facilitates customers to apply for loans. It manages loan application workflows, from submission to approval or rejection, and tracks associated details like loan products and requested amounts.</p>
            <a href="/loanApplications/index" class="btn btn-access">Access</a>
        </div>
        <div class="module-box">
            <h2>Repayment Management</h2>
            <p>The repayment management module automates the creation of repayment schedules, records payments, and calculates outstanding balances. It ensures timely tracking and compliance with repayment terms.</p>
            <a href="/repayment/form" class="btn btn-access">Access</a>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
