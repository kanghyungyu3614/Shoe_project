<!-- 공지사항 상세 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/noticeDetail.css" rel="stylesheet">
</head>
<body>
	<div id="main">
		<div id="main_title"> <!-- 테스트 -->
			<div class="title_content"><a href="../admin/product.jsp">상품등록</a></div>
			<div class="title_content"><a href="../admin/require.jsp">상품문의등록</a></div>
			<div class="title_content"><a href="../admin/notice.jsp">공지사항등록</a></div>
			<div class="title_content" onclick="logout()">로그아웃</div>
		</div>
		<div class="nav_title">
			<div class="nav_content1">
			<span class="nav_detail"><a href="../admin/admin.jsp">관리자게시판</a></span>
			<span id="notice">공지사항</span>
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
		<script type="text/javascript" src="../js/noticeDetail.js"></script>
		
	</div>
	<!-- 마무리 -->
</body>
</html>