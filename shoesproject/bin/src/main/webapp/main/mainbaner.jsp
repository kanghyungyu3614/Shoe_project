<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/mainbaner.css" rel="stylesheet"> 
	
</head>
<body>


	<%String lid = (String)session.getAttribute("lid");%>
	
		<%if(lid==null){ %>
		<header class="header">
			<div id="header_logo">
				<a href="/shoesproject/main/mainhome.jsp">shoes</a> 
			</div>
		</header>
	<%}else if(lid.equals("admin")){ %>
	<header class="header">
		<div id="header_logo">
			<a href="/shoesproject/main/mainhome.jsp">shoes</a>
			 <span class="member_content">관리자님 안녕하세요.</span>
		     <span class="member_find">
				<span class="member_page">&nbsp;<a href="/shoesproject/view/mypage.jsp">나의정보</a> |</span><br>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/admin/admin.jsp">관리자페이지</a> |</span>
				<span class="member_logout">&nbsp;<a href="/shoesproject/view/logout.jsp">로그아웃</a></span>
			</span>
		</div>
	</header>	
	
	<%}else{%>
	
	<header class="header">
		<div id="header_logo">
			<a href="/shoesproject/main/mainhome.jsp">shoes</a>
			<% if(lid != null){ %>
			 <span class="member_content"><%=lid%>님 안녕하세요.</span>
			 <%} %>
		     <span class="member_find">
<<<<<<< HEAD
				<span class="member_page">&nbsp;<a href="/shoesproject/view/mypage.jsp">나의정보</a> |</span><br>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/board/selovelist.jsp">셀렙들의정보</a> |</span>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/main/requireCreate.jsp">문의사항</a> |</span>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/main/noticeBoard.jsp">공지사항</a> |</span>
=======
				<span class="member_page">&nbsp;<a href="/shoesproject/view/mypage.jsp">나의정보</a> |</span><br>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/board/selovelist.jsp">셀렙들의정보</a> |</span>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/main/requireCreate.jsp">문의사항</a> |</span>
				<span class="member_selovelist">&nbsp;<a href="/shoesproject/main/noticeBoard.jsp">공지사항</a> |</span>
>>>>>>> refs/remotes/main/황인상
				<span class="member_logout">&nbsp;<a href="/shoesproject/view/logout.jsp">로그아웃</a></span>
			</span>
		</div>
	</header>

	<%} %>

</body>
</html>
