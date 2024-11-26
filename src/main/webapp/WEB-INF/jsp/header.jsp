<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<%@ page pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Website nhóm 4</title>
<meta name="description" content="Website chia sẻ tài liệu học tập">
<meta name="keywords" content="tài liệu, học tập, chia sẻ">
<style>
/*Phần Css cho Header*/
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
	justify-content: space-between;
	align-items: center;
}
/* Định dạng cho tên trang */
.logo {
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
/* Thanh tìm kiếm */
/* Thanh tìm kiếm */
.search-bar {
	display: flex;
	align-items: center;
	background-color: #f0f0f0;
	padding: 8px 12px;
	border-radius: 25px;
	width: 250px;
	margin-right: 200px;
}

.search-bar input[type="text"] {
	border: none;
	outline: none;
	background: none;
	flex: 1;
	padding: 5px;
}

.search-bar .search-icon {
	width: 16px;
	height: 16px;
	background-image:
		url('https://cdn-icons-png.flaticon.com/512/149/149852.png');
	/* Link đến hình ảnh kính lúp */
	background-size: contain;
	background-repeat: no-repeat;
	margin-left: 8px;
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
/* Menu dropdown cho "Sách" */
.dropdown {
	position: relative;
}

.dropdown-content {
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #EAE7D6;
	min-width: 160px;
	z-index: 1;
	flex-direction: column;
}
/* Link trong menu con */
.dropdown-content a {
	padding: 10px 15px;
	color: #fff;
	text-decoration: none;
	display: block;
}
/* Hiển thị menu khi hover */
.dropdown:hover .dropdown-content {
	display: flex;
}
/* Menu bên phải */
.navbar .nav-right {
	display: flex;
}

/*Phần Css cho thân trang*/
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	display: flex;
	flex-direction: column;
	width: 100%;
	max-width: 1200px;
	margin: 0 auto;
}

.top-row {
	display: flex;
	margin-top: 30px;
	margin-bottom: 50px;
}

.top-column {
	flex: 1;
	padding: 10px;
	box-sizing: border-box;
	text-align: center;
	height: 500px;
}

.top-column:not(:last-child) {
	border-right: 1px solid #ccc;
}

.bottom-row {
	display: flex;
	margin-bottom: 50px;
}

.left-half {
	flex: 3;
	display: flex;
	flex-direction: column;
}

.right-half {
	flex: 1;
	border-left: 1px solid #ccc;
	padding: 10px;
}

.left-column {
	flex: 1;
	display: flex;
	flex-direction: column;
	/*border: 1px solid #ccc;*/
	margin: 5px;
	/*border-bottom: 1px solid #ccc;*/
}

.left-column-title {
	text-align: center;
	/*margin-bottom: 10px;*/
	padding-top: 30px;
	padding-bottom: 15px;
}

.left-row {
	flex: 1;
	display: flex;
}

.left-cell {
	flex: 1;
	/*border-right: 1px solid #ccc;*/
	text-align: center;
	padding: 10px;
	height: auto;
	overflow: hidden;
}

.left-cell:not(:last-child) {
	border-right: 1px solid #ccc;
}

.cell-image {
	flex: 1;
	height: 200px;
	overflow: hidden;
}

.cell-content {
	flex: 1;
	text-align: center;
	font-size: 14px;
	padding-top: 5px;
	overflow: auto;
}

.cell-content a {
	color: black;
	text-decoration: none;
	padding: 10px;
	display: inline-block;
}

.cell-content a:hover {
	color: #ccc;
}

.right-column-title {
	text-align: center;
	margin-bottom: 20px;
}

img {
	width: 100%; /* Ảnh sẽ chiếm toàn bộ chiều rộng của cột */
	height: 100%; /* Chiều cao tự động để giữ tỉ lệ */
	object-fit: cover;
	/* Cắt ảnh để phù hợp với kích thước cột mà không làm méo ảnh */
	border-radius: 10px;
}

/*Phần Css cho footer*/
footer {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 100px;
	background-color: #EAE7D6;
	color: black;
}

/* Style for the left part (Góc nhỏ) */
.footer-left {
	font-size: 1.2em;
	font-weight: bold;
}

/* Style for the right part (Giới thiệu và Hotline) */
.footer-right {
	font-size: 1.2em;
	display: flex;
	gap: 20px;
	padding: 0px 50px;
}

.footer-right a {
	color: black;
	text-decoration: none;
	font-size: 1em;
}

.footer-right a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<header class="header">
		<div class="logo">
			<img
				src="https://scontent.fhan2-5.fna.fbcdn.net/v/t1.15752-9/462546907_1037871208022632_2005635478269107597_n.png?_nc_cat=104&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeEw0LpXMiVy63vCMqLLX26I42MY98Ysde3jYxj3xix17SB-5O8Uc9VgAhBwcX35Ya4KKYloMHgTxmDD13E10ZzA&_nc_ohc=eEwvkwhgP5gQ7kNvgE8AjAC&_nc_zt=23&_nc_ht=scontent.fhan2-5.fna&_nc_gid=AnMwVi5gXh_NXlbnqBjt1r3&oh=03_Q7cD1QFBw1SKn3dkjeAPlMFftNNrE5_mY6wu2nPZb86gzDV4kQ&oe=674AF43A">
		</div>
		<div class="search-bar">
			<input type="text" placeholder="Tìm kiếm...">
			<div class="search-icon"></div>
		</div>
	</header>
	<!-- Thanh điều hướng -->
	<div class="navbar">
		<!-- Menu bên trái -->
		<div class="nav-left">
			<a href="/trangchu" style="color: #d6881b;"> Trang Chủ </a>
			<div class="dropdown">
				<a href="#"> Review Sách </a>
				<div class="dropdown-content">
					<a href="/theloai/sach_ngonngu"> Sách ngoại ngữ </a> 
					<a href="/theloai/sach_tamlykynang"> Sách Tâm lý - Kỹ năng </a> 
					<a href="/theloai/sachlichsuvanhoa"> Sách Lịch Sử - Văn Hóa </a>
				</div>
			</div>
			<div class="dropdown">
				<a href="#"> Review Truyện </a>
				<div class="dropdown-content">
					<a href="/theloai/truyen_cotich"> Truyện cổ tích </a> 
					<a href="/theloai/truyen_tieuthuyet"> Tiểu thuyết </a> 
					<a href="/theloai/truyen_truyenngan"> Truyện ngắn </a>
				</div>
			</div>
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
	</body>
	</