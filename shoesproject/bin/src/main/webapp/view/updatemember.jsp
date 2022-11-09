<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<table>
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
	</form>	
		<div>
			<button type="button" onclick="updatemember()"> 회원정보 수정하기 </button>
			<button type="reset"> 취소 </button>
		</div>	
		
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../js/updatemember.js"></script>
	
	
</body>
</html>