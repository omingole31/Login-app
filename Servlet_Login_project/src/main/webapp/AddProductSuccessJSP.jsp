<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f4f6f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .dashboard {
      background-color: #ffffff;
      padding: 30px 40px;
      border-radius: 10px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
      width: 380px;
      text-align: center;
    }

    .dashboard h2 {
      margin-top: 0;
      font-size: 22px;
      color: #2c3e50;
    }

    .message {
      margin-top: 10px;
      font-size: 15px;
      color: #555;
    }

    .nav-links {
      margin-top: 25px;
    }

    .nav-links a {
      display: inline-block;
      margin: 10px 8px;
      text-decoration: none;
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
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
    AdminBean bean = (AdminBean) application.getAttribute("bean");
    String ms = (String) request.getAttribute("msg");
  %>
  <div class="dashboard">
    <h2>Welcome, <%= bean.getAdname() %></h2>

    <% if (ms != null && !ms.trim().isEmpty()) { %>
      <div class="message"><%= ms %></div>
    <% } %>

    <div class="nav-links">
      <a href="product.html">Add Product</a>
      <a href="viewAllProducts">View All Products</a>
      <a href="logout">Logout</a>
    </div>
  </div>
</body>
</html>
