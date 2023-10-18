<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/common.css" />

<script>

	document
			.addEventListener(
					"DOMContentLoaded",
					function() {
						// 펼쳐보기 버튼을 클릭할 때 추가 내용을 토글하는 코드
						const expandButtons = document
								.querySelectorAll(".FeedView-module__btn_more___zGfeT");

						expandButtons
								.forEach(function(button) {
									button
											.addEventListener(
													"click",
													function() {
														// 현재 버튼의 부모 요소에서 추가 내용을 찾아서 토글
														const parent = button.parentElement;
														const additionalContents = parent
																.querySelectorAll(".additional-content, .additional-content2, .additional-content3");

														additionalContents
																.forEach(function(
																		additionalContent) {
																	if (additionalContent.style.display === "none"
																			|| additionalContent.style.display === "") {
																		additionalContent.style.display = "block";
																		button.innerHTML = "접기 ➖";
																	} else {
																		additionalContent.style.display = "none";
																		button.innerHTML = "펼쳐보기 ➕";
																	}

																});
													});
								});
					});

	//	   

	document.addEventListener("DOMContentLoaded", function() {
		const thumbnailImages = document.querySelectorAll(".thumbnail-image");

		thumbnailImages.forEach(function(image) {
			image.addEventListener("mouseenter", function() {
				// 호버 시 확대 효과 적용
				image.style.transform = "scale(1.1)";
			});

			image.addEventListener("mouseleave", function() {
				// 호버 해제 시 원래 크기로 돌아가기
				image.style.transform = "scale(1)";
			});

		});
	});

	// 슬라이드 컨텐츠
	var slideIndex = 0;
	showSlides();

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");

		if (slideIndex >= slides.length) {
			slideIndex = 0;
		}
		if (slideIndex < 0) {
			slideIndex = slides.length - 2;
		}

		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}

		for (i = slideIndex; i < slideIndex + 2; i++) {
			if (slides[i]) {
				slides[i].style.display = "block";
			}
		}
	}

	showSlides();
</script>

<style>
body {
	margin-bottom: 300px; /* footer와 겹치지 않도록 페이지 하단 여백 추가 */
}

footer {
	position: fixed; /* 화면 아래에 고정 */
	left: 0;
	bottom: 0;
	width: 100%; /* 전체 너비로 확장 */
	background-color: #333; /* 배경색 지정 (원하는 색상으로 변경) */
	color: #fff; /* 글자색 지정 (원하는 색상으로 변경) */
	text-align: center; /* 텍스트 가운데 정렬 */
	padding: 10px 0; /* 상하 여백 설정 */
}

br {
	border-bottom: 1px dashed #ccc; /* 연한 회색 점선 선으로 설정 */
}

.container {
	display: flex;
	background-color: #EFF2F6;
	justify-content: center; /* 가운데 위치시킴 */
}

.carnews {
	display: flex;
	background-color: #EFF2F6;
	justify-content: center; /* 가운데 위치시킴 */
}

.content {
	width: 20%; /* 각 컨텐츠 영역의 너비를 조정하여 반으로 나눕니다. */
	padding: 10px;
	border-radius: 10px;
	border: 1px solid #ccc;
	margin: 5px;
}

.content1 {
	max-width: 20%; /* 최대 너비 설정 */
	min-width: 10%; /* 최소 너비 설정 */
	max-height: 860px; /* 최대 세로 길이 설정 */
	padding: 5px;
	border-radius: 10px;
	border: 1px solid #ccc;
	margin: 5px;
	display: inline-block; /* 내용에 따라 자동으로 너비 조정 */
	background-color: white; /* 배경색을 흰색으로 설정 */
}

.scroll-animation {
  height: 300px; /* 스크롤 높이를 조정합니다. */
  overflow: hidden;
  position: relative;
}

.scroll-animation .content-inner {
  animation: scroll 10s linear infinite; /* 애니메이션 지속 시간 및 반복 횟수를 조정합니다. */
  transform-origin: top;
}

@keyframes scroll {
  0% {
    transform: translateY(0);
  }
  100% {
    transform: translateY(-100%);
  }
}

.card {
	display: flex;
	justify-content: center;
	align-items: center;
}

