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
.form-value{
padding: 20px;
}
.form-box {
	margin: 50px;
	width: 500px;
	height: 370px;
	border: 2px solid black;
	border-radius: 20px;
	
	background: #ff4081;
}
h2{
padding: 10px;
}
label{
color: #e3f2fd;
}
h1{
color: #311b92;
text-align: center;
padding: 10px;
}
</style>
</head>
<body bgcolor="#fff176">
	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
	%>
	<section>
	<div class="form-box">
	<div class="form-value">
	<h1><u>User <%=user.getId()%> Details</u></h1>
	<h2>
		<label>Name:</label> <%=user.getName()%></h2>
	<h2>
		<label>Phone:</label> <%=user.getPhone()%></h2>
	<h2>
		<label>Email:</label> <%=user.getEmail()%></h2>
	<h2>
		<label>Age:</label> <%=user.getAge()%></h2>
	<h2>
		<label>Gender:</label> <%=user.getGender()%></h2>
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