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

<% if(lid==null){response.sendRedirect("../view/login.jsp");} %>

	<form >
	<h1>셀럽들의 정보</h1>
		<input type="text" value="${lid}" name="lid" id="lid" readonly="readonly"><br>
		<input type="text" placeholder="제목" name="title" id="title"><br>
		<textarea placeholder="내용" id="content" name="content"></textarea><br>
		
		<input type="file" name="sfile">

		<button type="button" onclick="draw()">글작성</button>
	</form>	

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../boardjs/write.js"></script>

</body>
</html>