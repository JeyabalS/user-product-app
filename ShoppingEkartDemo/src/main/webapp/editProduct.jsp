<%@page import="org.jsp.shoppingEcartApp.dto.Product"%>
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
.form-box {
	width: 400px;
	height: 550px;
	border: 2px solid black;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #f4ff81;
}
h1 {
	font-size: 2em;
	text-align: center;
	color: #4e342e;
}
.in {
	
	margin: 30px 0;
	width: 310px;
	border-bottom: 2px solid black;
}

.in label {
	color: black;
	top: 50%;
	left: 5px;
	transform: translateY(-50%);
	font-size: 1em;
	pointer-events: none;
	transition: .5s;
	font-weight: 600;
}

input:focus ~ label, input:valid ~ label {
	top: -5px
}
.in input {
	width: 100%;
	height: 20px;
	background: transparent;
	border: none;
	outline: none;
	font-size: 1em;
	padding: 0 35px 0 5px;
	color: #1a237e;
}
button {
	width: 150px;
	height: 32px;
	border-radius: 40px;
	background: #4e342e;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: 1em;
	font-weight: 600;
	color: #c8e6c9;
}
.bu{
text-align: center;
}
</style>
</head>
<body bgcolor="#4e342e">
	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
			Product p = (Product) request.getAttribute("product");
	%>
	<section>
	<div class="form-box">
	<div class="form-value">
	<form action="editproduct" method="post">
	    <h1><u>Edit product</u></h1>
	<div class="in1">
	    <input type="hidden" name="id" value="<%=p.getId()%>"></div>
	<div class="in">	
		<label>Name</label><input type="text" name="nm" value="<%=p.getName()%>"></div>
	<div class="in">	
		<label>Description</label><input type="text" name="desc"value="<%=p.getDescription()%>"></div>
	<div class="in">	
		<label>Brand</label><input	type="text" name="br" value="<%=p.getBrand()%>"></div>
	<div class="in">
		<label>category</label><input type="text" name="cat" value="<%=p.getCategory()%>"></div>
	<div class="in">
		<label>Image</label><input type="text" name='im' value="<%=p.getImage()%>"></div>
	<div class="in">
		<label>Price</label><input type="text" name="price" value="<%=p.getPrice()%>"></div>
	<div class="bu">
		<button>Edit</button></div>

	</form>
	</div>
	</div>
	</section>
	<%
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>