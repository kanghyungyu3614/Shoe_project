<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoesProject</title>
<link href="../css/detailPage.css" rel="stylesheet">
</head>
<body>

	<%@include file="../main/mainbaner.jsp" %>
	<div id="main">
		<section class="img_coponent">
			<img src="/shoesproject/main/img/product/4.jpg">
			<div class="sellNote">
				<div><span id="warnComponent" class="warntext">주의</span>판매 거래 주의사항</div>
				<div id="warnContent" class="warntext" >반드시 보유한 상품만 판매하세요.</div>
				<!-- <img src="/shoesproject/main/img/left.png">  -->
			</div>
			
			<button onclick="selin()">판매</button>
			
			<button onclick="buyin()">구매</button>
		
		
		
		</section>
		<section class="content_coponent">
		
		
		
		
		</section>

	
	
	
	
	
	
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/detail.js"></script>
</body>
</html>
