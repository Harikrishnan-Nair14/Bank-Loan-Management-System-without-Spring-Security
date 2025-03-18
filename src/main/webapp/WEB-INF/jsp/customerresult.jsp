<%@page import="com.example.model.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Details</title>
<style>
.form {
    border: solid;
    padding: 50pt;
    background: lightyellow;
    width: 50%;
    margin-left: 200pt;
    border-radius: 20pt;
    margin-top: 50pt;
}
.label {
    float: left;
    width: 100pt;
}
.error {
    color: red;
}
.message {
    color: green;
    font-weight: bold;
    margin-top: 20pt;
}
table, tr, td, th {
    border: solid;
    border-collapse: collapse;
    padding: 8pt;
}
th {
    background-color: #f2f2f2;
}
.home-button {
    margin-top: 20pt;
}
</style>
</head>
<body>
<% if(session.isNew()) { %>
    <div class="form">
        <h2 class="error">Your Session has expired</h2>
        <p><a href="Home page" class="btn btn-primary">Start Again</a></p>
    </div>
<% } else { %>
    <div class="form">
        <%
        String operation = session.getAttribute("operation").toString();
        if (operation.equals("show all customers")) {
            List<Customer> allCustomers = (List<Customer>) request.getAttribute("showall");
            out.print("<table>");
            out.print("<tr>");
            out.print("<th>Id</th>");
            out.print("<th>Name</th>");
            out.print("<th>Email</th>");
            out.print("<th>Phone</th>");
            out.print("<th>Address</th>");
            out.print("<th>KYC Status</th>");
            out.print("</tr>");
            for (Customer customer : allCustomers) {
                out.print("<tr><td>" + customer.getCustomerId() + "</td><td>" + customer.getName() + "</td><td>"
                + customer.getEmail() + "</td><td>" + customer.getPhone() + "</td><td>" + customer.getAddress() 
                + "</td><td>" + customer.getKycStatus() + "</td></tr>");
            }
            out.print("</table>");
        } else if (operation.equals("Search product")) {
            out.println("<h1 class=\"message\">Record Found</h1>");
            Customer customer = (Customer) request.getAttribute("Search");
            out.print("<table>");
            out.print("<tr>");
            out.print("<th>Id</th>");
            out.print("<th>Name</th>");
            out.print("<th>Email</th>");
            out.print("<th>Phone</th>");
            out.print("<th>Address</th>");
            out.print("<th>KYC Status</th>");
            out.print("</tr>");
            out.print("<tr>"
                    + "<td>" + customer.getCustomerId() + "</td>"
                    + "<td>" + customer.getName() + "</td>"
                    + "<td>" + customer.getEmail() + "</td>"
                    + "<td>" + customer.getPhone() + "</td>"
                    + "<td>" + customer.getAddress() + "</td>"
                    + "<td>" + customer.getKycStatus() + "</td>"
                    + "</tr>");
            out.print("</table>");
        } else if (operation.equals("Submit")) {
            out.println("<h1 class=\"message\">Record Added</h1>");
        } else if (operation.equals("update")) {
            Customer customer = (Customer) request.getAttribute("updateCustomer");
            out.println("<h1 class=\"message\">Record Updated</h1>");
            out.println("<h2>Updated Record is</h2>" + "<tr>"
                    + "<td>" + customer.getCustomerId() + "</td>"
                    + "<td>" + customer.getName() + "</td>"
                    + "<td>" + customer.getEmail() + "</td>"
                    + "<td>" + customer.getPhone() + "</td>"
                    + "<td>" + customer.getAddress() + "</td>"
                    + "<td>" + customer.getKycStatus() + "</td>"
                    + "</tr>");
        }
        %>
        <p><a href="Home page" class="btn btn-info">Home Page</a></p>
    </div>
<% } %>
</body>
</html>
