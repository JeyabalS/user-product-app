<%@page import="org.jsp.shoppingEcartApp.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.shoppingEcartApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: 'poppins', sans-serif;
}
section {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
}
h1 {
	font-size: 2em;
	text-align: center;
	color: #1b5e20;
}
table{
border-collapse: collapse;
text-align: center;
vertical-align: middle;
}
th, td{
padding: 10px;
text-align: center;
border-bottom: 1px solid #ddd;
background-color: #9e9e9e;
}
th{
background-color: #3e2723;
color: #ffff;
}
.cell-high{
background-color: #fbe9e7;
font-weight: bold;
}
a{
color: #004d40;
}
</style>
</head>
<body bgcolor="#fff59d">
	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
			List<Product> products = (List<Product>) request.getAttribute("products");
	%>
	<section>
	<div class="form-box">
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Brand</th>
			<th>Category</th>
			<th>Image</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<% for (Product p : products) { %>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getDescription()%></td>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getImage()%></td>
			<td><%=p.getPrice()%></td>
			<td class="cell-high"><a href="find?pid=<%=p.getId()%>">Edit</a></td>
			<td class="cell-high"><a href="deleteproduct?pid=<%=p.getId()%>">Delete</a></td>
		</tr>
		<% } %>
	</table>
	</div>
	</section>
	<%} else {
			response.sendRedirect("login.jsp");
	  } %>
</body>
</html>