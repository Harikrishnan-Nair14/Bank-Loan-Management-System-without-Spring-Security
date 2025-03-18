<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<style>
.form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
   /*  background: linear-gradient(135deg, #6b73ff, #000dff); */
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
.error {
    color: #ff3333;
}
</style>
</head>
<body>
<%@ page isErrorPage="true" %>
<%
if (exception != null)
    out.print(exception.getMessage());
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="form-container">
    <form:form modelAttribute="customer" action="customerPost" cssClass="form" method="post">
        <h1>Customer Form</h1>
        <div class="form-group row">
           <%--  <form:label cssClass="col-sm-4 col-form-label" path="customerId">Enter Id</form:label>
            <div class="col-sm-8">
                <form:input path="customerId" cssClass="form-control"></form:input>
                <form:errors path="customerId" cssClass="error"></form:errors>
            </div>
        </div>  --%>
        
        <div class="form-group row">
            <form:label cssClass="col-sm-4 col-form-label" path="name">Enter Name</form:label>
            <div class="col-sm-8">
                <form:input path="name" cssClass="form-control"></form:input>
                <form:errors path="name" cssClass="error"></form:errors>
            </div>
        </div>
        
        <div class="form-group row">
            <form:label cssClass="col-sm-4 col-form-label" path="email">Enter Email</form:label>
            <div class="col-sm-8">
                <form:input path="email" cssClass="form-control"></form:input>
                <form:errors path="email" cssClass="error"></form:errors>
            </div>
        </div>
        
        <div class="form-group row">
            <form:label cssClass="col-sm-4 col-form-label" path="phone">Enter Phone</form:label>
            <div class="col-sm-8">
                <form:input path="phone" cssClass="form-control"></form:input>
                <form:errors path="phone" cssClass="error"></form:errors>
            </div>
        </div>
        
        <div class="form-group row">
            <form:label cssClass="col-sm-4 col-form-label" path="address">Enter Address</form:label>
            <div class="col-sm-8">
                <form:input path="address" cssClass="form-control"></form:input>
                <form:errors path="address" cssClass="error"></form:errors>
            </div>
        </div>
        
        <div class="form-group row">
            <form:label cssClass="col-sm-4 col-form-label" path="kycStatus">KYC Status</form:label>
            <div class="col-sm-8">
                <form:select path="kycStatus" cssClass="form-control">
                    <form:option value="PENDING" label="PENDING" />
                    <form:option value="VERIFIED" label="VERIFIED" />
                </form:select>
                <form:errors path="kycStatus" cssClass="error"></form:errors>
            </div>
        </div>

        <div class="form-group text-center">
            <input type="submit" name="operation" value="Submit" class="btn btn-primary">
            <input type="reset" value="Clear All" class="btn btn-secondary">
            <a href="Home page" class="btn btn-info">HOME PAGE</a>
        </div>
    </form:form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
