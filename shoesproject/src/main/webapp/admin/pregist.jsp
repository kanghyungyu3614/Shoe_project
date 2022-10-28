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
		목적 : <input type="radio" class="ppurpose" name="ppurpose" value="구매">구매
			<input type="radio" class="ppurpose" name="ppurpose" value="판매">판매
			<input type="radio" class="ppurpose" name="ppurpose" value="문의">문의 <br>
		카테고리 : <input type="radio" class="pcategory" name="pcategory" value="신발">신발
			<input type="radio" name="pcategory" name="pcategory" value="가방">가방 <br>
		제목 : <input type="text" name="ptitle" style="border: 1px solid black;"> <br>
		내용 : <input type="text" name="pcontent" style="border: 1px solid black;"> <br>
		이미지 : <input type="file" name="pimg"> <br>
		<button type="button" onclick="pregist()">등록하기</button>
	</form>
	
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/pregist.js"></script>
	
</body>
</html>
