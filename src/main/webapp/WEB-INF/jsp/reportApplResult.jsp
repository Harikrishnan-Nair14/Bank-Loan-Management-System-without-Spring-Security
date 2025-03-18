<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <title>${reportTitle} - Repayment Report</title>
</head>
<body>
    <h1>${reportTitle}</h1>
    <h2>Repayment Report</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Repayment ID</th>
                <th>Loan Application ID</th>
                <th>Due Date</th>
                <th>Amount Due</th>
                <th>Payment Date</th>
                <th>Payment Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="repayment" items="${repaymentReport}">
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
</body>
</html>
