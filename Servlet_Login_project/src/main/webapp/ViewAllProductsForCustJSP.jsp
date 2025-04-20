<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

ArrayList<ProductBean> list=(ArrayList<ProductBean>)application.getAttribute("list");
Iterator<ProductBean> it=list.iterator();
%>

<table border="2px" style="width: 60%; margin-left:200px;">
	<thead>
		<tr>
			<th>Code</th>
			<th>Name</th>
			<th>Price</th>
			<th>Stock</th>
			<th>Action</th>
		</tr>
	</thead>
	
	<tbody>
		<%
		while(it.hasNext())
		{
			 ProductBean p=(ProductBean)it.next();
			 out.print("<tr> <td> "+p.getPcode()); out.print("</td>"); 
			 out.print("<td>"+p.getPname());  out.print("</td>");
			 out.print("<td>"+p.getPprice());  out.print("</td>");
			 out.print("<td>"+p.getPstock());  out.print("</td>");
			 out.print("<td>");
			
			%>
			
			<a href="Buy?pcode=<%= p.getPcode()%>">Buy</a>
			
			
			<%
		}
		%>
		
		
	</tbody>
</table>



</body>
</html>