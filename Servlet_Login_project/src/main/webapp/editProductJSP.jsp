<%@page import="test.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
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
<form action="update" method="post">
<input type="hidden" name="pcode" value="<%=pb.getPcode()%>">
Enter new price:<input type="text" name="pprice" value="<%=pb.getPprice()%>"><br>
Enter new Stock: <input type="text" name="pstock"  value="<%=pb.getPstock()%>"><br>
                <input type="submit" value="update">
</form>
		
	



</body>
</html>