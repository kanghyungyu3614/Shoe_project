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
			왼쪽 : 이달의 인기 브랜드 
		</section>
		<section class="login_modal">
		로그인 
		</section>
		<section class="category">
			왼쪽 아래 : 카테고리 
		</section>
		<section class="main_img_slade">
			메인 이미지 슬라이드
		</section>
		<section class="main_img_slade">
			이미지들
		</section>
		<footer class="main_img_slade">
			푸터
		
		</footer>
	</div>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>