<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <%@ page pageEncoding="UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>

    <!-- JS Libraries -->
    <script type="text/javascript" src="/js/jquery.min.js"></script>
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
        }

        .logo {
            width: 200px;
            height: 200px;
            margin-bottom: 10px;
            border-radius: 100%;
        }

        h1 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        /* Định dạng chung cho form */
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 18px;
            color: black;
        }

        /* Định dạng input */
        .form-group input {
            width: 95%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 20px;
            outline: none;
            background-color: #B0D4B8;
        }

        /* Định dạng chuyển hướng đến trang đăng ký */
        .register {
            text-align: right;
            margin-top: 10px;
            font-size: 16px;
        }

        .register a {
            color: black;
            text-decoration: none;
            font-weight: bold;
        }

        .register a:hover {
            text-decoration: underline;
        }

        /* Định dạng nút đăng nhập */
        .btn-login {
            width: 40%;
            padding: 8px;
            font-size: 18px;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 30px;
            border: 1px solid #45a049;
            border-radius: 20px;
        }

        .btn-login:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <div class="login-container">
     <img
    src="/image/logo.png"
    alt="Custom Logo"
    class="logo"
/>

        <h1>Đăng Nhập</h1>
        <form:form method="POST" action="/j_spring_security_check" modelAttribute="user">
			<div class="form-group">
				<label for="username">Tên Người Dùng:</label>
				<form:input type="text" class="form-control"
					placeholder="Nhập tên người dùng" path="username" />
				<form:errors path="username" cssClass="error" />
			</div>
			<div class="form-group">
                <label for="password">Mật khẩu:</label>
                <form:input type="password" class="form-control" placeholder="Nhập mật khẩu" path="password" />
                <form:errors path="password" cssClass="error" />
            </div>
            <button type="submit" class="btn-login">Đăng Nhập</button>
            <p class="error">${error}</p>
        </form:form>
    </div>
</body>

</html>
