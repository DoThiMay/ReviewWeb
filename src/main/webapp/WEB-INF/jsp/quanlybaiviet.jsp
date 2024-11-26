<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>

<%@ page pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản lý bài viết</title>
<style>
/*Phần Css của header*/
/* Định dạng cho toàn bộ trang */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}
/* Định dạng cho header */
header {
	background-color: #B0D4B8;
	padding: 15px;
	display: flex;
	/*justify-content: space-between;*/
	align-items: center;
}
/* Định dạng cho tên trang */
.logo {
	display: flex; /* Sắp xếp nội dung logo theo chiều ngang */
	align-items: center; /* Căn giữa theo chiều dọc */
	font-size: 24px;
	font-weight: bold;
}

.logo img {
	width: 150px; /* Đặt chiều rộng ảnh là 100px */
	height: auto;
	/* Tự động điều chỉnh chiều cao dựa trên chiều rộng để giữ nguyên tỉ lệ */
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

/*Css cho phần thân trang quản lý bài viết*/
body {
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
}

h1 {
	margin-top: 50px;
	font-size: 24px;
	text-align: center;
	color: #333;
}

.main-content {
	max-width: 1200px;
	margin: 0 auto;
}

.buttons {
	margin-bottom: 20px;
	text-align: right;
}

.buttons a {
	padding: 10px 15px;
	background-color: #28a745;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
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

table img {
	max-width: 80px;
	border-radius: 5px;
}

.action-buttons a {
	color: black;
	text-decoration: none;
	margin: 0 5px;
	padding: 5px 10px;
	border: 1px solid #B0D4B8;
	border-radius: 3px;
}

.action-buttons a:hover {
	background-color: #B0D4B8;
	color: black;
}
</style>
</head>
<body>
	<!-- Nội dung phần header -->
	<header class="header">
		<div class="logo">
			<img
				src="https://scontent.fhan2-5.fna.fbcdn.net/v/t1.15752-9/462546907_1037871208022632_2005635478269107597_n.png?_nc_cat=104&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeEw0LpXMiVy63vCMqLLX26I42MY98Ysde3jYxj3xix17SB-5O8Uc9VgAhBwcX35Ya4KKYloMHgTxmDD13E10ZzA&_nc_ohc=eEwvkwhgP5gQ7kNvgE8AjAC&_nc_zt=23&_nc_ht=scontent.fhan2-5.fna&_nc_gid=AnMwVi5gXh_NXlbnqBjt1r3&oh=03_Q7cD1QFBw1SKn3dkjeAPlMFftNNrE5_mY6wu2nPZb86gzDV4kQ&oe=674AF43A">
		</div>
		<div class="welcome-text">Xin chào admin!</div>
	</header>
	<!-- Thanh điều hướng -->
	<div class="navbar">
		<!-- Menu bên trái -->
		<div class="nav-left">
			<a href="/helloAd"> Trang chủ </a> <a href="/quanlybaiviet"
				style="color: #d6881b;"> Quản lý bài viết </a> <a
				href="/quanlynguoidung"> Quản lý người dùng </a>
		</div>
		<!-- Menu bên phải -->
		<div class="nav-right">
			<c:choose>
				<c:when test="${empty myDbValues}">
								<<a href="/dangnhap">Đăng nhập</a>
					<a href="/trang-chu/dangky">Đăng ký</a>
				</c:when>
				<c:otherwise>
					<a>${myDbValues}</a>
					<a href="/logout">Đăng xuất</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<!-- Nội dung trang quản lý bài viết -->
	<div class="main-content">
		<h1>DANH SÁCH BÀI VIẾT</h1>
		<div class="buttons">
			<a href="/dangreview">Thêm Bài Viết</a>
		</div>
		<table>
			<thead>
				<tr>
					<th>Tiêu đề</th>
					<th>Tác giả</th>
					<th>Thể loại</th>
					<th>Ảnh</th>
					<th>Phân loại</th>
					<th>Xóa</th>
					<th>Sửa</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="review" items="${reviews}">
					<tr>
						<td>${review.tieude}</td>
						<td>${review.tacgia}</td>
						<td>${review.theloai}</td>
						<td>${review.anh}</td>
						<td>${review.phanloai}</td>
						<td class="action-buttons">
							<form action="/xoabaiviet/${review.id}" method="POST"
								onsubmit="return confirm('Are you sure you want to delete this review?');">
								<button type="submit" class="btn btn-danger">Xóa</button>
							</form>
						</td>

						<td class="action-buttons"><a
							href="/chinhsuabaiviet/${review.id}">Sửa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>