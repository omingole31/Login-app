<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f0f2f5;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background-color: #ffffff;
      padding: 40px 50px;
      border-radius: 12px;
      box-shadow: 0 12px 25px rgba(0, 0, 0, 0.1);
      text-align: center;
      width: 360px;
    }

    .container h2 {
      margin-top: 0;
      color: #2c3e50;
    }

    .message {
      margin-top: 10px;
      font-size: 15px;
      color: #555;
    }

    .button-group {
      margin-top: 25px;
    }

    .button-group a {
      text-decoration: none;
      display: inline-block;
      margin: 10px 8px;
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      border-radius: 6px;
      font-size: 14px;
      transition: background-color 0.3s ease;
    }

    .button-group a:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<%
  AdminBean bean = (AdminBean) application.getAttribute("bean");
  String msg = (String) request.getAttribute("upbean");
%>

<div class="container">
  <h2>Welcome, <%= bean.getAdname() %></h2>
  <% if (msg != null && !msg.trim().isEmpty()) { %>
    <div class="message"><%= msg %></div>
  <% } %>

  <div class="button-group">
    <a href="product.html">Add Product</a>
    <a href="viewAllProducts">View All Products</a>
    <a href="logout">Logout</a>
  </div>
</div>
</body>
</html>
