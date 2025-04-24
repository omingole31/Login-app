<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="test.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchase Stock</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            max-width: 500px;
            width: 100%;
            text-align: left;
            color: #333333;
        }
        h2 {
            font-size: 26px;
            margin-bottom: 20px;
            text-align: center;
            color: #007bff;
        }
        .info {
            font-size: 15px;
            margin-bottom: 25px;
            line-height: 1.6;
            border: 1px solid #dedede;
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #28a745;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            text-transform: uppercase;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .footer {
            font-size: 12px;
            color: #6c757d;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Purchase Product</h2>
        <div class="info">
            <% 
                CustomerBean cb = (CustomerBean) session.getAttribute("bean");
                if (cb != null) {
                    out.println("Welcome, " + cb.getCuname() + "<br><br>");
                }

                ProductBean pb = (ProductBean) request.getAttribute("pb");
                if (pb != null) {
                    out.println("Product Code: " + pb.getPcode() + "<br>");
                    out.println("Product Name: " + pb.getPname() + "<br>");
                    out.println("Price: ₹" + pb.getPprice() + "<br>");
                    out.println("Available Stock: " + pb.getPstock() + "<br>");
                } else {
                    out.println("No product data available.");
                }
            %>
        </div>
        <form action="buyPro" method="post">
            <input type="hidden" name="pcode" value="<%= pb.getPcode() %>">
            <input type="hidden" name="pprice" value="<%= pb.getPprice() %>">
            <label for="pstock">Required Quantity:</label>
            <input type="text" name="pstock" placeholder="Enter quantity">
            <input type="submit" value="Buy Product">
        </form>
    </div>
</body>
</html>