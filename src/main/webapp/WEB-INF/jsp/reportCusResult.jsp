<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .main-menu {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <a href="${pageContext.request.contextPath}/Home" class="btn btn-secondary main-menu">Main Menu</a>
    <h2>Customer Details</h2>
    <c:if test="${not empty customer}">
        <p><strong>Customer ID:</strong> ${customer.customerId}</p>
        <p><strong>Name:</strong> ${customer.name}</p>
        <p><strong>Email:</strong> ${customer.email}</p>
        <p><strong>Phone:</strong> ${customer.phone}</p>
        <p><strong>Address:</strong> ${customer.address}</p>
        <p><strong>KYC Status:</strong> ${customer.kycStatus}</p>
        
        <h3>Loan Applications</h3>
        <table>
            <tr>
                <th>Application ID</th>
                <th>Loan Amount</th>
                <th>Loan Product</th>
            </tr>
            <c:forEach var="loanApplication" items="${loanApplications}">
                <tr>
                    <td>${loanApplication.applicationId}</td>
                    <td>${loanApplication.loanAmount}</td>
                    <td>${loanApplication.loanProduct.productName}</td>
                </tr>
            </c:forEach>
        </table>
        
        <h3>Loan Products</h3>
        <table>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Interest Rate</th>
                <th>Min Amount</th>
                <th>Max Amount</th>
                <th>Tenure</th>
            </tr>
            <c:forEach var="loanProduct" items="${loanProducts}">
                <tr>
                    <td>${loanProduct.loanProductId}</td>
                    <td>${loanProduct.productName}</td>
                    <td>${loanProduct.interestRate}</td>
                    <td>${loanProduct.minAmount}</td>
                    <td>${loanProduct.maxAmount}</td>
                    <td>${loanProduct.tenure}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <c:if test="${empty customer}">
        <p>No customer found with the provided ID.</p>
    </c:if>
</body>
</html>
