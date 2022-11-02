<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



	<header class="header">
		<div id="header_logo">
			<a href="/shoesproject/main/mainhome.jsp">shoes</a>
			<%String lid = (String)session.getAttribute("lid");%>
			<% if(lid != null){ %>
			 <span class="member_content"><%=lid%>님 안녕하세요.</span>
			<%} %>
		     <span class="member_find">
				<span class="member_page">&nbsp;<a href="../view/mypage.jsp">나의정보</a> |</span><br>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/board/selovelist.jsp">셀렙들의정보</a> |</span>
				<span class="member_selovelist">&nbsp;<a href="../admin/require.jsp">문의사항</a> |</span>
				<span class="member_logout">&nbsp;<a href="../view/logout.jsp">로그아웃</a></span>
			</span>
		</div>
	</header>	
</body>
</html>