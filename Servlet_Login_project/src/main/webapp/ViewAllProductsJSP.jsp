<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>View Products</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f5f7fa;
      margin: 0;
      padding: 20px;
    }

    h2 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 30px;
    }

    table {
      width: 80%;
      margin: 0 auto 30px auto;
      border-collapse: collapse;
      background-color: #ffffff;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.05);
    }

    th, td {
      padding: 12px 15px;
      text-align: center;
      border-bottom: 1px solid #e0e0e0;
    }

    th {
      background-color: #007bff;
      color: white;
      font-size: 15px;
    }

    tr:hover {
      background-color: #f1f1f1;
    }

    a.action-link {
      display: inline-block;
      margin: 0 5px;
      padding: 6px 12px;
      background-color: #007bff;
      color: white;
      text-decoration: none;
      border-radius: 4px;
      font-size: 13px;
      transition: background-color 0.3s ease;
    }

    a.action-link:hover {
      background-color: #0056b3;
    }

    .logout-link {
      display: block;
      text-align: center;
      margin-top: 20px;
      font-weight: bold;
      color: #d9534f;
      text-decoration: none;
      font-size: 15px;
    }

    .logout-link:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <h2>Product List</h2>

  <%
    ArrayList<ProductBean> list = (ArrayList<ProductBean>) application.getAttribute("list");
    Iterator<ProductBean> it = list.iterator();
  %>

  <table>
    <thead>
      <tr>
        <th>Code</th>
        <th>Name</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <%
        while (it.hasNext()) {
          ProductBean p = it.next();
      %>
      <tr>
        <td><%= p.getPcode() %></td>
        <td><%= p.getPname() %></td>
        <td><%= p.getPprice() %></td>
        <td><%= p.getPstock() %></td>
        <td>
          <a class="action-link" href="EditProductServlet?pcode=<%= p.getPcode() %>">Edit</a>
          <a class="action-link" href="deleteProductServlet?pcode=<%= p.getPcode() %>">Delete</a>
        </td>
      </tr>
      <%
        }
      %>
    </tbody>
  </table>

  <a class="logout-link" href="logout">Logout</a>
</body>
</html>
