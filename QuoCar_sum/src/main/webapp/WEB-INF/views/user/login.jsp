<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="/css/login.css"> <!-- 스타일을 위해 'styles.css'를 가져옵니다. -->
</head>
<body>
    <div class="login-container">
        <h1>로그인</h1>
        <form action="loginprocess" method="post">
            <div class="input-container">
                <label for="username">사용자명:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-container">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">로그인</button>
        </form>
        <p>계정이 없으신가요? <a href="register">가입하기</a></p>
    </div>
</body>
</html>
