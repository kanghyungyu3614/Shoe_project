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


	<h1>셀럽들의 정보</h1>
		<input type="text" value="${lid}" id="lid" readonly="readonly"><br>
		<input type="text" placeholder="제목" id="title"><br>
		<textarea placeholder="내용" id="content"></textarea><br>
	<form enctype="multipart/form-data" method="post">
		<input type="file" name="sfile">
	</form>	
		<button onclick="draw()">글작성</button>


	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../boardjs/write.js"></script>

</body>
</html>