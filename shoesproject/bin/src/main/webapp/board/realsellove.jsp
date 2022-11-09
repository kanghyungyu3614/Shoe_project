<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





<%@include file="../main/mainbaner.jsp" %>


<% if(lid==null){response.sendRedirect("/shoesproject/view/login.jsp");} %>

<% int snum = Integer.parseInt( request.getParameter("snum") ); %>

	<h1>상세 게시물 수정</h1>
		<input type="hidden" class="snum" name="snum" id="snum" value="<%=snum%>">
		<div>
			<img alt="" src="" id="chimg" width="20%">
		</div>
			<input type="text" value="${lid}" name="lid" id="lid" readonly="readonly"><br>
			<input type="text" placeholder="제목" name="title" id="title"><br>
			<textarea placeholder="내용" id="content" name="content"></textarea><br>
			
		<button type="button" onclick="selloveupdate()">글수정하기</button>
 	

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<script type="text/javascript" src="/shoesproject/boardjs/selloveupdate.js"></script>
		

</body>
</html>