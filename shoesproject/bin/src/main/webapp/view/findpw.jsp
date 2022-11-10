<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	
	<h1>비밀번호 찾기</h1>
		<input type="text" placeholder="아이디" id="findid"><br>
		<input type="text" placeholder="성명 입력란" id="sname"><br>
		<input type="text" placeholder="전화번호 입력란" id="sph" ><br> <!-- 키업이 안되는이유 onkeyup="meve()" -->
		<div class="findbox"></div>
		<button type="button" onclick="findpw()">비밀번호찾기</button><br>
		
		<a onclick="loginview()">로그인</a>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../js/find.js"></script>
</body>
</html>