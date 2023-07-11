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
	background: #e91e63;
}
.form-box {
	width: 400px;
	height: 500px;
	border: 2px solid black;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #fff;
}
h2 {
	font-size: 2em;
	text-align: center;
	color: #004d40;
}
.in {
	margin: 30px 0;
	width: 310px;
	border-bottom: 2px solid black;
}

.in label {
	color: #004d40;
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
	color: #3e2723;
}
button {
	width: 150px;
	height: 32px;
	border-radius: 40px;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: 1em;
	font-weight: 600;
	background: #e91e63;
	color: #ffff;
}
.bu{
text-align: center;
}
.gen{
color: black;
}
</style>
</head>
<body>
	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
	%>
	<section>
	<div class="form-box">
	<div class="form-value">
	<form action="edit" method="post">
	<h2><u>Edit User Form</u></h2>
	<div class="in1">
	     <input type="hidden" name="id" value="<%=user.getId()%>" readonly="readonly"></div>
	<div class="in">	
		<label>Name</label><input type="text" name="name" value="<%=user.getName()%>"></div>
	<div class="in">	
		<label>Email</label><input type="email" name="email" value="<%=user.getEmail()%>"></div>
	<div class="in">	
		<label>Age</label><input type="number" name="age" value="<%=user.getAge()%>"></div>
	<div class="gen">	
		<label>Gender</label><input type="radio" name="gender" value="Male">Male <input
			type="radio" name="gender" value="Female">Female</div>
	<div class="in">		
		<label>Phone</label><input type="tel" name="phone" value="<%=user.getPhone()%>"></div>
	<div class="in">	
		<label>Password</label><input type="password" name="pswd" value="<%=user.getPassword()%>"></div>
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