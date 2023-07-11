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
	color: #1b5e20;
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
	background: #1b5e20;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: 1em;
	font-weight: 600;
	color: #c8e6c9;
}

.bu {
	text-align: center;
}
</style>
</head>
<body bgcolor="#81c784">
	<section>
		<div class="form-box">
			<div class="form-value">
				<form action="addProduct" method="post">
					<h1>
						<u>Add Product</u>
					</h1>
					<div class="in">
						<label>Name</label> <input type="text" name="nm">
					</div>
					<div class="in">
						<label>Description</label><input type="text" name="desc">
					</div>
					<div class="in">
						<label>Brand</label><input type="text" name="br">
					</div>
					<div class="in">
						<label>Category</label><input type="text" name="cat">
					</div>
					<div class="in">
						<label>Image</label><input type="text" name="im">
					</div>
					<div class="in">
						<label>Price</label><input type="text" name="price">
					</div>
					<div class="bu">
						<button>Add</button>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>