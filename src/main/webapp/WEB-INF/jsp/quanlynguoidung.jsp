<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<%@ page pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ admin</title>
    <style>
        /*Phần Css của header*/
        /* Định dạng cho toàn bộ trang */
        body{
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        /* Định dạng cho header */
        header{
            background-color: #B0D4B8;
            padding: 15px;
            display: flex;
            /*justify-content: space-between;*/
            align-items: center;
        }
        /* Định dạng cho tên trang */
        .logo{
            display: flex; /* Sắp xếp nội dung logo theo chiều ngang */
            align-items: center; /* Căn giữa theo chiều dọc */
            font-size: 24px;
            font-weight: bold;
        }
        .logo img{
            width: 150px; /* Đặt chiều rộng ảnh là 100px */
            height: auto; /* Tự động điều chỉnh chiều cao dựa trên chiều rộng để giữ nguyên tỉ lệ */
            border-radius: 100%; /* Tạo ảnh tròn */
            margin-right: 10px; /* Khoảng cách bên phải giữa ảnh và chữ */
            padding: 0px 100px
        }
        .welcome-text {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
        /* Thanh điều hướng chính */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #EAE7D6;
            padding: 10px 20px;
        }
        /* Link điều hướng */
        .navbar a {
            color: black;
            text-decoration: none;
            padding: 10px 20px;
            display: inline-block;
        }
        /* Menu bên trái */
        .navbar .nav-left {
            display: flex;
        }
        /* Thêm hiệu ứng hover */
        .navbar a:hover {
            background-color: #e2d9a8;
        }
        /* Menu bên phải */
        .navbar .nav-right {
            display: flex;
        }

        /*Css phần trang quản lý người dùng*/
        h1 {
            margin-top: 50px;
            padding-bottom: 20px;
            font-size: 24px;
            text-align: center;
            color: #333;
        }
        .main-content {
            max-width: 800px;
            margin: 0 auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        table th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        table td {
            word-wrap: break-word; /* Đảm bảo nội dung dài sẽ xuống dòng */
        }
        .col-name{
            width: 25%;
        }
        .col-email {
            width: 35%; /* Cột Tên tài khoản và Email chiếm 35% mỗi cột */
        }
        .col-password,
        .col-action {
            width: 20%; /* Cột Mật khẩu và Xóa tài khoản chiếm 15% mỗi cột */
        }
        .action-buttons a {
            color: black;
            text-decoration: none;
            margin: 0 5px;
            padding: 5px 10px;
        }
        .action-buttons a:hover {
            background-color: #B0D4B8;
            color: #fff;
        }
        .empty-row td {
            color: #bbb;
            font-style: italic;
        }
    </style>
</head>
<body>
    <!-- Nội dung phần header -->
    <header class="header">
        <div class="logo"> <img src="https://scontent.fhan2-5.fna.fbcdn.net/v/t1.15752-9/462546907_1037871208022632_2005635478269107597_n.png?_nc_cat=104&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeEw0LpXMiVy63vCMqLLX26I42MY98Ysde3jYxj3xix17SB-5O8Uc9VgAhBwcX35Ya4KKYloMHgTxmDD13E10ZzA&_nc_ohc=eEwvkwhgP5gQ7kNvgE8AjAC&_nc_zt=23&_nc_ht=scontent.fhan2-5.fna&_nc_gid=AnMwVi5gXh_NXlbnqBjt1r3&oh=03_Q7cD1QFBw1SKn3dkjeAPlMFftNNrE5_mY6wu2nPZb86gzDV4kQ&oe=674AF43A"> </div>
        <div class="welcome-text">Xin chào admin!</div>
    </header>
    <!-- Thanh điều hướng -->
    <div class="navbar">
        <!-- Menu bên trái -->
        <div class="nav-left">
            <a href="/helloAd"> Trang chủ </a>
            <a href="/quanlybaiviet"> Quản lý bài viết </a>
            <a href="/quanlynguoidung"  style="color: #d6881b;"> Quản lý người dùng </a>
        </div>
        <!-- Menu bên phải -->
        <div class="nav-right">
            <a href="#"> ${myDbValues}</a>
            <a href="/logout"> Đăng xuất </a>
        </div>
    </div>

    <!--Nội dung trang quản lý người dùng-->
    <div class="main-content">
        <h1>QUẢN LÝ NGƯỜI DÙNG</h1>
        <table>
            <thead>
                <tr>
                    <th class="col-name">Tên tài khoản</th>
                    <th class="col-email">Email</th>
                    <th class="col-password">Mật khẩu</th>
                    <th class="col-action">Xóa tài khoản</th>
                </tr>
            </thead>
            <tbody>
               <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.accountname}</td>
                    <td>${user.password}</td>
                    <td class="action-buttons">
							<form action="/xoaNguoidung/${user.userId}" method="POST"
								onsubmit="return confirm('Are you sure you want to delete this review?');">
								<button type="submit" class="btn btn-danger">Xóa</button>
							</form>
						</td>
                </tr>
              </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>