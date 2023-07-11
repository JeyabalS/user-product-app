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
	background: gray;
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
	color: #fff;
	text-align: center;
	color: blue;
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
	color: gray;
}
button {
	width: 150px;
	height: 32px;
	border-radius: 40px;
	background: #fff;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: 1em;
	font-weight: 600;
	background: cyan;
	
}
.bu{
text-align: center;
}
.gen{
color: black;
}
</style>
</head>
<body bgcolor="gray">
<section>
		<div class="form-box">
		<div class="form-value">

	<form action="reg" method="post">
	    <h2><u>Registration Form</u></h2>
	    
	<div class="in">	
	<label for="">Name</label><input type="text" name="name"></div>
		
	<div class="in">	
	<label>Phone</label><input type="tel" name="phone"></div>
		
	<div class="in">	
	<label>EMail</label><input type="email" name="email"></div>
		
	<div class="in">	
	<label>Password</label><input type="password" name="pswd"></div>
		
	<div class="gen">	
	<label>Gender</label><input type="radio" name="gender" value="Male">Male 
		                 <input type="radio" name="gender" value="Female">Female</div>
		                       
	<div class="in">	
	<label>Age</label><input type="number" name="age"></div>
	<div class="bu"><button>Register</button></div>
	</form>
	</div>
	</div>
	</section>
</body>
</html>