<%@page import="java.util.ArrayList"%>
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
ArrayList<ProductBean> list=(ArrayList<ProductBean>)request.getAttribute("bean");
%>

<table border="2px" style="width: 60%; margin-left:200px;">
	<thead>
		<tr>
			<th>Code</th>
			<th>Name</th>
			<th>Price</th>
			<th>Stock</th>
		</tr>
	</thead>
	
	<tbody>
		<%for(ProductBean p:list)
		{ %>
		
			<tr>
				<td><%=p.getPcode() %> </td>
				<td><%=p.getPname() %> </td>
				<td><%=p.getPprice() %> </td>
				<td><%=p.getPstock() %> </td>
			</tr>
		<%}%>
		
	</tbody>
</table>
<a href="product.html">Add Product</a>
</body>
</html>