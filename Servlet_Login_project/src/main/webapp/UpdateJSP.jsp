<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean bean=(AdminBean)application.getAttribute("bean");
out.println("Welcome:"+bean.getAdname());
String msg=(String)request.getAttribute("upbean");
out.println(msg);
%>
<button><a href="product.html">Add Product</a></button>
<button><a href="viewAllProducts">View All Products</a></button>
<button><a href="logout">Logout</a></button>
</body>
</html>