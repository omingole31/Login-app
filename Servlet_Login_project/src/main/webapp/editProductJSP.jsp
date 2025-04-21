<%@ page import="test.ProductBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Product</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f2f4f8;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .update-form {
      background-color: #fff;
      padding: 30px 35px;
      border-radius: 10px;
      box-shadow: 0 8px 18px rgba(0, 0, 0, 0.08);
      width: 350px;
    }

    .update-form h2 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 25px;
      font-size: 20px;
    }

    .form-group {
      margin-bottom: 18px;
    }

    label {
      font-size: 14px;
      font-weight: 600;
      display: block;
      margin-bottom: 5px;
      color: #333;
    }

    input[type="text"] {
      width: 100%;
      padding: 8px 10px;
      font-size: 14px;
      border: 1px solid #ccc;
      border-radius: 5px;
      outline: none;
      transition: border-color 0.3s ease;
    }

    input[type="text"]:focus {
      border-color: #007bff;
    }

    .form-actions {
      text-align: center;
    }

    input[type="submit"] {
      background-color: #007bff;
      color: white;
      padding: 10px 22px;
      border: none;
      font-size: 14px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<%
  ProductBean pb = (ProductBean) request.getAttribute("bean");
%>

<div class="update-form">
  <h2>Update Product</h2>
  <form action="update" method="post">
    <input type="hidden" name="pcode" value="<%= pb.getPcode() %>">

    <div class="form-group">
      <label for="pprice">New Price</label>
      <input type="text" id="pprice" name="pprice" value="<%= pb.getPprice() %>" required>
    </div>

    <div class="form-group">
      <label for="pstock">New Stock</label>
      <input type="text" id="pstock" name="pstock" value="<%= pb.getPstock() %>" required>
    </div>

    <div class="form-actions">
      <input type="submit" value="Update">
    </div>
  </form>
</div>
</body>
</html>
