<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuoCar</title>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
/*
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid black;
  padding: 10px;
}

th {
  background-color: #ddd;
}

td a {
  text-decoration: none;
  color: blue;
}

.fixed-button {
  position: fixed;
  bottom: 0;
  right: 0;
  width: 200px;
  height: 200px;
}
*/
/* 페이지 전체 스타일 */
.container {
	display: flex;
	background-color: #EFF2F6;
	justify-content: center; /* 가운데 위치시킴 */
}
/* 테이블 스타일 */
table {
	width: 100%;
	border-collapse: collapse; /* 테이블 경계 스타일 설정 */
	margin-bottom: 20px;
	margin: 0;
	padding: 50px
}

/* 테이블 헤더와 셀 스타일 */
th, td {
	padding: 10px;
	border-bottom: 1px solid #ddd; /* 아래쪽 테두리 설정 */
	text-align: left;
}

/* 테이블 헤더 스타일 */
th {
	background-color: #f8f8f8; /* 배경색 설정 */
	font-weight: bold; /* 굵은 글꼴 설정 */
}

th, td {
	width: 20%; /* 셀 너비 설정 */
}

/* 버튼 스타일 */
.btn-danger {
	padding: 10px 20px;
	cursor: pointer;
}

.btn-danger:hover {
	background-color: #c9302c; /* 호버 시 배경색 변경 */
	border-color: #ac2925; /* 호버 시 테두리색 변경 */
}

/* 고정 버튼 스타일 */
.fixed-button {
	position: fixed; /* 고정 위치 설정 */
	bottom: 20px; /* 아래 여백 설정 */
	right: 20px; /* 오른쪽 여백 설정 */
}

.fixed-button img {
	width: 50px; /* 이미지 너비 설정 */
	height: 50px; /* 이미지 높이 설정 */
}
</style>

<!-- jQuery 라이브러리를 불러옵니다. -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/Board/write.do";
		});
	});
</script>

</head>
<body>
	<button type="button" class="btn btn-danger" id="btnWrite">글쓰기</button>
	<table class="table">
		<thead>
			<tr class="table-danger">
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">이름</th>
				<th scope="col">작성일</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${list}">
				<tr>
					<td>${row.bno}</td>
					<td><a href="${path}/Board/view.do?bno=${row.bno}">${row.title}</a></td>
					<td>${row.writer}</td>
					<td>
						<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 --> <fmt:formatDate
							value="${row.regdate}" pattern="MM-dd HH:mm" />
					</td>
					<td>${row.viewcnt}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<a href="/Chat/View" class="fixed-button"> <img src="/img/phph.png"
		alt="Q 봇"></a>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>

