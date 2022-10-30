<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoesProject</title>
<link href="../css/mainhome.css" rel="stylesheet">
</head>
<body>
	<header class="header">
		<div id="header_logo">
			<a href="">shoes</a>
		</div>
	</header>
	<div id= main>
		<section class="brand">
			<div class="brand_content">이달의 인기 브랜드</div> 
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide1" id="slide01" checked>
				<input type="radio" name="slide1" id="slide02">
				<input type="radio" name="slide1" id="slide03">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/1.jpg">
								<img src="./img/2.jpg">
								<img src="./img/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/1.jpg">
								<img src="./img/2.jpg">
								<img src="./img/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/1.jpg">
								<img src="./img/2.jpg">
								<img src="./img/3.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide03" class="left"></label>
							<label for="slide02" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide01" class="left"></label>
							<label for="slide03" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide02" class="left"></label>
							<label for="slide01" class="right"></label>
						</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
		</section>
		<section class="login_modal">
		
		<%String lid = (String)session.getAttribute("lid");%>
		
		<%if(lid==null){%>
			<div class="login_content">로그인</div>
			<div class="id_content">아이디</div>
			<input id="lid" class="id_input" type="text" placeholder="아이디를 입력해주세요."> 
			<div class="password_content">비밀번호</div>
			<input id="lpw" class="passoword_input" type="password" placeholder="비밀번호를 입력해주세요."> 
			
			<div class="alertp"></div>
			
			<button onclick="login()" class="login_button" type="button">로그인하기</button>
			<div class="signup_find">
				<div><a href="../view/회원가입.jsp">회원가입</a> |</div>
				<div>&nbsp;<a href="../view/find.jsp">아이디찾기</a> |</div>
				<div>&nbsp;<a href="../view/findpw.jsp">비밀번호찾기</a></div>
			</div> 
		<%}else if(lid.equals("admin")){%>
			<div class="admin_content">관리자님 안녕하세요.</div>
			<div class="admin_find">
				<div><a href="../admin/admin.jsp">관리자페이지</a> |</div>
				<div class="admin_logout">&nbsp;<a href="../view/logout.jsp">로그아웃</a></div>
			</div>
		<%}else{%>
			<div class="member_content"><%=lid%>님 안녕하세요.</div>
			<div class="member_find">
				<div class="member_page">&nbsp;<a href="../view/mypage.jsp">나의정보</a> |</div><br>
				<div class="member_selovelist">&nbsp;<a href="../board/selovelist.jsp">셀렙들의정보</a> |</div>
				<div class="member_logout">&nbsp;<a href="../view/logout.jsp">로그아웃</a></div>
			</div>			
		<%}%>
		</section>
		<section class="category">
			<div class="category_content">브랜드 카테고리 </div>
			
						<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide" id="slide04" checked>
				<input type="radio" name="slide" id="slide05">
				<input type="radio" name="slide" id="slide06">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/1.jpg">
								<img src="./img/2.jpg">
								<img src="./img/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/1.jpg">
								<img src="./img/2.jpg">
								<img src="./img/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/1.jpg">
								<img src="./img/2.jpg">
								<img src="./img/3.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide06" class="left"></label>
							<label for="slide05" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide04" class="left"></label>
							<label for="slide06" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide05" class="left"></label>
							<label for="slide04" class="right"></label>
						</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
		</section>
		<section class="main_img_slade">
			메인 이미지 슬라이드
		</section>
		<section class="main_img_slade">
			<section class=sub_img_slage>윗쪽</section>
			<section class=sub_img_slage>아래쪽</section>
		</section>
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
		<script type="text/javascript" src="../js/login.js"></script>
		<script type="text/javascript" src="../js/mainhome.js"></script>
	</div>
</body>
</html>