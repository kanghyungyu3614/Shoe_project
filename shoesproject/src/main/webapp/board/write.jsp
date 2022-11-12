<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link href="/shoesproject/css/write.css" rel="stylesheet"> 
<body>

<%@include file="../main/mainbaner.jsp" %>

<%if(lid==null){response.sendRedirect("/shoesproject/view/mainhome.jsp");} %>

	<div class="mainComponent">
		<form class="mainForm">
		<h1 class="mainformComponent">셀럽 제작소</h1>
				<input type="text" value="${lid}" name="lid" id="lid" readonly="readonly" class="inputComponent"><br>
				<input type="text" placeholder="제목" name="title" id="title" class="inputComponent" autofocus><br>
				<textarea placeholder="내용" id="content" name="content" class="inputComponent"></textarea><br>
			<input type="file" name="sfile" id="sfile" class="sfile">
			<button type="button" onclick="draw()" class="WriteBtn">글작성</button>
			<div>
				<img alt="" src="" id="chimg" width="70%">
			</div>
		</form>		
	</div>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../boardjs/write.js"></script>

</body>
</html>