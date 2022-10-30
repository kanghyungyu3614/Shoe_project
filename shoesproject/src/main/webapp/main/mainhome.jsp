<%@page import="model.dao.memberdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<h1>메인페이지</h1>

<%
	String lid = (String)session.getAttribute("lid");
%>
<ul>
<%if(lid == null) {%>
<li><a href="../view/login.jsp">로그인</a></li>
<li> <a href="../view/회원가입.jsp">회원가입</a></li>

<%
}else{
%>
	<li><div><%=lid%>님 안녕하세요</div></li>
	<li><a href="../view/mypage.jsp">나의 정보</a></li>
	<li><a href="../board/selovelist.jsp">셀럽들의 정보</a></li>
	<li><a href="../view/logout.jsp">로그아웃</a></li>

	<form>
		문의유형 : <input type="text" class="rpurpose" name="rpurpose"> <br>
		문의세부유형 : <input type="text" class="rdetail" name="rdetail"> <br>
		문의제목 : <input type="text" class="rtitle" name="rtitle"> <br>
		문의내용 : <input type="text" class="rcontent" name="rcontent"> <br>
		<button type="button" onclick="request()">문의하기</button> <br>
	</form>
	
<% }%>


</ul>

	<div class="list"></div>
	
</div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/request.js"></script>
<script type="text/javascript" src="../js/list.js"></script>

</body>
</html>
