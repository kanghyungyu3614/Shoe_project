<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../main/mainhome.jsp"%>


<% if(lid==null){response.sendRedirect("login.jsp");} %>

<div>

<h1>my page</h1>

<table class="mmain">
	<tr>
		<td class="num1">회원번호</td>
		<td class="lno"></td>
	</tr>
	<tr>
		<td class="num1">가입일</td>
		<td class="ldate"></td>
	</tr>
	<tr>
		<td class="num1">이름</td>
		<td class="lname"></td>
	</tr>
	<tr>
		<td class="num1">아이디</td>
		<td class="lid"></td>
	</tr>
	<tr>
		<td class="num1">비밀번호</td>
		<td class="lpw"></td>
	</tr>
	<tr>
		<td class="num1">전화번호</td>
		<td class="lph"></td>
	</tr>
		<tr>
		<td class="num1">이메일</td>
		<td class="lemail"></td>
	</tr>
	
	<tr>
		<td class="num1">발사이즈</td>
		<td class="lsize"></td>
	</tr>
</table>
<div>
	<button type="button" onclick="deletemember()">탈퇴하기</button>
</div>

</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../js/mypage.js"></script>
</body>
</html>