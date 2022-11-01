<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>상세 게시물 수정</h1>


<%String lid = (String)session.getAttribute("lid");%>
<% if(lid==null){response.sendRedirect("/shoesproject/view/login.jsp");} %>
	
	
	
	
	
	<form class="updatesellob" enctype="application/x-www-form-urlencoded">
	<h1>상세 게시물 수정</h1>
		<div>
			<img alt="" src="" id="chimg" width="20%">
		</div>
			<input type="text" value="${lid}" name="lid" id="lid" readonly="readonly"><br>
			<input type="text" placeholder="제목" name="title" id="title"><br>
			<textarea placeholder="내용" id="content" name="content"></textarea><br>
		
		<input type="file" name="sfile" id="sfile" class="sfile"><br>
		
		<button type="button" onclick="selloveupdate()">글수정하기</button>
	</form>	




	
<script type="text/javascript" src="../boardjs/sellove.js"></script>

</body>
</html>