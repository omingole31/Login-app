<%@page import="test.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        font-size: 24px;
        color: #333;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        font-weight: bold;
    }
    a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <% 
        CustomerBean cb = (CustomerBean)session.getAttribute("bean"); 
    %>
    <h1>Welcome, Customer: <%= cb.getCuname() %></h1>
    <a href="ViewAll">View All Products</a>
</div>
</body>
</html>