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
	<%String lid = (String)session.getAttribute("lid");%>

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
				<div>4.Adidas&nbsp;&nbsp;&nbsp;</div>
				<div>5등:NEPA&nbsp;&nbsp;&nbsp;</div>
				<div>6등:NEW BALANCE&nbsp;&nbsp;&nbsp;</div>
				<div>7등:클락스&nbsp;&nbsp;&nbsp;</div>
		<!-- 여기서부터 햄버거 드롭다운 바 시작 -->
		<a href="#" class="menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>

		<div class="menu_open">
			<ul>
				<li class="dept1">
					<a href="#">1~10순위</a>
					<ul>
						<li class="dept2">
							<a href="#">1.Nike&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">2.밀레&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">4.Adidas&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">5.NEPA&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">6.NEW BALANCE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">7.클락스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">8.킹가루스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">9.돔바&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">10.가데&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">11~20순위</a>
					<ul>
						<li class="dept2">
							<a href="#">11.매드풋&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">12.루릭&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">13.스코노&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">14.스프리스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">15.어그&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">16.반스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">17.더헌드레드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">18.유비크&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">19.이메리카&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">20.이에스&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">21~30순위</a>
					<ul>
											<li class="dept2">
							<a href="#">21.에트니스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">22.SPX&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">23.포니&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">24.프레드메리&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">25.라코스테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">26.프리데릭데테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">27.비토이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">28.듀드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">29.레디아이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">30.BSQT&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">31~40순위</a>
					<ul>
												<li class="dept2">
							<a href="#">31.사운트&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">32.트루릴리젼&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">33.베어파우&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">34.버켄스탁&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">35.사쿤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">36.디젤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">37.스걸리즘&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">38.무다&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">39.쯔보&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">40.도나카란뉴욕&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				
			</ul>
		</div>
		<!-- 여기서부터 햄버거 드롭다운 바 끝 -->
			</div>
		</section>
		<section class="login_modal">
		
		
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
		<script type="text/javascript" src="../js/dropdown.js"></script>
		
	</div>

</body>
</html>