<!-- 공지사항 상세 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../css/productDetail.css" rel="stylesheet">
</head>
<body>

	<%String lid = (String)session.getAttribute("lid");
	if(lid == null) {
		response.sendRedirect("/shoesproject/main/mainhome.jsp");
	} else if(!lid.equals("admin")) {
		response.sendRedirect("/shoesproject/main/mainhome.jsp");
	}%>
	<div id="main">
		<div id="main_title"> <!-- 테스트 -->
			<div class="title_content"><a href="../product.jsp">상품등록</a></div>
			<div class="title_content"><a href="../require.jsp">상품문의등록</a></div>
			<div class="title_content"><a href="../notice.jsp">공지사항등록</a></div>
			<div class="title_content" onclick="logout()">로그아웃</div>
		</div>
		<div class="nav_title">
			<div class="nav_content1">
			<span class="nav_detail"><a href="../admin.jsp">관리자게시판</a></span>
			<span id="notice">상품 등록</span>
			<table class="regist"> <!--  이름, 전화번호, 사이즈, 상품이름, 모델번호, 컬러, 상품상세설명, 상품브랜드, 출시일, 가격 -->
				<tr>
					<th >상품이름</th>
					<th >모델번호</th>
					<th >사이즈</th>
					<th >상품브랜드</th>
					<th >가격</th>
					<th >출시일</th>
					<th >상품상세설명</th>
				</tr>
				<tr>
					<td >상품이름</td>
					<td >모델번호</td>
					<td >사이즈</td>
					<td >상품브랜드</td>
					<td >가격</td>
					<td >출시일</td>
					<td >상품상세설명</td>
				</tr>

			</table>
			</div>
		</div>
		
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
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript" src="../../js/ploadDetail.js"></script>
		
	</div>
	<!-- 마무리 -->
</body>
</html>