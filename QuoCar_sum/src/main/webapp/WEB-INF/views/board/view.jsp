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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<style>
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	$(document).ready(function() {
		$("#btnUpdeteform").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/Board/updateform.do";
		});
	});
</script>
</head>
<body>

	<form name="form1" method="post">
		<div class="card">
			<div class="card-body">
				<!-- 제목 -->
				<h3 style="color:rgb(184, 43, 42);" class="card-title">${dto.title}</h3>
				<!-- 날짜 -->
				<div class="row row-cols-3 row-cols-lg-5 g-2 g-lg-3"">
					<div class="col">작성일 :${dto.regdate}</div>
					<div class="col">조회수 : ${dto.viewcnt}</div>
					<div class="col">이 름 : ${dto.writer}</div>
				</div>
				<!-- 내용 -->
				<p class="card-text border bg-light">${dto.content}</p>
			</div>
			<div style="width: 650px; text-align: center;"></div>
			<div>
				<!-- 게시물번호를 hidden으로 처리 -->
				<!-- <input type="hidden" name="bno" value="${dto.bno}">  -->
				<a class="btn btn-primary btn-sm"
					href="${path}/Board/updateform.do?bno=${dto.bno}">수정</a>
			</div>
		</div>

	</form>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>

