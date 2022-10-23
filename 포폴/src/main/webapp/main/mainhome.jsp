<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	<li><a href="#">셀럽들의 정보</a></li>
	<li><a href="../view/logout.jsp">로그아웃</a></li>
<% }%>
</ul>

</div>
</body>
</html>