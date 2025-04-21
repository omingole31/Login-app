<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Display</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .message-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        text-align: center;
        max-width: 400px;
        width: 100%;
    }
    .message {
        color: #333;
        font-size: 18px;
        margin-bottom: 20px;
    }
    .logout-btn {
        padding: 10px 20px;
        background-color: #dc3545;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        font-size: 16px;
    }
    .logout-btn:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<div class="message-container">
    <% 
        String msg = (String) request.getAttribute("msg");
    %>
    <p class="message"><%= msg %></p>
    <a class="logout-btn" href="logout">Logout</a>
</div>
</body>
</html>