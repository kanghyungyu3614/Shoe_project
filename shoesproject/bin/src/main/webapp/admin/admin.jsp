<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/admin.css" rel="stylesheet">
</head>
<body>
	
	<!-- admin만 접근가능 -->
	<%String lid = (String)session.getAttribute("lid");
	if(lid == null) {
		response.sendRedirect("/shoesproject/main/mainhome.jsp");
	} else if(!lid.equals("admin")) {
		response.sendRedirect("/shoesproject/main/mainhome.jsp");
	}%>
	<div id="main">
		<div id="main_title"> <!-- 테스트 -->
			<div class="title_content"><a href="./product.jsp">상품등록</a></div>
			<div class="title_content"><a href="./notice.jsp">공지사항등록</a></div>
			<div class="title_content" onclick="logout()">로그아웃</div>
		</div>
		<div class="nav_title">
			<div class="nav_content1">
			<span id="notice">공지사항</span>
			<span class="nav_detail"><a href="./detail/noticeDetail.jsp">상세보기</a></span>
				<div id="notice_table_component">
					<table class="notice">
						<tr>
							<td>제목</td>
							<td>내용</td>
						</tr>
						<tr>
							<td>제목</td>
							<td>내용</td>
						</tr>			
					</table>
				
				</div>
			</div>
		</div>
		
		<div class="nav_title">
			<div class="nav_content2">
				<span class="advice_table">상품 문의 게시판</span>
				<span class="nav_detail"><a href="./detail/requireDetail.jsp">상세보기</a></span>
				<!-- 게시판 시작 -->
				<div id="advice_notice_table_component">
					<table class="request">
						<tr>
							<th>문의 유형</th>
							<th>문의 세부유형</th>
							<th>문의 내용</th>
							<th>날짜</th>			
						</tr>
						<tr>
							<th>브랜드배송</th>
							<th>진행상황</th>
							<th>가나다라마바사아자차카타파하(14줄/20줄)</th>
							<th>2022/10/26</th>			
						</tr>							
					</table>
				
				</div>
				<!-- 게시판 끝 -->				
			</div>
		</div>
	
		<div class="section_title"> 
			<span class="nav_detail"><a href="./detail/productDetail.jsp">상세보기</a></span>
			<div class="advice_table">상품 등록
			</div>
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
					<th >상품이름</th>
					<th >모델번호</th>
					<th >사이즈</th>
					<th >상품브랜드</th>
					<th >가격</th>
					<th >출시일</th>
					<th >상품상세설명</th>
				</tr>
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
					<th >상품이름</th>
					<th >모델번호</th>
					<th >사이즈</th>
					<th >상품브랜드</th>
					<th >가격</th>
					<th >출시일</th>
					<th >상품상세설명</th>
				</tr>
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
					<th >상품이름</th>
					<th >모델번호</th>
					<th >사이즈</th>
					<th >상품브랜드</th>
					<th >가격</th>
					<th >출시일</th>
					<th >상품상세설명</th>
				</tr>
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
					<th >상품이름</th>
					<th >모델번호</th>
					<th >사이즈</th>
					<th >상품브랜드</th>
					<th >가격</th>
					<th >출시일</th>
					<th >상품상세설명</th>
				</tr>
				<tr>
					<th >상품이름</th>
					<th >모델번호</th>
					<th >사이즈</th>
					<th >상품브랜드</th>
					<th >가격</th>
					<th >출시일</th>
					<th >상품상세설명</th>
				</tr>
			</table>
		
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
		<script type="text/javascript" src="../js/admin.js"></script>
		<script type="text/javascript" src="../js/pload.js"></script>
		<script type="text/javascript" src="../js/rload.js"></script>
		
	</div>
	<!-- 마무리 -->
</body>
</html>
