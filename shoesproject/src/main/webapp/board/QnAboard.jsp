<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 2022 10 - 28 [ 안태섭 ]-->
	<div>
		<form>	
			문의내용<br>
			<input type="text" placeholder="제목을 입력하세요. ( 최대 80자 )" name="qtitle"><br>
	 		<textarea placeholder="문의 내용을 입력하세요. ( 최대 1500자 )" name="qcontent" ></textarea> <br> 
			이미지 첨부 <br>
			<input type="file" name="qfile"><br> 
			<button type="button" onclick="qnawrite()"> 저장하기 </button> <br>
		</form>	
	</div>	
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../boardjs/QnAboard.js"></script>

</body>
</html>