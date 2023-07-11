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
	height: 400px;
	border: 2px solid black;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #c0c0c0;
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
	color: 336699;
}
button {
	width: 150px;
	height: 32px;
	border-radius: 40px;
	color: #fff;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: 1em;
	font-weight: 600;
	background: #000080;
}
.bu{
text-align: center;
}

</style>
</head>
<body bgcolor="336699">
	<%
		String message = (String) request.getAttribute("msg");
		if (message != null) {
	%>
	<%=message%>
	<%
		}
	%>
	<section>
	<div class="form-box">
	   <form action="reset" method="post">
	   <div class="in">
		<label>Phone</label><input type="tel" name="ph"></div>
		<div class="in">
		<label>Old password</label><input type="text" name="op"></div>
		<div class="in">
		<label>New password</label><input type="text" name="np"></div>
		<div class="in">
		<label>Re password</label><input type="text" name="rp"></div> 
		<div class="bu">
		<button>Submit</button></div>
	</form>
	</div>
	</section>
</body>
</html>