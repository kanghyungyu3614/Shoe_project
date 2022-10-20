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
			<h3>로그인 </h3>
			
			
		<div class="readid">
			아이디 :<input type="text" class="l_id">  <br>
			<div class="alerti"></div>
			패스워드 : <input type="text" class="l_pw"> 
			<div class="alertp"></div>
		</div>
			<button onclick="login()">로그인하기</button>
			<button type="button" onclick="findid()">아이디찾기</button>
			<button type="button" onclick="findipw()">비밀번호찾기</button>
			
		</div>

	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/login.js"></script>

</body>
</html>