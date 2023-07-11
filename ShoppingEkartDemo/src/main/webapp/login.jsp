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
	background-color: gray;
}
section {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	width: 100%;
	background-position: center;
	background-size: cover;
}
.form-box {
	position: relative;
	width: 400px;
	height: 450px;
	background: transparent;
	border: 2px solid rgba(255, 255, 255, 0.5);
	border-radius: 20px;
	backdrop-filter: blur(15px);
	display: flex;
	justify-content: center;
	align-items: center;
}

h2 {
	font-size: 2em;
	color: #fff;
	text-align: center;
}

.inputbox {
	position: relative;
	margin: 30px 0;
	width: 310px;
	border-bottom: 2px solid #fff;
}

.inputbox label {
	position: absolute;
	top: 50%;
	left: 5px;
	transform: translateY(-50%);
	color: #fff;
	font-size: 1em;
	pointer-events: none;
	transition: .5s;
}

input:focus ~ label, input:valid ~ label {
	top: -5px
}

.inputbox input {
	width: 100%;
	height: 50px;
	background: transparent;
	border: none;
	outline: none;
	font-size: 1em;
	padding: 0 35px 0 5px;
	color: #fff;
}

.forget {
	margin: -15px 0 15px;
	font-size: .9em;
	color: #fff;
	display: flex;
	justify-content: center;
}

.forget label input {
	margin-right: 3px;
}

.forget label a {
	color: #fff;
	text-decoration: none;
}

.forget label a:hover {
	text-decoration: underline;
}

button {
	width: 100%;
	height: 40px;
	border-radius: 40px;
	background: #fff;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: 1em;
	font-weight: 600;
}

.register {
	font-size: .9em;
	color: #fff;
	text-align: center;
	margin: 25px 0 10px;
}

.register p a {
	text-decoration: none;
	color: #fff;
	font-weight: 600;
}

.register p a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
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
			<div class="form-value">
				<form action="login" method="post">
					<h2>Login</h2>
					<div class="inputbox">
						<input type="tel" required="required" name="ph"> <label
							for="">Phone Number</label>
					</div>
					<div class="inputbox">
						<input type="password" required="required" name="ps"> <label
							for="">Password</label>
					</div>
					<div class="forget">
						<label for=""> <input type="checkbox">Remember Me
							<a href="forget.jsp">Forget Password</a></label>
					</div>
					<button>Login</button>
					<div class="register">
						<p>
							Don't have a account <a href="register.jsp">Register</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>