<%@page import="test.CustomerBean"%>
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
CustomerBean cb=(CustomerBean)application.getAttribute("bean");
out.println("Welcome Customer:"+cb.getCuname());
%>
<a href="ViewAll" >View All Products</a>
</body>
</html>