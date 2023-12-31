<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>QuoCar</title>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>

</style>

<!-- jQuery 라이브러리를 불러옵니다. -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/board/write.do";
		});
	});
</script>

</head>
<body>
   <form name="form1" method="post" action="${path}/board/list.do">
        <select name="searchOption">
            <!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
            <option value="all"    <c:out value="${map.searchOption == 'all'?'selected':''}"/> >전체</option>
            <option value="writer" <c:out value="${map.searchOption == 'writer'?'selected':''}"/> >이름</option>
            <option value="content"<c:out value="${map.searchOption == 'content'?'selected':''}"/> >내용</option>
            <option value="title"  <c:out value="${map.searchOption == 'title'?'selected':''}"/> >제목</option>
        </select>
        <input name="keyword" value="${map.keyword}">
        <input type="submit" value="조회">
		<button type="button" class="btn btn-danger" id="btnWrite">글쓰기</button>
    </form>
    <!-- 레코드의 갯수를 출력 -->
    ${map.count}개의 게시글
    <table border="1" width="600px">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>이름</th>
            <th>작성일</th>
            <th>조회수</th>
        </tr>
			<c:forEach var="row" items="${map.list}">
				<tr>
					<td>${row.bno}</td>
					<td><a href="${path}/board/view.do?bno=${row.bno}">${row.title}</a></td>
					<td>${row.writer}</td>
					<td>
						<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 --> <fmt:formatDate
							value="${row.regdate}" pattern="MM-dd HH:mm" />
					</td>
					<td>${row.viewcnt}</td>
				</tr>
			</c:forEach>
	</table>

	<a href="/Chat/View" class="fixed-button"> <img src="/img/phph.png"
		alt="Q 봇"></a>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>

