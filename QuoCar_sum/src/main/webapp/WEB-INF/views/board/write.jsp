<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>QuoCar</title>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>

body {
	font-family: sans-serif;
	font-size: 14px;
}

h2 {
	font-size: 20px;
	font-weight: bold;
}

.container {
	margin-top: 30px;
}

.form-group {
	margin-bottom: 20px;
}

.form-control {
	border-radius: 0;
	box-shadow: none;
	font-size: 14px;
}

.btn-primary {
	border-radius: 0;
	box-shadow: none;
	color: #fff;
	background-color: #007bff;
}

.btn-primary:hover {
	background-color: #0069d9;
}

.fixed-button {
	position: fixed;
	bottom: 30px;
	right: 30px;
}
</style>
<script src="https://code.jquery.com/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {
			//var title = document.form1.title.value; ==> name속성으로 처리할 경우
			//var content = document.form1.content.value;
			//var writer = document.form1.writer.value;
			var title = $("#title").val();
			var content = $("#content").val();
			var writer = $("#writer").val();

			if (title === null || title == "") {
				alert("제목을 입력하세요.");
				document.form1.title.focus();
				return;
			}
			if (content === null || content == "") {
				alert("내용을 입력하세요.");
				document.form1.content.focus();
				return;
			}
			if (writer === null || writer == "") {
				alert("닉네임을 입력하세요.");
				document.form1.writer.focus();
				return;
			}
			// 폼에 입력한 데이터를 서버로 전송
			document.form1.submit();
		});
	});
</script>
</head>

<body>
	<h2 style="font-size: 15px; font-weight: bold;">게시글 작성</h2>
	<form name="form1" method="post" action="${path}/Board/insert.do">
		<div>
			<input name="title" id="title" size="100" placeholder="제목을 입력해주세요">
		</div>
		<div>
			<textarea name="content" id="content" rows="4" cols="80"
				placeholder="내용을 입력해주세요"></textarea>
		</div>

		<div>
			닉네임 <input name="writer" id="writer" placeholder="닉네임을 입력해주세요">
		</div>
		<div style="width: 650px; text-align: center;">
			<button type="button" id="btnSave">확인</button>
			<button type="reset">취소</button>
		</div>
	</form>

	<a href="/Chat/View" class="fixed-button"> <img src="/img/phph.png"
		alt="Q 봇"></a>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />




</body>
</html>

