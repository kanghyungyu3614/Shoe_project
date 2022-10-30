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
		목적 : <input type="text" class="ppurpose" name="ppurpose" style="border: 1px solid black;"> <br>
		카테고리 : <input type="text" class="pcategory" name="pcategory" style="border: 1px solid black;"> <br>
		브랜드 : <input type="text" name="pbrand" style="border: 1px solid black;"> <br>
		사이즈 : <input type="text" name="psize" style="border: 1px solid black;"> <br>
		가격 : <input type="text" name="pprice" style="border: 1px solid black;"> <br>
		제목 : <input type="text" name="ptitle" style="border: 1px solid black;"> <br>
		내용 : <input type="text" name="pcontent" style="border: 1px solid black;"> <br>
		이미지 : <input type="file" name="pimg"> <br>
		현재상태 :
		구매신청<input type="radio" name="pstatus" value="구매신청">
		판매신청<input type="radio" name="pstatus" value="판매신청"> <br>
		<button type="button" onclick="pregist()">등록하기</button>
	</form>
	
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/pregist.js"></script>
	
</body>
</html>
