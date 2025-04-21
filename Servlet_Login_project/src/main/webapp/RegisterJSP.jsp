<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message and Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f2f5;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    .wrapper {
        width: 90%;
        max-width: 500px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        overflow: hidden;
        text-align: center;
        padding: 20px;
    }
    .message-box {
        margin-bottom: 20px;
        background-color: #eaf4fc;
        padding: 15px;
        border-radius: 8px;
    }
    .message-box p {
        color: #007bff;
        font-size: 16px;
        font-weight: bold;
        margin: 0;
    }
    .login-form h2 {
        color: #333;
        margin-bottom: 10px;
    }
    .login-form form {
        margin-top: 10px;
    }
    .login-form label {
        display: block;
        color: #555;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .login-form input[type="text"], .login-form input[type="password"], .login-form input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 14px;
    }
    .login-form input[type="submit"] {
        background-color: #007bff;
        color: white;
        font-weight: bold;
        cursor: pointer;
    }
    .login-form input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="wrapper">
    <div class="message-box">
        <% 
        String msg = (String) request.getAttribute("msg");
        out.println("<p>" + msg + "</p>");
        %>
    </div>
    <div class="login-form">
        <%@include file="login.html" %>
    </div>
</div>
</body>
</html>