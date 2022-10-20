<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
		
</head>
<body>


<form action="/태섭_경주포폴/member/signup" method="post" class="sign">

	<h1>회원가입</h1>ㅁ
	
		<input type="text" value="이름" id="name" name="name">
	
		<input type="text" value="아이디" id="id" onkeyup="idc()" name="id">
		<div class="m"></div>
		<input type="text" value="비밀번호" id="pw" onkeyup="pwc()" name="pw">
		<div class="m1"></div>
		
		<input type="text" value="전화번호" id="ph" onkeyup="phc()" name="ph">
		<div class="m2"></div>
		<input type="text" value="주소" id="ad" name="ad">
		
		<input type="text" value="발사이즈" id="size" onkeyup="sizec()" name="size">
		<div class="m3"></div>
		<div class="signup">
		<button type="button" onclick="signup()" >가입하기</button>
		<button type="reset">취소하기</button>
		</div> 
	
	
</form>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../js/회원가입.js"></script>
</body>
</html>