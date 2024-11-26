<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<title>Chi tiết Review</title>
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta name="_csrf" content="${_csrf.token}" />
<meta name="id" content="${reviewId}" />
<meta name="username" content="${username}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>${review.tieude}</h1>
	<p>
		<strong>Tác giả:</strong> ${review.tacgia}
	</p>
	<div>
		<h3>Nội dung:</h3>
		<div>${review.noidung}</div>
	</div>
	<!-- Comment Section -->
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<form class="comment-form mb-4">
					<div class="form-group">
						<label for="exampleFormControlTextarea1" class="form-label">Bình luận</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Viết bình luận..."></textarea>
					</div>
					<button type="button" disabled id="submitComment" class="btn btn-primary btn-lg">Gửi</button>
				</form>
			</div>
		</div>

		<!-- Comments Display -->
		<div class="row">
			<div class="col-md-8 offset-md-2" id="ShowComment">
				<!-- Comments will be inserted here dynamically -->
			</div>
		</div>
		<script>
		// Enable the "Send" button when the textarea has content
		$('#exampleFormControlTextarea1').on('input', function() {
			var commentContent = $(this).val();
			if (commentContent.length >= 1) {
				$('#submitComment').removeAttr("disabled");
			} else {
				$('#submitComment').attr("disabled", true)
			}
		});

	// On click, send the comment data to the server using AJAX
		$('#submitComment').on('click', function() {
			var token = $("meta[name='_csrf']").attr("content");
			var content = $('#exampleFormControlTextarea1').val();
			var reviewId = $("meta[name='id']").attr("content");
			var username = $("meta[name='username']").attr("content");
			console.log(username);

			var jsonData = {
				content : content,
				reviewId : reviewId,
				username : username
			};
			
			$.ajax({
				url : '/comment',
				type : 'POST',
				headers : {
					'X-CSRF-TOKEN' : token,
					'Content-Type' : 'application/json'
				},
				data : JSON.stringify(jsonData),
				success : function(data) {
					showContent(); // Refresh comments display
				},
				error : function(error) {
					alert('Error updating status.');
				}
			});
		});

		// When the document is ready, load comments
		$(document).ready(function() {
			showContent();
		}); 

		// Function to fetch and display comments
		function showContent() {
			var token = $("meta[name='_csrf']").attr("content");
			var id = $("meta[name='id']").attr("content");
			console.log(id);
			$.ajax({
				url : '/viewdetails/' + id,
				type : 'GET',
				headers : {
					'X-CSRF-TOKEN' : token,
					'Content-Type' : 'application/json'
				},
				success : function(rs) {
					var str = "";
					$.each(rs, function(i, item) {
						// Create a div for each comment
						str += '<div class="comment-item mb-4 p-3" style="background-color: #f8f9fa; border-radius: 10px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">';
						str += '<strong>' + item.username + '</strong>';
						str += '<p class="mt-2">' + item.content + '</p>';
						str += '<small class="text-muted">Đã đăng: ' + item.created_at + '</small>';
						str += '</div>';
					});
					$('#ShowComment').html(str);
				}
			});
		}
	</script>
	<a href="${pageContext.request.contextPath}/trangchu">Quay lại danh sách</a>
</body>
</html>
