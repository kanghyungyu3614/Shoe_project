<!-- 공지사항 등록  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/notice.css" rel="stylesheet"> 
</head>
<body>

	<%String lid = (String)session.getAttribute("lid");
	if(lid == null) {
		response.sendRedirect("/shoesproject/main/mainhome.jsp");
	} else if(!lid.equals("admin")) {
		response.sendRedirect("/shoesproject/main/mainhome.jsp");
	}%>
  	<div id="main">
		<!-- 네비게이션 시작 -->
		<div id="main_title">
			<div class="title_content"><a href="./product.jsp">상품등록</a></div>
			<div class="title_content"><a href="./admin.jsp">관리자페이지</a></div>
			<div class="title_content" onclick="logout()">로그아웃</div>
		</div>  
		<!-- 네비게이션 끝 -->
		<!-- 공지사항 등록 시작 -->
  		<form id="form_component">
	  		<div id="form_component_title"> 공지사항등록 </div>
	  		<div id="title_component">
				제목 : <input type="text" class="ntitle"placeholder="ex)  이벤트발표   /  공지 "autofocus>   		
	  		</div>
	  		<div id="content_component">
				<span id="content_context">내용 :</span> 
				<input type="text" class="ncontent" placeholder="ex)  안녕하세요. 고객센터입니다."> 
	  		</div>
	  		<div id="write_component">
				<button id="write_button" type="button" onclick="nwrite()">글쓰기</button>  		
				<button id="reset_button" type="reset">취소</button>  		
	  		</div>
		</form>
		<!-- 공지사항 등록 끝 -->
		
		<!-- 푸터 시작 -->
		<footer>
	        <div id="footerURL">
	           <a class="gitLink" href="https://github.com/ANTAESEOP/KIM-AN_project">GitHub주소</a> |
	           <a class="gitLink" href="https://www.figma.com/file/8Kxyjx0AdCmfHTwTl1ShGz/Untitled?node-id=4%3A2">Figma주소</a><br>           
	           <a class="gitLink" href="https://github.com/kimkyoungju">김경주</a> | 
	           <a class="gitLink" href="https://github.com/ANTAESEOP">안태섭</a> | 
	           <a class="gitLink" href="https://github.com/Hinsang">인상</a> |
	           <a class="gitLink" href="https://github.com/kanghyungyu3614">강현규</a> 
	         </div>			
		</footer>
		<!-- 푸터 끝 -->
  	</div>
	<!-- 마무리 -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/notice.js"></script>
	
</body>
</html>