.food-image-container {
  width: 150px; /* 이미지의 폭 조정 */
  height: 150px; /* 이미지의 높이 조정 */
  border-radius: 10px; /* 가장자리를 둥글게 만들기 */
  overflow: hidden; /* 이미지가 가장자리를 벗어나지 않도록 숨기기 */
  margin: 0 auto; /* 이미지를 수평 중앙에 정렬 */
  display: flex;
  justify-content: center;
  align-items: center;
}

.food-title {
  text-align: center; /* 글자를 중앙 정렬 */
}

.content new car {
	max-width: 800px; /* 원하는 최대 너비로 조절합니다 */
	margin: 0 auto; /* 가운데 정렬합니다 */
	padding: 20px; /* 내용 주변의 간격을 추가합니다 */
}

h2 {
	margin: 10px; /* 상단과 하단의 마진을 10px로 설정 */
	mergin-left: 10px;
	color: #000; /* 흰색으로 설정 */
	font-size: 24px; /* 텍스트 크기를 조정하여 더 강조합니다. */
}

h3 {
	text-align: center;
}

.half-width {
	width: 50%; /* 이미지의 너비를 50%로 설정 */
}

/* P 태그 스타일 */
.content a {
	text-decoration: none; /* 링크 밑줄 제거 */
	color: black;
}

.content p {
	font-size: 24px; /* 글자 크기를 원하는 크기로 조절 */
	font-weight: bold; /* 볼드체로 설정 */
	margin: 0; /* 기본 마진 제거 */
}

.card-news {
	border: 1px solid #ccc;
	border-radius: 8px;
	margin: 10px;
	margin-bottom: 0;
	padding: 10px;
	width: 445px;
	background-color: #fff;
	padding: 10px;
}

.card-news a {
	text-decoration: none;
	color: #000;
}

.card-news-image img {
	width: 100%;
	height: auto;
	border-radius: 8px;
}

.card-news-content p {
	font-size: 14px;
}

.card-news-source {
	display: flex;
	align-items: center;
	margin-top: 10px;
}

.source-icon {
	width: 30px;
	height: 30px;
	margin-right: 10px;
}

.source-name {
	font-size: 12px;
}

.card-link {
	text-decoration: none;
	color: #333;
	display: inline-block;
}

.card-link:hover {
	text-decoration: underline;
}

.card-img:hover {
	transform: scale(1.1);
}

/* 비디오 썸네일 컨테이너 스타일 */
.video-thumbnails-container {
	display: flex;
	align-items: center;
	justify-content: space-between; /* 이미지 사이의 공백을 균등하게 배치 */
	margin-bottom: 20px;
}

/* 비디오 썸네일 이미지 스타일 */
.thumbnail-image {
	width: 200px;
	height: 200px;
	border-radius: 10px;
	transition: transform 0.2s ease;
}

/* 호버 시 이미지 확대 스타일 */
.thumbnail-image:hover {
	transform: scale(1.1);
}

/* 썸네일 이미지 아래의 텍스트 스타일 */
.video-thumbnails-container p {
	font-size: 16px; /* 텍스트 크기를 조금 크게 */
	text-align: center;
	color: #333; /* 더 어두운 텍스트 색상 */
}

/* 이미지 스타일 수정 */
.thumbnail-image {
	width: auto;
	max-height: 300px;
	margin: 0 15px; /* 이미지 간격을 좀 더 넓게 설정 */
}

/* 이미지 스타일 수정 (left-image 클래스에만 적용) */
.left-image {
	float: left;
	margin-right: 20px; /* 이미지 사이 간격을 더 넓게 설정 */
}

/* 텍스트 스타일 수정 */
.news-text {
	margin: 0;
	padding: 10px; /* 텍스트 주위에 패딩을 추가 */
}

/* 펼쳐보기 버턴 */
.FeedView-module__content_more {
	margin-top: 0; /* 기본 상단 여백을 0으로 설정 */
	margin-bottom: 0; /* 기본 상단 여백을 0으로 설정 */
	padding-top: 0; /* 기본 상단 내부 여백을 0으로 설정 */
}

/* 펼쳐보기 버튼을 중앙으로 정렬 */
.FeedView-module__btn_more___zGfeT {
	margin: 0 auto; /* 가로 중앙 정렬 */
	display: block; /* 버튼을 블록 레벨 요소로 변경하여 가로 중앙 정렬을 적용 */
	text-align: center; /* 텍스트를 가운데 정렬 */
	margin-top: 0px; /* 원하는 상단 여백 추가 */
	font-family: 'Noto Sans KR', sans-serif;
	/* 고급스러운 글꼴 지정 (Helvetica Neue 또는 비슷한 글꼴로 변경) */
}

