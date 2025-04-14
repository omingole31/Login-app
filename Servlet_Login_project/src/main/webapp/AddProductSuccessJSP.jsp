<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	AdminBean bean = (AdminBean) application.getAttribute("bean");
	out.println("Welcome :" + bean.getAdname());
	String ms = (String) request.getAttribute("msg");
	out.println(ms);
	%>
	<a href="product.html">Add Product</a>
	<a href="viewAllProducts">View All Products</a>
</body>
</html>