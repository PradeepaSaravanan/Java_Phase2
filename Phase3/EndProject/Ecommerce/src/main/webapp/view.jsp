<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.Ecommerce.*" %>
    <%@ page  import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="color:mediumSeaGreen;"><center>List Of Shoes</center></h1>
<center>
<div style="border:2px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<%List<Shoe> s=(List<Shoe>)request.getAttribute("list");
%>

<table  border="1" align="center">
<tr bgcolor="#edc9af"><th>Shoeid</th><th>ShoeBrand</th><th>Color</th><th>Quantity</th><th>Cost</th><th>Actions</th></tr>
<%for(Shoe ss:s){ %>
<tr><td><%=ss.getShoeid()%></td><td><%=ss.getShoebrand() %></td><td><%=ss.getColor() %></td><td><%=ss.getQuantity() %></td><td><%=ss.getCost() %></td><td><a href="/buyShoe?shoeid=<%=ss.getShoeid()%>">Buy</a></tr>
<%} %>


</table>
<br><br>
</div>
</center>
</body>
</html>