/* 버튼 스타일 */
.FeedView-module__btn_more___zGfeT {
	background-color: transparent; /* 배경색 지정 (원하는 색상으로 변경) */
	color: #000; /* 글자색 지정 (원하는 색상으로 변경) */
	border: 2px solid #000; /* 테두리 추가 및 색상 지정 (원하는 색상으로 변경) */
	border-radius: 5px; /* 라운드 코너를 주어 고급스러운 모양으로 만듭니다. */
	padding: 15px 25px; /* 내부 여백을 추가하여 텍스트 주변에 여백을 둠 */
	font-size: 15px; /* 텍스트 크기를 조정하여 더 강조합니다. */
	cursor: pointer; /* 마우스 커서를 손가락 포인터로 변경하여 클릭 가능함을 나타냅니다. */
	transition: background-color 0.5s ease; /* 배경색 변경 시 부드러운 전환 효과 추가 */
}

/* 버튼 호버 시 스타일 */
.FeedView-module__btn_more___zGfeT:hover {
	background-color: #3381E5; /* 호버 시 배경색 변경 (원하는 색상으로 설정) */
	color: #fff; /* 호버 시 글자색 변경 (원하는 색상으로 설정) */
}

/* 추가 내용 컨테이너 스타일 */
.additional-contents-container {
	display: flex;
	flex-direction: column; /* 수직 방향으로 나란히 정렬 */
	align-items: center; /* 가운데 정렬 */
	background-color: #f8f8f8; /* 연한 회색 배경색 */
	padding: 20px; /* 내부 여백 설정 */
	border-radius: 12px; /* 모서리를 둥글게 */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}

/* 추가 내용 이미지 스타일 */
.additional-content .centered-image, .additional-content2 .centered-image,
	.additional-content3 .centered-image {
	width: 50%; /* 이미지 크기를 작게 조절 */
	height: auto; /* 이미지 높이를 자동 조절하여 원본 비율 유지 */
	border-radius: 12px; /* 이미지 모서리를 둥글게 설정 */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 이미지에 그림자 효과 추가 */
}

/* CSS for the container and sections */
.section-container {
	display: flex;
	justify-content: space-between; /* 각 섹션 사이에 공간 추가 */
	align-items: flex-start; /* 섹션을 상단 정렬 */
	padding: 20px; /* 외부 여백을 더 크게 설정 */
	background-color: #ffffff; /* 백그라운드 색을 흰색으로 설정 */
	border-radius: 12px; /* 컨테이너 모서리를 둥글게 설정 */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}

/* 추가 내용 제목 스타일 */
.additional-content h2 {
	font-size: 24px; /* 더 큰 글꼴 크기 */
	font-family: Arial, sans-serif; /* 통일된 글꼴 설정 */
	color: #333; /* 더 어두운 글꼴 색상 */
	margin-bottom: 10px; /* 아래쪽 여백 추가 */
}

/* 추가 내용 텍스트 스타일 */
.additional-content p {
	font-size: 16px; /* 텍스트 크기 조정 */
	font-family: Arial, sans-serif; /* 통일된 글꼴 설정 */
	color: #555; /* 미세하게 어두운 글꼴 색상 */
	line-height: 1.5; /* 행간을 늘려 전문적인 느낌을 줌 */
	text-align: justify; /* 텍스트를 양쪽 정렬로 전문적으로 보이도록 설정 */
}

.fixed-button {
	position: fixed;
	font-size: 25px;
	bottom: 80px; /* 위에서 20px 거리에 고정 */
	right: 60px; /* 오른쪽에서 20px 거리에 고정 */
	background-color: #4AA5D4;
	color: #fff;
	padding: 30px 30px;
	border: none;
	border-radius: 8px;
	cursor: pointer;
}

/* 버튼 눌렸을 때 스타일 */
.fixed-button:active {
	background-color: #356AA0; /* 원하는 배경색으로 변경 */
	transform: scale(1.1);
} /* 버튼 크기 축소 */

