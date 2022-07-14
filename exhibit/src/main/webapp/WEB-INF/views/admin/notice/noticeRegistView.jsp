<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Jquery -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#regist_btn").click(function() {
			$("#noticeRegistForm").attr('action', '/admin/notice/noticeRegist');
			$("#noticeRegistForm").submit();
			alert("공지등록이 완료되었습니다.");
		});
	});
</script>
</head>
<body>

<form method="POST" id="noticeRegistForm">
	제목 <input type="text" name="title" id="title" />
	<br />
	내용 <textarea rows="20" cols="50" name="content" id="content">
	</textarea>
	<br />
	작성자 <input type="text" name="writer" id="wirter" value="관리자" />
	<br />
	이미지 <input type="file" name="img_Origin_Nm" id="Img_Origin_Nm" />
	<br />
	<input type="button" id="regist_btn" value="등록" />
</form>
</body>
</html>