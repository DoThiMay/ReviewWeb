<head>
<%@ page pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
<style>
/*Phần Css cho Header*/
/* Định dạng cho toàn bộ trang */
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
<footer>
		<div class="footer-left">Bản quyền thuộc Góc nhỏ.vn</div>
		<div class="footer-right">
			<p>
				<a href="#about"><b> Giới thiệu </b></a>
			</p>
			<p>|</p>
			<p>
				<a href="tel:+123456789"><b> Hotline: 0999999999 </b></a>
			</p>
		</div>
	</footer>
</body>
</html>