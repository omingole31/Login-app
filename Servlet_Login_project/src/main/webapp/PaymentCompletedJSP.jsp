<%@page import="test.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #212529;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 400px;
        }
        h1 {
            font-size: 24px;
            color: #007bff;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            margin: 10px 0;
        }
        a {
            display: inline-block;
            margin: 10px 15px;
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 6px;
            font-size: 14px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            CustomerBean cb = (CustomerBean) session.getAttribute("bean");
            out.println("<h1>Welcome, " + cb.getCuname() + "</h1>");
            out.println("<p>Payment successfully completed.</p>");
        %>
        <a href="ViewAll">View All Products</a>
        <a href="logout">Logout</a>
    </div>
</body>
</html>