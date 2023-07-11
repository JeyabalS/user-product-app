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
	height: 200px;
	border: 2px solid black;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #fff;
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
	color: purple;
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
	background: purple;
	
}
.bu{
text-align: center;
}
.re{
text-align: center;
}
</style>
</head>
<body bgcolor="purple">
	<section>
	<div class="form-box">
	<form action="forget" method="post">
		<div class="in">
		    <label>Phone</label><input type="tel" name="ph"></div>
		<div class="bu">
		    <button>Submit</button></div>
	    <div class="re">
	        <h4>Reset Password?<a href="reset.jsp">Click!</a></h4></div>
	</form>
	</div>
	</section>
</body>
</html>