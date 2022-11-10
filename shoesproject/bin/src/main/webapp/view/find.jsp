<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div>
		<h1>아이디 찾기</h1>
				<input type="text" placeholder="성명 입력란" id="findname"><br>
				<input type="text" placeholder="전화번호 입력란" id="findph" onkeyup="findid()" ><br> <!-- 키업이 안되는이유 onkeyup="meve()" -->
				<div class="fph"></div>
				<input type="checkbox">개인정보 동의<br>
			<a href="login.jsp"><button type="button" onclick="findid()">로그인하기</button></a>
			<a href="findpw.jsp">비밀번호 찾기</a>
			<div class="find"></div>
		
		
	</div>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../js/find.js"></script>
</body>
</html>