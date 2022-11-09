<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form>
	
		<!--
		spno 자동할당
		spstatus 현재상태로 판매, 구매입찰 각각의 버튼에서 input hidden으로 각각의 상태값을 보내게함
		spsize 이것도 위와 마찬가지로 각각의 버튼 size에 맞게 상태값을 보내게함
		spendday 이건 최종낙찰일이므로 처음에 빈값을 넣고, 구매나 판매 낙찰이 되면 그 시간을 기록함
		spsellid, spbuyid 이것들은 spstatus 값에 따라서 판매신청 또는 구매신청이면 현재 로그인 세션 아이디 값을 넣어줌
		pno 이건 제품의 대분류로서 소분류를 입찰등록할때 소분류의 상품들을 하나의 카테고리로 묶어주는 번호임
		-->
	
		<!-- 회원아이디 정보는 세션으로 받고,
		spstatus를 세션에 저장해서 구매라면 구매ID DB를 추가,
		판매라면 판매ID DB를 추가해야겠다. -->
		<!-- 판매입찰 -->
		<!-- spstatus 이부분은 나중에 판매입찰 구매입찰 각각의 버튼에 따라 if else로 나눌거임 -->
		<input type="hidden" name="spstatus" value="판매입찰">
		<!-- spsize 이부분은 나중에 각 버튼에 onclick으로 size 함수에 넘겨줘서 저장할거임 -->
		<input type="radio" name="spsize" value="250">250
		<!-- spsellid 이부분은 나중에 세션안에 현재 로그인 상태의 아이디를 가져와서 넣을것임 -->
		<input type="text" name="spsellid">
	</form>
	
	<tr>
		<td></td>
	</tr>

</body>
</html>
