<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="test.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ProductBean pb=(ProductBean)request.getAttribute("bean");
%>
<form action="buyPro" method="post">
<input type="hidden" name="pcode"><br>
<h2>Enter How much stock you want to Buy?</h2><br>
<input type="number" name="pstock" value="<%=pb.getPstock()%>"><br>
<input type="submit" value="Buy">

</form>
</body>
</html>