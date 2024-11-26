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
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .post-form {
            width: 100%;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            margin: 50px auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .post-form h2 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group textarea,
        .form-group select,
        .form-group input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-group textarea {
            resize: vertical;
            height: 150px;
        }

        .submit-button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .submit-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
 <div class="post-form">
        <h2>Chỉnh sửa bài viết</h2>
        <form action="${pageContext.request.contextPath}/chinhsuabaiviet/${review.id}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="tieude">Tiêu đề:</label>
                <input type="text" name="tieude" id="tieude" value="${review.tieude}" required>
            </div>
            <div class="form-group">
                <label for="tacgia">Tác giả:</label>
                <input type="text" name="tacgia" id="tacgia" value="${review.tacgia}" required>
            </div>
            <div class="form-group">
                <label for="phanloai">Phân loại:</label>
                <select name="phanloai" id="phanloai" value="${review.phanloai}" required>
                    <option value="">--Chọn phân loại--</option>
                    <option value="sach">Sách</option>
                    <option value="truyen">Truyện</option>
                </select>
            </div>
            <div class="form-group">
                <label for="theloai">Thể loại:</label>
                <select name="theloai" id="theloai" value="${review.theloai}" required>
                    <option value="">--Chọn thể loại--</option>
                </select>
            </div>
            <div class="form-group">
                <label for="noidung">Nội dung:</label>
                <textarea name="noidung" id="noidung" value="${review.noidung}"></textarea>
            </div>
            <div class="form-group">
                <label for="file">Ảnh:</label>
                <input type="file" name="file" id="file">
            </div>
            <button type="submit" class="submit-button">Lưu</button>
        </form>
    </div>
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
