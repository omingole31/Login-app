<%@page import="test.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: #333;
        margin-bottom: 10px;
    }
    p {
        font-size: 18px;
        color: #555;
    }
    .nav-links {
        margin-top: 30px;
    }
    .nav-links a {
        text-decoration: none;
        color: white;
        background-color: #007BFF;
        padding: 12px 20px;
        margin: 10px;
        border-radius: 5px;
        display: inline-block;
        transition: background-color 0.3s ease;
    }
    .nav-links a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%
    AdminBean bean = (AdminBean) application.getAttribute("bean");
%>
<div class="container">
    <h1>Login Successful</h1>
    <p>Welcome, <strong><%= bean.getAdname() %></strong></p>

    <div class="nav-links">
        <a href="product.html">Add Product</a>
        <a href="viewAllProducts">View All Products</a>
        <a href="logout">Logout</a>
    </div>
</div>
</body>
</html>
