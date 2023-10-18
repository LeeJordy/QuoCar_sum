<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <link rel="stylesheet" href="/css/register.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        
 
</head>
<body>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<h3>회원 가입</h3>
<h2>Quo Car</h2>
<p class="w-pct60 right" style="margin: 0 auto; padding-bottom: 5px; font-size: 13px;">* 표시는 필수 항목입니다.</p>

<!-- 사용자 등록을 위한 폼 시작 -->

<form id="registrationForm" action="/insertUser" method="POST">    
    <table class="w-pct60">
        <!-- 이름 입력 필드 -->
        <tr>
            <th class="w-px160" >* 이름</th>
            <td><input type="text" name="name" /></td>
        </tr>
        <!-- 아이디 입력 필드  -->
        
        <tr>
            <th>* 아이디</th>
            <td>
                <input type="text" name="userId" class="chk" id="userId" /><br>
                <div class='valid'>아이디를 입력하세요 (소문자 영문자와 숫자만 허용됩니다)</div>
                <button type="button" id="idCheckButton">중복 확인</button>
            </td>
        </tr>
         <!-- 비밀번호 입력 필드  -->
        
        <tr>
            <th>* 비밀번호</th>
            <td>
                <input type="password" name="password" id="pw" class="chk" />
                <div class="valid">대소문자 및 숫자를 모두 포함한 비밀번호를 입력하세요</div>
            </td>
        </tr>
        
        <!--   비밀번호 확인 입력 필드  -->
        <tr>
            <th>* 비밀번호 확인</th>
            <td>
                <input type="password" name="passwordCheck" id="pw_ck" class="chk" />
                <div class="valid">비밀번호를 다시 입력하세요</div>
                <div id="password-error" style="color: red; font-size: 13px; font-weight: bold;"></div>
            </td>
        </tr>
        
        <!-- 성별 선택 라디오 버튼 -->
        <tr>
            <th> 성별</th>
            <td>
                <label><input type="radio" name="gender" value="남성" checked/>남성</label>
                <label><input type="radio" name="gender" value="여성" />여성</label>
            </td>
        </tr>
        
        <!-- 이메일 입력 필드 -->
        <tr>
            <th> 이메일</th>
            <td>
                <input type="text" name="email" />
                <div class="valid">이메일을 입력하세요</div>
            </td>
        </tr>
        <!-- 생년월일 입력 필드 (달력) -->
        <tr>
            <th> 생년월일</th>
            <td>
                <input type="text" name="birthdate" id="datepicker" />                
            </td>
        </tr>
        
        <!-- 차량 모델 선택 드롭다운 -->
        <tr>
            <th>* 차량 모델</th>
            <td>
                <select name="carManufacturer" id="vehicleModel" required>
                    <option value="" disabled selected hidden>선택하세요</option>
                    <option value="현대">현대</option>
                    <option value="기아">기아</option>
                    <option value="KG 모빌리티">KG 모빌리티</option>
                </select>
            </td>
        </tr>
        <!--   차량명 선택 드롭다운 -->
        <tr>
            <th>* 차량명</th>
            <td>
                <select name="carModel" id="vehicleName">
                </select>
            </td>
        </tr>
        
    </table>

    <!-- 회원 가입 버튼 -->
    <input type="submit" value="가입하기">
</form>


   <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/js/all.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script>
$( function() {	
    // 생년월일 선택을 위한 달력 설정
    $("#datepicker").datepicker({
        dateFormat: 'yymmdd',
        changeYear: true, // 연도 선택 허용
        yearRange: '1900:' + new Date().getFullYear(), // 연도 범위 설정
        maxDate: '0', // 오늘 이전 날짜만 선택 가능
    });

    // 직접 날짜를 입력하는 경우 달력 표시
    $("#datepicker").on("focus", function() {
        $(this).datepicker("show");
    });

    // 차량 모델 선택 필드와 차량명 선택 필드에 대한 참조
    var modelSelect = document.getElementById("vehicleModel");
    var nameSelect = document.getElementById("vehicleName");

    // 차량 모델과 차량명을 매핑하는 JavaScript 객체
    var availableNames = {
        "현대": ["아반떼", "소나타"],
        "기아": ["K3", "K5"],
        "KG 모빌리티": ["티볼리", "트랙스"],
    };

    // 차량 모델 선택이 변경될 때 차량명 선택 필드 업데이트
    modelSelect.addEventListener("change", function() {
        var selectedModel = modelSelect.value;
        var names = availableNames[selectedModel] || [];

        // 기존 옵션 제거
        nameSelect.innerHTML = "";

        // 새로운 옵션 추가
        names.forEach(function(name) {
            var option = document.createElement("option");
            option.value = name;
            option.text = name;
            option.style.width = name.length * 10 + "px";
            nameSelect.appendChild(option);
        });
    });

    // 초기화를 위한 변경 이벤트 트리거
    modelSelect.dispatchEvent(new Event("change"));

    // 비밀번호 확인 체크
    document.getElementById("pw_ck").addEventListener("blur", function() {
        var password = document.getElementById("pw").value;
        var passwordConfirmation = this.value;
        var passwordError = document.getElementById("password-error");

        if (password !== passwordConfirmation) {
            passwordError.textContent = "비밀번호가 일치하지 않습니다!";
        } else {
            passwordError.textContent = "";
        }
    });

    // 아이디 중복 확인 버튼 클릭 이벤트 처리
    document.getElementById("idCheckButton").addEventListener("click", function() {
        var userId = document.getElementById("userId").value;

        // 아이디 중복 확인을 서버에 요청하고 처리하는 코드 추가
        $.ajax({
            url: "/user/register",
            type: "post",
            dataType: "json",
            data: { "userId": userId },
            success: function(data) {
                if (data === true) {
                    alert("이 ID는 이미 사용 중입니다.");
                } else {
                    alert("이 ID는 사용 가능합니다.");
                }
            },
            error: function() {
                alert("서버 오류가 발생했습니다. 다시 시도해주세요.");
            }
        });
    });
});
   </script>

</body>
</html>
