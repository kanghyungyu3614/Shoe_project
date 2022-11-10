<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="../css/mypage.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

	<%String lid = (String)session.getAttribute("lid");%>
	<!-- 로그인을 안했을때 시작 -->
	<%if(lid==null){%>
	<header class="header">
		<div id="header_logo">
			<a href="/shoesproject/main/mainhome.jsp">shoes</a>
		</div>
	</header>
	<div id= main> <!-- 메인에서 얘러뜨는거 원래 그런겁니다.  -->
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
		
		<!-- 로그인 컴포넌트 시작 -->
		<section class="login_modal">
		
		
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
			</section>
			<!--  로그인 컴포넌트 끝 -->
			
			<!-- 오늘의 브랜드 베스트 시작 -->
		<section class="category">
			<div class="category_content">오늘의 브랜드 베스트 </div>
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide1" id="slide01" checked>
				<input type="radio" name="slide1" id="slide02">
				<input type="radio" name="slide1" id="slide03">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
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
				<div class="admin_category_sldie_content">
					<div>인기 럭셔리</div>
					<div>럭키드로우</div>
					<div>정가아래</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide2" id="slide04" checked>
				<input type="radio" name="slide2" id="slide05">
				<input type="radio" name="slide2" id="slide06">
				<div class="slidewrap">
					<ul class="slidelist">
												<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
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
					<div class="admin_category_sldie_content">
						<div>브랜드관 오픈</div>
						<div>집꾸미기</div>
						<div>남성 추천</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
		</section>
		<!-- 오늘의 브랜드 베스트 끝-->
			
	<!-- 로그인을 안했을때 끝 -->
	<!-- admin으로 로그인했을때 시작 -->
		<%}else if(lid.equals("admin")){%>
		<header class="header">
			<div id="header_logo">
				<a href="/shoesproject/main/mainhome.jsp">shoes</a>
				<span class="admin_content">관리자님 안녕하세요.</span>
				<span class="admin_find">
				<span><a href="../admin/admin.jsp">관리자페이지</a> |</span>
				<span class="admin_logout">&nbsp;<a href="../view/logout.jsp">로그아웃</a></span>
				</span>
			</div>
		</header>
	<div id= main>  <!-- 메인에서 얘러뜨는거 원래 그런겁니다.  -->
		<section class="admin_brand">
			<div class="admin_brand_content">이달의 인기 브랜드</div> 
			<div class="admin_month_popular_brand">
				<div>1.Nike&nbsp;&nbsp;&nbsp;</div>
				<div>2.밀레&nbsp;&nbsp;&nbsp;</div>
				<div>3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</div>
				<div>4.Adidas&nbsp;&nbsp;&nbsp;</div>
				<div>5등:NEPA&nbsp;&nbsp;&nbsp;</div>
				<div>6등:NEW BALANCE&nbsp;&nbsp;&nbsp;</div>
				<div>7등:클락스&nbsp;&nbsp;&nbsp;</div>
		<!-- 여기서부터 햄버거 드롭다운 바 시작 -->
		<a href="#" class="admin_menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>

		<div class="admin_menu_open">
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
		<!-- 오늘의 브랜드 베스트 시작 -->
		<section class="admin_category">
			<div class="admin_category_content">오늘의 브랜드 베스트 </div>
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide1" id="slide01" checked>
				<input type="radio" name="slide1" id="slide02">
				<input type="radio" name="slide1" id="slide03">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
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
				<div class="admin_category_sldie_content">
					<div>인기 럭셔리</div>
					<div>럭키드로우</div>
					<div>정가아래</div>
					<div>셀럽픽</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide2" id="slide04" checked>
				<input type="radio" name="slide2" id="slide05">
				<input type="radio" name="slide2" id="slide06">
				<div class="slidewrap">
					<ul class="slidelist">
												<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
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
					<div class="admin_category_sldie_content">
						<div>브랜드관 오픈</div>
						<div>집꾸미기</div>
						<div>남성 추천</div>
						<div>여성 추천</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			
		</section>
		<!-- 오늘의 브랜드 베스트 끝-->	
			
			
			
		<!-- admin 으로 로그인했을때 끝 -->
		<!-- member가 로그인에 성공했을떄 시작 -->	
		<%}else{%>
	
	<header class="header">
		<div id="header_logo">
			<a href="/shoesproject/main/mainhome.jsp">shoes</a>
			 <span class="member_content"><%=lid%>님 안녕하세요.</span>
		     <span class="member_find">
				<span class="member_page">&nbsp;<a href="../view/mypage.jsp">나의정보</a> |</span><br>
				<span class="member_selovelist">&nbsp;<a href="../board/selovelist.jsp">셀렙들의정보</a> |</span>
				<span class="member_selovelist">&nbsp;<a href="../admin/require.jsp">문의사항</a> |</span>
				<span class="member_logout">&nbsp;<a href="../view/logout.jsp">로그아웃</a></span>
			</span>
		</div>
	</header>
	<div id= main>
		<section class="member_brand">
			<div class="member_brand_content">이달의 인기 브랜드</div> 
			<div class="member_month_popular_brand">
				<div>1.Nike&nbsp;&nbsp;&nbsp;</div>
				<div>2.밀레&nbsp;&nbsp;&nbsp;</div>
				<div>3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</div>
				<div>4.Adidas&nbsp;&nbsp;&nbsp;</div>
				<div>5등:NEPA&nbsp;&nbsp;&nbsp;</div>
				<div>6등:NEW BALANCE&nbsp;&nbsp;&nbsp;</div>
				<div>7등:클락스&nbsp;&nbsp;&nbsp;</div>
		<!-- 여기서부터 햄버거 드롭다운 바 시작 -->
		<a href="#" class="member_menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>

		<div class="member_menu_open">
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
		
	<div class="mypage_component">
		<div class="container text-center">
			<div class="row row1">
				<div class="col">
					<div class="hdname">
					<i class="fas fa-user"></i>
					이름</div>
					<div class="lname"></div> <!-- 회원 이름 -->
				</div>
				
				<div class="col">
					<div class="hname">
					<i class="fas fa-duotone fa-shoe-prints"></i>
					발 사이즈 </div>
					<div class="lsize"></div> <!-- 회원 발 사이즈 -->
				</div>
				<div class="col">
					<div class="hname">
					<i class="fas fa-calendar-alt"></i>
					가입 일 </div>
					<div class="ldate"></div> <!-- 회원 가입 날짜 -->
				</div>
			</div>
				<div class="sell">
					<table>
						<tr>
							<td>상품명</td>
							<td>사이즈</td>
							<td>날짜</td>
							<td>상태</td>
						</tr>
						<tr>
							<td>이미지</td>
							<td>260</td>
							<td>2022-10-10</td>
							<td>검수중</td>
						</tr>
					</table>
				</div>		
				<div class="buy">
					<table>
						<tr>
							<td>상품명</td>
							<td>사이즈</td>
							<td>날짜</td>
							<td>상태</td>
						</tr>
						<tr>
							<td>이미지</td>
							<td>280</td>
							<td>2022-10-12</td>
							<td>배송중</td>
						</tr>
					</table>
				</div>
				
				<h2>로그인 정보</h2>
				<table class="mmain">
					<tr>
						<td class="num1">이메일</td>
						<td class="lemail"></td>
						<td class="reup"><button onclick="reupdate()">수정</button></td>
					</tr>
					<tr>
						<td class="num1">비밀번호</td>
						<td class="lpw"></td>
						<td class="reup"><button onclick="reupdate()">수정</button></td>
					</tr>
					<tr>
						<td class="num1">전화번호</td>
						<td class="lph"></td>
						<td class="reup"><button onclick="reupdate()">수정</button></td>
					</tr>
					<tr>
						<td>
							<button type="button" onclick="deletemember()">탈퇴하기</button>
						</td>
					</tr>
				</table>
			</div> <!-- info end -->
					<div class="divTable blueTable">
						<div class="divTableBody">
							<div class="divTableRow">
								<div class="divTableCell div1">상품명</div>
								<div class="divTableCell">사이즈</div>
								<div class="divTableCell">날짜</div>
								<div class="divTableCell div2">상태</div>
							</div>
							<div class="divTableRow">
								<div class="divTableCell">ㅁ</div>
								<div class="divTableCell">ㅁ</div>
								<div class="divTableCell">ㅁ</div>
								<div class="divTableCell">ㅁ</div>
							</div>
							<div class="divTableRow">
								<div class="divTableCell">상품명</div>
								<div class="divTableCell">사이즈</div>
								<div class="divTableCell">날짜</div>
								<div class="divTableCell">상태</div>
							</div>
							<div class="divTableRow">
								<div class="divTableCell div3">ㅇ</div>
								<div class="divTableCell">ㅇ</div>
								<div class="divTableCell">ㅇ</div>
								<div class="divTableCell div4">ㅇ</div>
							</div>
						</div>
					</div>
				</div> <!-- b: container end -->
</div> <!-- mypage div end -->
</div> <!-- all div end -->
	<%}%>
		<!-- member가 로그인에 성공했을떄 끝 -->	
	<!-- 로그인 컴포넌트 끝 -->
		
		
		
		
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
		<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript" src="../js/login.js"></script>
		<script type="text/javascript" src="../js/dropdown.js"></script>

</div>
		<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript" src="../js/mypage.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
	
</body>
</html>