<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"
    import="java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Listing</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
    }
    .container {
        max-width: 80%;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    thead {
        background-color: #007bff;
        color: #fff;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ccc;
    }
    th {
        font-weight: bold;
    }
    tbody tr:hover {
        background-color: #f1f1f1;
    }
    .buy-btn, .logout-btn {
        padding: 6px 12px;
        background-color: #28a745;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        font-size: 14px;
        margin-right: 5px;
    }
    .buy-btn:hover {
        background-color: #218838;
    }
    .logout-btn {
        background-color: #dc3545;
    }
    .logout-btn:hover {
        background-color: #c82333;
    }
    .actions {
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Product Listing</h1>
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
            <% while (it.hasNext()) {
                ProductBean p = (ProductBean) it.next(); %>
                <tr>
                    <td><%= p.getPcode() %></td>
                    <td><%= p.getPname() %></td>
                    <td><%= p.getPprice() %></td>
                    <td><%= p.getPstock() %></td>
                    <td>
                        <a class="buy-btn" href="Buy?pcode=<%= p.getPcode() %>">Buy</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <div class="actions">
        <a class="logout-btn" href="logout">Logout</a>
    </div>
</div>
</body>
</html>