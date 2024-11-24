<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%@ page pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<title>Đăng Nhập</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h3>
			<b>Đăng Nhập</b>
		</h3>
		<form:form method="POST" action="/j_spring_security_check"
			modelAttribute="user">
			<div class="form-group">
				<label for="username">Tên Người Dùng:</label>
				<form:input type="text" class="form-control"
					placeholder="Nhập tên người dùng" path="username" />
				<form:errors path="username" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="password">Mật khẩu:</label>
				<form:input type="password" class="form-control"
					placeholder="Nhập mật khẩu" path="password" />
				<form:errors path="password" cssClass="error" />
			</div>
			<div class="text-center">
				<input type="submit" class="btn" value="Đăng Nhập" />
			</div>
			<p class="error">${error}</p>
		</form:form>
	</div>
</body>
</html>