/* 자동차 매물 스타일 */
.supercar {
	position: relative;
	display: inline-block;
	overflow: hidden;
	width: 200px;
	height: 200px;
	margin-left: 10px;
	border-radius: 10px; /* 보다 더 둥근 테두리를 추가합니다. */
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* 그림자 효과를 추가합니다. */
	transition: transform 0.3s, box-shadow 0.3s;
	/* 호버 효과 및 그림자 변화에 애니메이션을 적용합니다. */
}

.supercar img {
	width: 100%; /* 이미지를 부모 컨테이너에 맞게 크기 조정합니다. */
	height: auto;
	object-fit: cover; /* 이미지가 컨테이너에 맞게 잘리지 않도록 합니다. */
	transition: transform 0.3s; /* 호버 효과를 위한 이미지 변환 애니메이션을 설정합니다. */
}

.image-caption {
	display: none;
	position: absolute;
	bottom: 10px;
	left: 10px;
	background-color: rgba(0, 0, 0, 0.7);
	color: #fff;
	padding: 5px 10px;
	border-radius: 5px;
	font-size: 16px; /* 글꼴 크기를 크게 만들어 고급스러움을 강조합니다. */
}

.supercar:hover img {
	transform: scale(1.05); /* 호버 시 이미지를 약간 확대합니다. */
	box-shadow: 0 8px 12px rgba(0, 0, 0, 0.3);
	/* 그림자를 더 강화하여 고급스러운 느낌을 줍니다. */
}

