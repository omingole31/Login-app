<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            color: #007BFF;
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            margin: 10px 0;
            font-size: 1.1em;
        }
        .details p {
            font-weight: 600;
        }
        form {
            text-align: center;
            margin-top: 20px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #007BFF;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            ProductBean pb = (ProductBean) request.getAttribute("Product");
            Integer stock = (Integer) request.getAttribute("ProductStock");
            Double finalAmount = (Double) request.getAttribute("finalAmount");
        %>
        <h2>Product Bill</h2>
        <div class="details">
            <p><strong>Code:</strong> <%= pb.getPcode() %></p>
            <p><strong>Name:</strong> <%= pb.getPname() %></p>
            <p><strong>Price:</strong> <%= pb.getPprice() %></p>
            <p><strong>Required Quantity:</strong> <%= stock %></p>
            <p><strong>Total Billing Amount:</strong> <%= finalAmount %></p>
        </div>
        <form action="ProductBill" method="post">
            <input type="hidden" name="pcode" value="<%= pb.getPcode() %>">
            <input type="hidden" name="stock" value="<%= stock %>">
            <input type="hidden" name="finalAmount" value="<%= finalAmount %>">
            <input type="submit" value="Proceed to Payment">
        </form>
        <a href="buyPro" class="back-link">Back</a>
    </div>
</body>
</html>