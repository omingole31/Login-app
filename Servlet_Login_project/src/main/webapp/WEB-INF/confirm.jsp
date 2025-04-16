<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ProductBean pb=(ProductBean)application.getAttribute("pbean");
out.println("Welcome:"+pb.getPname());
String msg=(String)request.getAttribute("msg");
out.println(msg);
%>
<a href="product.html">Add Product</a>
<a href="viewAllProducts">View All Products</a>
<a href="logout">Logout</a>
</body>
</html>