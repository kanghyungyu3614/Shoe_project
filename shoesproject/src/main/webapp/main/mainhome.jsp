<%@page import="model.dao.memberdao"%>
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
			<div class="month_popular_brand">
				<div>1.Nike&nbsp;&nbsp;&nbsp;</div>
				<div>2.밀레&nbsp;&nbsp;&nbsp;</div>
				<div>3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</div>
				<div>4.Adidas&nbsp;&nbsp;</div>
<!-- 				<div>5등:NEPA&nbsp;&nbsp;</div> -->
<!-- 				<div>6등:NEW BALANCE&nbsp;&nbsp;</div> -->
<!-- 				<div>Crocs&nbsp;&nbsp;</div> -->
<!-- 				<div>Discovery&nbsp;&nbsp;</div> -->
<!-- 				<div>BLACKYAK&nbsp;&nbsp;</div> -->
<!-- 				<div>K2&nbsp;&nbsp;</div> -->
<!-- 				<div>KOLPING&nbsp;&nbsp;</div> -->
<!-- 				<div>NATIONAL GEOGRAPIC&nbsp;&nbsp;</div> -->
				
		 <ul id="gnb">
			<li class="dept1">
				<ul class="inner_menu">
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
				</ul>
			</li>
			
			<li class="dept1">
				
				<ul class="inner_menu">
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
				</ul>
			</li>
			<li class="dept1">
				<ul class="inner_menu">
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
				</ul>
			</li>
			<li class="dept1">
				<ul class="inner_menu">
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
				</ul>
			</li>
			<li class="dept1">
				<ul class="inner_menu">
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
					<li class="dept2">
						<a href="#">메뉴2</a>
					</li>
				</ul>
			</li>
		</ul>

		<a href="#" class="menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>

		<div class="menu_open">
			<ul>
				<li class="dept1">
					<a href="#">메뉴</a>
					<ul>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">메뉴</a>
					<ul>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">메뉴</a>
					<ul>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">메뉴</a>
					<ul>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">메뉴</a>
					<ul>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
						<li class="dept2">
							<a href="#">메뉴2</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="hd_bg"></div>
				
				
				
<!-- 				<div>킹가루스</div> -->
<!-- 				<div>돔바</div> -->
<!-- 				<div>가데</div> -->
<!-- 				<div>매드풋</div> -->
<!-- 				<div>루릭</div> -->
<!-- 				<div>스코노</div> -->
<!-- 				<div>스프리스</div> -->
<!-- 				<div>어그</div>  -->
<!-- 				<div>반스</div> -->
<!-- 				<div>더헌드레드</div> -->
<!-- 				<div>유비크</div> -->
<!-- 				<div>이메리카</div> -->
<!-- 				<div>이에스</div> -->
<!-- 				<div>에트니스</div> -->
<!-- 				<div>SPX</div> -->
<!-- 				<div>포니</div> -->
<!-- 				<div>프레드메리</div> -->
<!-- 				<div>라코스테</div> -->
<!-- 				<div>프리데릭데테</div> -->
<!-- 				<div>비토이</div> -->
<!-- 				<div>듀드</div> -->
<!-- 				<div>레디아이</div> -->
			</div>
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
				<div><a href="../view/signup.jsp">회원가입</a> |</div>
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
				<div>				
					<form>
						문의유형 : <input type="text" class="rpurpose" name="rpurpose"> <br>
						문의세부유형 : <input type="text" class="rdetail" name="rdetail"> <br>
						문의제목 : <input type="text" class="rtitle" name="rtitle"> <br>
						문의내용 : <input type="text" class="rcontent" name="rcontent"> <br>
						<button type="button" onclick="request()">문의하기</button> <br>
					</form>
				</div>
			</div>			
		<%}%>
		</section>
		<!-- 브랜드 카테고리 시작 -->
		<section class="category">
			<div class="category_content">오늘의 브랜드 베스트 </div>
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide2" id="slide04" checked>
				<input type="radio" name="slide2" id="slide05">
				<input type="radio" name="slide2" id="slide06">
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
		<!-- 브랜드 카테고리 끝 -->
		<!-- 메인 이미지 슬라이드 시작 -->
		<section class="main_img_slade">
			<div class="main_img_content">메인 이미지 슬라이드</div>
					<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide" id="slide07" checked>
				<input type="radio" name="slide" id="slide08">
				<input type="radio" name="slide" id="slide09">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/1.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/2.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/3.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide09" class="left"></label>
							<label for="slide08" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide07" class="left"></label>
							<label for="slide09" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide08" class="left"></label>
							<label for="slide07" class="right"></label>
						</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
		
		</section>
		<!-- 메인 이미지 슬라이드 끝 -->
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
		<script type="text/javascript" src="../js/request.js"></script>
		<script type="text/javascript" src="../js/dropdown.js"></script>
		<script type="text/javascript" src="../js/rloadDetail.js"></script>
	</div>

</body>
</html>