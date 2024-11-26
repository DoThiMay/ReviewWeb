<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%@ page pageEncoding="UTF-8" %>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng Ký</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	font-family: 'Times New Roman', Times, serif;
	background-color: #B0D4B8;
	margin: 0;
}

.login-container {
	text-align: center;
	max-width: 400px;
	width: 100%;
	padding: 20px;
	border: 1px solid white;
	border-radius: 30px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.logo {
	width: 120px;
	height: 120px;
	margin-bottom: 15px;
	border-radius: 50%;
}

h2 {
	font-size: 28px;
	color: #333;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
	text-align: left;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-size: 16px;
	color: black;
}

.form-group input {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ddd;
	border-radius: 20px;
	outline: none;
	background-color: #f5f5f5;
}

.form-group input:focus {
	border-color: #7BB7A4;
	box-shadow: 0 0 5px rgba(123, 183, 164, 0.5);
}

.error {
	color: red;
	font-size: 12px;
}

.register {
	text-align: right;
	margin-top: 10px;
	font-size: 14px;
}

.register a {
	color: black;
	text-decoration: none;
	font-weight: bold;
}

.register a:hover {
	text-decoration: underline;
}

.btn-login-container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

.btn-login {
	width: 60%;
	padding: 10px;
	font-size: 16px;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	cursor: pointer;
	border: 1px solid #45a049;
	border-radius: 20px;
	transition: background-color 0.3s ease-in-out;
}

.btn-login:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="login-container">
		<img
			src="https://scontent.fhan15-2.fna.fbcdn.net/v/t1.15752-9/462546907_1037871208022632_2005635478269107597_n.png?_nc_cat=104&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeHoo6tHeWqn-Mn0Jxj49sIq42MY98Ysde3jYxj3xix17XYL2AkanDFbkdMB1c4wRvh82FNp3xQm4mA_E3MALcnc&_nc_ohc=eEwvkwhgP5gQ7kNvgGdZU6q&_nc_zt=23&_nc_ht=scontent.fhan15-2.fna&_nc_gid=AB3yCmuFo12WXdjeymslXQZ&oh=03_Q7cD1QEeV32dSZVVmAPTKhUpRYwCdwg8GYCZvpl0u4j_7cAofQ&oe=674AF43A"
			alt="Cỏ bốn lá" class="logo">
		<h2>Đăng Ký</h2>
		<form:form method="POST" action="/dangky" modelAttribute="user">
			<div class="form-group">
				<label for="username">Name:</label>
				<form:input type="text" class="form-control"
					placeholder="Enter user's name" path="username" />
				<form:errors path="username" cssClass="error" />
			</div>

			<div class="form-group">
				<label for="accountname">Email:</label>
				<form:input type="text" class="form-control"
					placeholder="Enter account's name" path="accountname" />
				<form:errors path="accountname" cssClass="error" />
			</div>

			<div class="form-group">
				<label for="password">Password:</label>
				<form:input type="password" class="form-control"
					placeholder="Enter user's password" path="password" minlength="6"
					required="true" />
				<form:errors path="password" cssClass="error" />
			</div>
			<p class="error">${error}</p>

			<div class="btn-login-container">
				<input type="submit" class="btn-login" value="Đăng Ký" />
			</div>
		</form:form>
	</div>
</body>
</html>