.supercar:hover .image-caption {
	display: block;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<div class="container">
		<div class="content">
			<h2>시승기</h2>
			<!-- 자동차 뉴스 내용을 이곳에 추가하세요 -->
			<h3></h3>
			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36619342&memberNo=1047921">
					<div class="card-news-image">
						<img src="/img/bmw_xm3.jpg" alt="BMW XM3">
					</div>
					<div class="card-news-content">
						<p>➡ the New 2023 BMW X3M - 모두가 만족할 고성능 SUV 이야기</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 소프트 엔진</span>
						</div>
					</div>
				</a>
			</div>

			&nbsp;

			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36614292&memberNo=11643111">
					<div class="card-news-image">
						<img src="/img/c40.png" alt="VOLVO C40 RECHARGE">
					</div>
					<div class="card-news-content">
						<p>➡ 2024 볼보 C40 Recharge 시승기</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 모터 메거진</span>
						</div>
					</div>
				</a>
			</div>

			&nbsp;

			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36616001&memberNo=31245283">
					<div class="card-news-image">
						<img src="/img/elatre.jpg" alt="LOTUS ELATRE ELECTRIC">
					</div>
					<div class="card-news-content">
						<p>➡ 로터스 하이퍼카... 마력 무려 990!</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : CAR GUY 카가이</span>
						</div>
					</div>
				</a>
			</div>

			&nbsp;

			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36615806&memberNo=783179">
					<div class="card-news-image">
						<img src="/img/gmc.jpg" alt="GMC">
					</div>
					<div class="card-news-content">
						<p>➡ GMC 정통 아메리칸 럭셔리</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 오토 이슈</span>
						</div>
					</div>
				</a>
			</div>
			<br>
			<button id="toggleButton" type="button"
				class="FeedView-module__btn_more___zGfeT">
				펼쳐보기 ➕ <i class="FeedView-module__ico_plus___dMU_U"></i>
			</button>
			<!-- 추가 내용을 감싸는 div -->
			<br>
			<div class="additional-content-container">
				<div class="additional-content" style="display: none;">
					<a
						href="https://post.naver.com/viewer/postView.naver?volumeNo=36605276&memberNo=11643111">
						<img src="/img/ix1.jpg" alt="BMW"
						class="centered-image left-image">
						<p>➡ BMW IX1 ELECTRIC</p> <br> <span class="naver"> <!--    <img src="/img/naver.png" alt="Car Guy" width="30" height="30"> -->
					</span> <span class="name">네이버: 모터매거진</span>
					</a>
				</div>
			</div>
			<br> <br> <br> <br>
			<div class="additional-content-container">
				<div class="additional-content2" style="display: none;">
					<a
						href="https://post.naver.com/viewer/postView.naver?volumeNo=36623963&memberNo=37243826">
						<img src="/img/bmw2.jpg" alt="BMW1"
						class="centered-image left-image">
						<p>➡ BMW 키드니 그릴</p> <br> <span class="naver"> <!--    <img src="/img/naver.png" alt="Car Guy" width="30" height="30"> -->
					</span> <span class="name">네이버: 도이치 모터스</span>
					</a>
				</div>
			</div>
			<br> <br> <br> <br>
			<div class="additional-content-container">
				<div class="additional-content3" style="display: none;">
					<a
						href="https://post.naver.com/viewer/postView.naver?volumeNo=36584270&memberNo=36780718">
						<img src="/img/torres.jpeg" alt="torres"
						class="centered-image left-image">
						<p>➡ 토레스로 도전한 차박.. 그 결과는?!</p> <br> <span class="naver">
							<!--    <img src="/img/naver.png" alt="Car Guy" width="30" height="30"> -->
					</span> <span class="name">네이버: KG 모빌리티</span>
					</a>
				</div>
			</div>
		</div>

		<div class="content new car">
			<h2>신차 출시 정보</h2>
			<!-- 자동차 정보 내용을 이곳에 추가하세요 -->
			<h3></h3>
			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36621834&memberNo=783179">
					<div class="card-news-image">
						<img src="/img/Eclass.jpg" alt="Benz Eclass">
					</div>
					<div class="card-news-content">
						<p>➡ Mercedes BENZ - E CLASS - 벤츠, 신형 E클래스 올터레인 공개</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 오토 이슈</span>
						</div>
					</div>
				</a>
			</div>

			&nbsp;

			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36620953&memberNo=32022697">
					<div class="card-news-image">
						<img src="/img/audi.jpg" alt="AUDI">
					</div>
					<div class="card-news-content">
						<p>➡ 아우디 Q4 e-트론 2024년형 공개</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 오토 이슈</span>
						</div>
					</div>
				</a>
			</div>

			&nbsp;

			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.naver?volumeNo=36619809&memberNo=25776368">
					<div class="card-news-image">
						<img src="/img/ajur.jpg" alt="bentley">
					</div>
					<div class="card-news-content">
						<p>➡ 벤틀리 플라잉스퍼 아주르 S 공개</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 더 아이오토</span>
						</div>
					</div>
				</a>
			</div>

			&nbsp;

			<div class="card-news">
				<a
					href="https://post.naver.com/viewer/postView.nhn?volumeNo=36634130&memberNo=44489085&isInf=true">
					<div class="card-news-image">
						<img src="/img/carnival.jpg" alt="kia">
					</div>
					<div class="card-news-content">
						<p>➡ 기아 카니발 페이스리프트카 포착</p>
						<div class="card-news-source">
							<img src="/img/naver.png" alt="Naver" class="source-icon">
							<span class="source-name">네이버 포스팅 : 카빌리프</span>
						</div>
					</div>
				</a>
			</div>
			<br>
			<button id="toggleButton" type="button"
				class="FeedView-module__btn_more___zGfeT">
				펼쳐보기 ➕ <i class="FeedView-module__ico_plus___dMU_U"></i>
			</button>
			<br>
			<div class="additional-content-container">
				<div class="additional-content" style="display: none;">
					<a
						href="https://post.naver.com/viewer/postView.naver?volumeNo=36621367&memberNo=35797058">
						<img src="/img/alfa.jpg" alt="BMW"
						class="centered-image left-image">
						<p>➡ AlfaRomeo 스트라달레 출시</p> <br> <span class="naver">
							<!--    <img src="/img/naver.png" alt="Car Guy" width="30" height="30"> -->
					</span> <span class="name">네이버 포스팅 : 카매거진</span>
					</a>
				</div>
			</div>
			<br> <br> <br>
			<div class="additional-content-container">
				<div class="additional-content2" style="display: none;">
					<a
						href="https://post.naver.com/viewer/postView.naver?volumeNo=36597139&memberNo=5549852">
						<img src="/img/chuseok.jpg" alt="BMW1"
						class="centered-image left-image">
						<p>➡ 추석 연휴 장거리 운전 차량 관리 노하우</p> <br> <span class="naver">
							<!--    <img src="/img/naver.png" alt="Car Guy" width="30" height="30"> -->
					</span> <span class="name">네이버 포스팅 : 불스원 </span>
					</a>
				</div>
			</div>
			<br> <br> <br>
			<div class="additional-content-container">
				<div class="additional-content3" style="display: none;">
					<a
						href="https://post.naver.com/viewer/postView.naver?volumeNo=36633231&memberNo=24075080">
						<img src="/img/ex30.jpg" alt="VOLVO"
						class="centered-image left-image">
						<p>➡ 볼보 EX30 전기차 출시 임박</p> <br> <span class="naver"> <!--    <img src="/img/naver.png" alt="Car Guy" width="30" height="30"> -->
					</span> <span class="name">네이버 포스팅 : M Today </span>
					</a>
				</div>
			</div>
		</div>
		<div class="content1">
			<h2>뉴스</h2>
			<!-- 자동차 정보 내용을 이곳에 추가하세요 -->
			<h3></h3>
			<br>
			<div class="card">
				<a
					href="https://www.yna.co.kr/view/AKR20231012158100003?input=1195m"
					class="card-link"> <img src="/img/news1.jpg" class="card-img"
					alt="뉴스 이미지">
					<div class="card-text">
						<h5 class="card-title">연합뉴스</h5>
						<p>
							<small>16일부터 한달간 불법 자동차 집중 단속</small>
						</p>
					</div>
				</a>
			</div>
			<br>
			<hr>
			<br>
			<div class="card">
				<a href="https://zdnet.co.kr/view/?no=20231013084614"
					class="card-link"> <img src="/img/news2.jpg" class="card-img"
					alt="뉴스 이미지">
					<h5 class="card-title">지디넷코리아</h5>
					<p class="card-text">
						<small>쎄아 밴 전기자동차 판매</small>
					</p>
				</a>
			</div>
			<br>
			<hr>
			<br>
			<div class="card">
				<a href="https://www.news1.kr/articles/5196389" class="card-link">
					<img src="/img/news3.jpg" class="card-img" alt="뉴스 이미지">
					<h5 class="card-title">뉴스1</h5>
					<p class="card-text">
						<small>현대자동차, 2023 트럭·버스 페스타 개최</small>
					</p>
				</a>
			</div>
			<br> <br>
			<div class="scroll-animation">
				<div class="content-inner">
					<div class="scrolling-content">
						<!-- 자동차 정보 내용을 이곳에 추가하세요 -->
						<br> <br>
						<div class="card">
							<a
								href="https://smartstore.naver.com/motorsjason/products/5555810662?n_media=122876&n_query=%EC%9E%90%EB%8F%99%EC%B0%A8%EB%B0%A9%ED%96%A5%EC%A0%9C&n_rank=1&n_ad_group=grp-a001-02-000000021670524&n_ad=nad-a001-02-000000137069428&n_campaign_type=2&n_mall_id=ncp_1no89w_01&n_mall_pid=5555810662&n_ad_group_type=2&n_match=3&NaPm=ct%3Dlno4wye8%7Cci%3D0ye0002iNgvzFYSCy1kY%7Ctr%3Dpla%7Chk%3D98d63ad246dd6323a528d64ab4444f628fe53819"
								class="card-link"> <img src="/img/mylon1.jpg"
								class="card-img" alt="뉴스 이미지">
								<h3 class="card-title">마일론 방향제</h3>
							</a>
						</div>
						<br>
						<div class="card">
							<a
								href="https://smartstore.naver.com/motorsjason/products/5555810662?n_media=122876&n_query=%EC%9E%90%EB%8F%99%EC%B0%A8%EB%B0%A9%ED%96%A5%EC%A0%9C&n_rank=1&n_ad_group=grp-a001-02-000000021670524&n_ad=nad-a001-02-000000137069428&n_campaign_type=2&n_mall_id=ncp_1no89w_01&n_mall_pid=5555810662&n_ad_group_type=2&n_match=3&NaPm=ct%3Dlno4wye8%7Cci%3D0ye0002iNgvzFYSCy1kY%7Ctr%3Dpla%7Chk%3D98d63ad246dd6323a528d64ab4444f628fe53819"
								class="card-link"> <img src="/img/vendict.jpg"
								class="card-img" alt="뉴스 이미지">
								<h3 class="card-title">벤딕트 무선충전 거치대</h3>
							</a>
						</div>
						<br>
						<div class="card">
							<a
								href="https://brand.naver.com/theclass/products/4754587454?n_keyword=&n_rank=1&n_query=%EB%8D%94%ED%81%B4%EB%9E%98%EC%8A%A4%EC%99%81%EC%8A%A4&n_campaign_type=2&n_media=11068&n_campaign=cmp-a001-02-000000004679502&n_ad_group=grp-a001-02-000000024185435&n_ad=nad-a001-02-000000159802574&n_match=3&n_network=search&n_mall_id=theclass1228&n_mall_pid=4754587454&n_ad_group_type=2&n_keyword_id=&n_ad_extension=&NaPm=ct%3Dlno6p9zc%7Cci%3D0yW0001bQgvzM_p8A1oG%7Ctr%3Dpla%7Chk%3D4058e2448683625aa60c36447287945419d9126b"
								class="card-link"> <img src="/img/theclass.jpg"
								class="card-img" alt="뉴스 이미지">
								<h3 class="card-title">더클래스 타이거불렛 물왁스</h3>
							</a>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="content2">
				<h2>관광 · 체험</h2>
				<h3></h3>
				<br>
				<div class="food">
					<a
						href="https://www.yna.co.kr/view/AKR20231012158100003?input=1195m"
						class="card-link">
						<div class="food-image-container">
							<img src="/img/hmg.jpg" class="card-img" alt="현대 드라이빙">
						</div>
						<div class="food-text">
							<h4 class="food-title">HMG 드라이빙</h4>
						</div> <a
						href="https://www.yna.co.kr/view/AKR20231012158100003?input=1195m"
						class="card-link" style="margin-left: 40px;">
							<div class="food-image-container">
								<img src="/img/dogcafe.jpg" class="card-img" alt="남양주 코니아일랜드">
							</div>
							<div class="food-text">
								<h4 class="food-title">남양주 코니아일랜드</h4>
							</div>
					</a>
				</div>
				<br>
				<div class="food">
					<a
						href="https://smartstore.naver.com/ulsanparapark?n_media=27758&n_query=%EB%B6%80%EC%82%B0%EA%B7%BC%EA%B5%90%EC%97%AC%ED%96%89%EC%A7%80&n_rank=4&n_ad_group=grp-a001-01-000000027682538&n_ad=nad-a001-01-000000203280548&n_keyword_id=nkw-a001-01-000005324979947&n_keyword=%EB%B6%80%EC%82%B0%EA%B7%BC%EA%B5%90%EC%97%AC%ED%96%89%EC%A7%80&n_campaign_type=1&n_ad_group_type=1&n_match=1&NaPm=ct%3Dlnobhfig%7Cci%3D0Ewc002HY2vzfQTvsuW1%7Ctr%3Dsa%7Chk%3De0d295f472ca20d64caa14ddaae3922889b8da4a"
						class="card-link">
						<div class="food-image-container">
							<img src="/img/yna.jpg" class="card-img" alt="드라이빙">
						</div>
						<div class="food-text">
							<h4 class="food-title">영남 패러글라이딩</h4>
						</div>
					</a>
					<a
						href="https://www.hyatt.com/ko-KR/hotel/south-korea/park-hyatt-busan/busph?src=agn_pfx_prop_sem_busph_other_naver_brandsearch_homelink_pc_homelink&gclid=CMyC0q_H8oEDFXJAwgUdWiAHcg&gclsrc=ds"
						class="card-link" style="margin-left: 40px;">
						<div class="food-image-container">
							<img src="/img/parkha.png" class="card-img" alt="">
						</div>
						<div class="food-text">
							<h4 class="food-title">부산 파크하얏트</h4>
						</div>
					</a>
				</div>
			</div>
			<br>
			<div class="content2">
				<h2>맛집</h2>
				<h3></h3>
				<br>
				<div class="food">
					<a
						href="https://blog.naver.com/hhj408/223161064890"
						class="card-link">
						<div class="food-image-container">
							<img src="/img/schedule.jpg" class="card-img" alt="">
						</div>
						<div class="food-text">
							<h4 class="food-title">스케줄 해운대</h4>
						</div> <a
						href="https://map.naver.com/p/entry/place/1404984939?c=15.00,0,0,0,dh"
						class="card-link" style="margin-left: 40px;">
							<div class="food-image-container">
								<img src="/img/oktop.png" class="card-img" alt="제주옥탑">
							</div>
							<div class="food-text">
								<h4 class="food-title">장림 제주옥탑</h4>
							</div>
					</a>
				</div>	
			</div>			
		</div>
		<div class="carlink">
			<h2
				style="font-size: 24px; font-family: 'Arial', sans-serif; margin-bottom: 10px;">특종매물</h2>
			<h3></h3>
			<div class="bbdream">
				<a
					href="https://www.bobaedream.co.kr/cyber/CyberCar_view?gubun=I&no=768036">
					<div class="supercar">
						<img src="/img/slr.jpg" alt="Benz slr">
						<p class="image-caption">벤츠 SLR 맥라렌</p>
					</div>
				</a>
			</div>
			<div class="bbdream">
				<a
					href="https://www.bobaedream.co.kr/cyber/CyberCar_view.php?no=762646&gubun=I">
					<div class="supercar">
						<img src="/img/rr.jpg" alt="rr">
						<p class="image-caption">롤스로이스 컬리넌</p>
					</div>
				</a>
			</div>
			<div class="bbdream">
				<a
					href="https://www.bobaedream.co.kr/cyber/CyberCar_view.php?no=763557&gubun=I">
					<div class="supercar">
						<img src="/img/gwagen.jpg" alt="Benz g63">
						<p class="image-caption">벤츠 G63 AMG</p>
					</div>
				</a>
			</div>
			<!-- 인스타 링크 -->
			<div class="instacontent">
				<h2
					style="font-size: 24px; font-family: 'Arial', sans-serif; margin-bottom: 10px;">유익한
					정보</h2>
				<div class="slideshow-container">
					<div class="mySlides">
						<a href="https://www.instagram.com/p/CxIfvxuP0jq"
							style="text-align: center; display: flex; flex-direction: row; align-items: center;">
							<img src="/img/caring1.png" alt="caring" class="thumbnail-image">
						</a>
					</div>
					<div class="mySlides">
						<a href="https://www.instagram.com/p/Cx0RQymhJ-e"
							style="text-align: center; display: flex; flex-direction: row; align-items: center;">
							<img src="/img/caring2.png" alt="caring" class="thumbnail-image">
						</a>
					</div>
					<div class="mySlides" style="display: none;">
						<a href="https://www.instagram.com/p/Cxfq5-mP51J"
							style="text-align: center; display: flex; flex-direction: row; align-items: center;">
							<img src="/img/caring3.png" alt="caring" class="thumbnail-image">
						</a>
					</div>
					<div class="mySlides" style="display: none;">
						<a href="https://www.instagram.com/p/CuhPeTEh1lp"
							style="text-align: center; display: flex; flex-direction: row; align-items: center;">
							<img src="/img/caring4.png" alt="caring" class="thumbnail-image">
						</a>
					</div>
					<!-- 이전 및 다음 버튼 (크게 만들어짐, 마우스 호버 시 손 모양 커서로 변경) -->
					<a class="prev" onclick="plusSlides(0)"
						style="font-size: 24px; padding: 10px; cursor: pointer;">&#10094;</a>
					<a class="next" onclick="plusSlides(1)"
						style="font-size: 24px; padding: 10px; cursor: pointer;">&#10095;</a>
				</div>
				<!-- 유튜브 링크 -->
				<div class="videocontent">
					<h2
						style="font-size: 24px; font-family: 'Arial', sans-serif; margin-bottom: 10px;">추천영상</h2>
					<div class="slideshow-container">
						<div class="mySlides">
							<a href="https://www.youtube.com/watch?v=mQDz-xWC16A&t=425s"
								style="text-align: center; display: flex; flex-direction: row; align-items: center;">
								<img src="/img/jcar.jpg" alt="유튜브" class="thumbnail-image">
							</a>
						</div>
						<br>
						<div class="mySlides1">
							<a href="https://www.youtube.com/watch?v=aXmzsCiSbxo&t=10s"
								style="text-align: center; display: flex; flex-direction: row; align-items: center;">
								<img src="/img/mocar.jpg" alt="caring" class="thumbnail-image">
							</a>
						</div>
						<br>
						<div class="mySlides1">
							<a href="https://www.youtube.com/watch?v=f72yo3leWIQ"
								style="text-align: center; display: flex; flex-direction: row; align-items: center;">
								<img src="/img/oilcar.jpg" alt="caring" class="thumbnail-image">
							</a>
						</div>
						<br>
						<div class="mySlides1">
							<a href="https://www.youtube.com/watch?v=18btQyFChc0&t=2s"
								style="text-align: center; display: flex; flex-direction: row; align-items: center;">
								<img src="/img/brake.jpg" alt="caring" class="thumbnail-image">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<button class="fixed-button">Q 봇</button>
	<!-- 여기에 내용 추가 -->

	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>