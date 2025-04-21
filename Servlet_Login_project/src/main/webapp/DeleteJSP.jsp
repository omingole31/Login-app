<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Product Dashboard</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f4f6f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      background-color: #ffffff;
      padding: 40px 50px;
      border-radius: 12px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
      text-align: center;
      width: 400px;
    }

    .message {
      font-size: 16px;
      color: #333;
      margin-bottom: 30px;
      word-wrap: break-word;
    }

    .nav-links a {
      text-decoration: none;
      display: inline-block;
      margin: 8px;
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      border-radius: 6px;
      font-size: 14px;
      transition: background-color 0.3s ease;
    }

    .nav-links a:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<%
  String msg = (String) request.getAttribute("msg");
%>
<div class="container">
  <div class="message">
    <%= (msg != null && !msg.trim().isEmpty()) ? msg : "No message to display." %>
  </div>
  <div class="nav-links">
    <a href="product.html">Add Product</a>
    <a href="viewAllProducts">View All Products</a>
    <a href="logout">Logout</a>
  </div>
</div>
</body>
</html>
