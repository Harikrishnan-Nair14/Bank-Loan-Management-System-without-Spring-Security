<%@page import="com.example.model.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<style>
    .form {
        font-family: Arial, sans-serif;
        margin: 20px;
    }
    table {
        border-collapse: collapse;
        width: 100%;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 12px;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
</style>
</head>

<body>
<a href="Home page" class="btn btn-info">HOME PAGE</a>
    <div class="form">
        <%
            List<Customer> allCustomers = (List<Customer>) request.getAttribute("showall");

            out.print("<table>");
            out.print("<tr>");
            out.print("<th>Id</th>");
            out.print("<th>Name</th>");
            out.print("<th>Email</th>");
            out.print("<th>Phone</th>");
            out.print("<th>Address</th>");
            out.print("<th>KYC Status</th>");
            out.print("<th>Actions</th>");
            out.print("</tr>");

            for (Customer customer : allCustomers) {
                out.print("<tr>");
                out.print("<td>" + customer.getCustomerId() + "</td>");
                out.print("<td>" + customer.getName() + "</td>");
                out.print("<td>" + customer.getEmail() + "</td>");
                out.print("<td>" + customer.getPhone() + "</td>");
                out.print("<td>" + customer.getAddress() + "</td>");
                out.print("<td>" + customer.getKycStatus() + "</td>");
                out.print("<td>");
                out.print("<a href='updateCustomerForm?id=" + customer.getCustomerId() + "' class='btn btn-warning'>Update</a>");
                out.print("&nbsp;");
                out.print( "<a href='deleteCustomer?id=" + customer.getCustomerId() + "' class='btn btn-danger' onclick='return confirm(\"Are you sure you want to delete this customer?\")'>Delete</a>");
             
               

                out.print("</td>");
                out.print("</tr>");
            }
            out.print("</table>");
        %>
    </div>
</body>
</html>
