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
	padding: 10px;
}

.form-box {
	width: 400px;
	height: 400px;
	border: 2px solid black;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #cddc39;
}

h2 {
	text-align: center;
}

h3 {
	color: blue;
	padding: 10px;
}
</style>
</head>
<body bgcolor="#bdbdbd">
	<%
		String message = (String) request.getAttribute("msg");
		if (message != null) {
	%>
	<%=message%>
	<%}else{
	}
	%>
	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
	%>
	<section>
		<div class="form-box">
			<div class="form-value">
				<h2>Welcome Mr.<%=user.getName()%></h2>
				<h3>Edit Your Profile?<a href="edituser.jsp">Click!</a></h3>
				<h3>View Your Profile?<a href="viewuser.jsp">Click!</a></h3>
				<h3>Delete Your Account?<a href="delete">Click!</a></h3>
				<h3>Sign Out?<a href="signout">Click!</a></h3>
				<h3>Add Product?<a href="addProduct.jsp">Click!</a></h3>
				<h3>View Product?<a href="viewproducts">Click!</a></h3>
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