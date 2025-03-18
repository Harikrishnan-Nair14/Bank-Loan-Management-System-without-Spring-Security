<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Repayment Details</title>
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
        .button {
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
        .button-main-menu, .button-check-status {
            background-color: #4CAF50; /* Green */
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
    <h2>Repayment Details</h2>
    <c:choose>
        <c:when test="${empty repayments}">
            <p>No repayments found for the provided application ID.</p>
        </c:when>
        <c:otherwise>
            <table>
                <tr>
                    <th>Repayment ID</th>
                    <th>Due Date</th>
                    <th>Amount Due</th>
                    <th>Payment Date</th>
                    <th>Payment Status</th>
                </tr>
                <c:forEach var="repayment" items="${repayments}">
                    <tr>
                        <td>${repayment.repaymentId}</td>
                        <td>${repayment.dueDate}</td>
                        <td>${repayment.amountDue}</td>
                        <td>${repayment.paymentDate}</td>
                        <td>${repayment.paymentStatus}</td>
                    </tr>
                </c:forEach>
            </table>
            <br>
            <a href="${pageContext.request.contextPath}/Home" class="button button-main-menu">Main Menu</a>
            <a href="/reports/repayment" class="button button-check-status">Check Another Status</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
