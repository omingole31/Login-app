<%@page import="test.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean bean=(AdminBean)application.getAttribute("bean");
out.println("Login Successfull...");

out.println("Welcome :"+bean.getAdname());

%>
<a href="product.html">Add Product</a>
<a href="viewAllProducts">View All Products</a>
</body>
</html>