<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page pageEncoding="UTF-8" isELIgnored="false"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Review Form</title>
<%-- <script
	src="${pageContext.request.contextPath }/resources/js/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/ckeditor/ckeditor.js"
	type="text/javascript"></script> --%>
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	CKEDITOR.replace('noidung', {
		height: 400,
		filebrowserImageBrowseUrl: '/filebrowse', // Correct URL for browsing images
	    filebrowserImageUploadUrl: '/upload/image', // Correct URL for uploading images
	    filebrowserUploadMethod: 'form'
		
	});

$('#phanloai').change(function() {
    var phanloai = $(this).val();
    var theloaiSelect = $('#theloai');
    theloaiSelect.empty(); // Xóa các tùy chọn cũ

    if (phanloai === 'sach') {
        theloaiSelect.append(new Option("Sách Ngôn Ngữ", "sach_ngonngu"));
        theloaiSelect.append(new Option("Sách Tâm Lý Kỹ Năng", "sach_tamlykynang"));
        theloaiSelect.append(new Option("Sách Lịch Sử Văn Hóa", "sachlichsuvanhoa"));
    } else if (phanloai === 'truyen') {
        theloaiSelect.append(new Option("Truyện cổ tích", "truyen_cotich"));
        theloaiSelect.append(new Option("Tiểu thuyết", "truyen_tieuthuyet"));
        theloaiSelect.append(new Option("Truyện ngắn", "truyen_truyenngan"));
    }
});
});
</script>

<!-- Add custom CSS for width adjustment (optional) -->
<style>
#noidung {
	width: 100%;
	max-width: 800px;
	height: 300px;
}

.ck-editor__editable {
	width: 100%;
}
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath}/dangreview"
		method="post" enctype="multipart/form-data">
		<label for="tieude">Tiêu đề:</label> <input type="text" name="tieude"
			required><br> <label for="tacgia">Tác giả:</label> <input
			type="text" name="tacgia" required><br><label for="phanloai">Phân loại:</label>
        <select name="phanloai" id="phanloai" required>
            <option value="">--Chọn phân loại--</option>
            <option value="sach">Sách</option>
            <option value="truyen">Truyện</option>
        </select><br>

        <label for="theloai">Thể loại:</label>
        <select name="theloai" id="theloai" required>
            <option value="">--Chọn thể loại--</option>
        </select><br> <label for="noidung">Nội
			dung:</label>
		<!-- The textarea for CKEditor -->
		<textarea name="noidung" id="noidung"></textarea>
		<br> <label for="file">Ảnh:</label> <input type="file"
			name="file"><br>

		<button type="submit">Lưu</button>
	</form>

	<script>
   ClassicEditor
   .create(document.querySelector('#noidung'), {
       ckfinder: {
           uploadUrl: '/upload/image', // Đảm bảo đường dẫn đúng
       },
       toolbar: ['imageUpload', 'bold', 'italic', 'link'],
   })
   .then(editor => {
       console.log('Editor was initialized', editor);
   })
   .catch(error => {
       console.error(error);
   });
</script>

</body>
</html>
