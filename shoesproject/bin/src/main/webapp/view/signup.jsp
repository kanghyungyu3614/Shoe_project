<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		
</head>
<body>

<form class="lsignup" action="/shoesproject/shoe/signup" method="post">

	<h2> 회원가입 </h2>
	<h3> 기입정보 </h3>


	<table>
		<tr>
			<td><input type="text" placeholder="이름" name="lname" id="lname"></td>
			<td class="cocl3"></td>
	
		</tr>
		<tr>
			
			<td><input type="text" placeholder="아이디" name="lid" id="lid" onkeyup="log1()"></td>
			<td class="cocl3"></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="비밀번호" name="lpw" id="lpw" onkeyup="log2()"></td>
			<td class="cocl3"></td>
			
		</tr>
		<tr>
			<td><input type="text" placeholder="전화번호" name="lph" id="lph" onkeyup="log3()"></td>
			<td class="cocl3"></td>
			
		</tr>
		<tr>
			<td><input type="text" placeholder="이메일" name="lemail" id="lemail" onkeyup="log4()"></td>
			<td class="cocl3"></td>
		</tr>
		<tr>
			<td> <input type="text" placeholder="발사이즈"  name="lsize" id="lsize" onkeyup="log5()"></td>
			<td class="cocl3"></td>
		</tr>
		
	</table>
	<h3>이용약관</h3>
		<span>
			<input type="checkbox" id="chek1">약관1<p>
			<textarea rows="" cols="" readonly="readonly" style="resize: none;"></textarea><p>
			<input type="checkbox" id="chek2">약관2<p>
			<textarea rows="" cols="" readonly="readonly" style="resize: none;"></textarea>
			
		</span>	
	<div>
		<button type="button" onclick="signupbtn()"> 가입하기</button>
		<button type="reset"> 취소하기 </button>
	</div>	
		
</form>

<!-- <form action="/태섭_경주포폴/member/signup" method="post" class="sign">

	<h1>회원가입</h1>
	
		<input type="text" placeholder="이름" id="s_name" name="s_name" onkeyup="namec()">
		<div class="m"></div>
		<input type="text" placeholder="아이디" id="s_id" onkeyup="idc()" name="s_id">
		<div class="m"></div>
		<input type="text" placeholder="비밀번호" id="s_pw" onkeyup="pwc()" name="s_pw">
		<div class="m"></div>
		
		<input type="text" placeholder="전화번호" id="s_ph" onkeyup="phc()" name="s_ph">
		<div class="m"></div>
		<input type="text" placeholder="주소" id="s_ad" name="s_ad">
		
		<input type="text" placeholder="발사이즈" id="s_size" onkeyup="sizec()" name="s_size">
		<div class="m"></div>
		<div class="signup">
		<button type="button" onclick="signup()" >가입하기</button>
		<button type="reset">취소하기</button>
		</div> 
	
	
</form> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../js/signup.js"></script>
</body>
</html>