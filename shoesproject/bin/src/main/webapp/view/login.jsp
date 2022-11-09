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
			아이디 :<input type="text" id="lid">  <br>
			패스워드 : <input type="text" id="lpw"> 
			<div class="alertp"></div>
		</div>
			<button	type="button" onclick="login()">로그인하기</button><br>
		
			<a href="회원가입.jsp"><button>회원가입</button></a>
			<a href="find.jsp"><button type="button">아이디찾기</button></a>
			<a href="findpw.jsp"><button type="button">비밀번호찾기</button></a>
			
		</div>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/login.js"></script>

</body>
</html>