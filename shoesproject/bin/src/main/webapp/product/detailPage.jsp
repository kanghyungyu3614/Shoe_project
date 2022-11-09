<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoesProject</title>
<!-- 부트스트랩 css -->	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

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
			
			
			
			<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >
 판매하기
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">shoesell</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div id="main">
	<div class="maintitle"></div>
	<section class="sellborder">
	<div class="mainproduct">
		<img src="/shoesproject/main/img/product/4.jpg">
		<div class="product_title">
			<div class="product_number">DJ5422-100</div>
			<div class="product_engliname">Nike LeBron XX EP White Metalic Gold</div>
			<div class="product_koreaname">나이키 르브론 20 EP 화이트 메탈릭 골드</div>
		</div>
	</div>
	<div id="size" style="display:none"  >225</div>
	<div class="subproduct">
		<div id="225" class="product_size"	onclick="sellAddButton(225)">
			
			<div>225</div>
		
		</div>
		<div id="230" class="product_size"	onclick="sellAddButton(230)">
			<div>230</div>
			
		</div>
		<div id="235" class="product_size"	onclick="sellAddButton(235)">
			<div>235</div>
			
		</div>
		<div id="240" class="product_size"	onclick="sellAddButton(240)">
			<div>240</div>
			
		</div>
		<div id="245" class="product_size"	onclick="sellAddButton(245)">
			<div>245</div>
			
		</div>
		<div id="250" class="product_size"	onclick="sellAddButton(250)">
			<div>250</div>
			
		</div>
		<div id="255" class="product_size"	onclick="sellAddButton(255)">
			<div>255</div>
		
		</div>
		<div id="260" class="product_size"	onclick="sellAddButton(260)">
			<div>260</div>
			
		</div>
		<div id="265" class="product_size"	onclick="sellAddButton(265)">
			<div>265</div>
			
		</div>
		<div id="270" class="product_size"	onclick="sellAddButton(270)">
			<div>270</div>
			
		</div>
		<div id="275" class="product_size"	onclick="sellAddButton(275)">
			<div>275</div>
			
		</div>
		<div id="280" class="product_size"	onclick="sellAddButton(280)">
			<div>280</div>
			
		</div>
		<div id="285" class="product_size"	onclick="sellAddButton(285)">
			<div>285</div>
			
		</div>
		<div id="290" class="product_size"	onclick="sellAddButton(290)">
			<div>290</div>
			
		</div>
		<div id="295" class="product_size"	onclick="sellAddButton(295)">
			<div>295</div>
			
		</div>
		<div id="300" class="product_size"	onclick="sellAddButton(300)">
			<div>300</div>
			
		</div>
		<div id="305" class="product_size"	onclick="sellAddButton(305)">
			<div>305</div>
			
		</div>
		<div id="310" class="product_size"	onclick="sellAddButton(310)">
			<div>310</div>
			
		</div>
		<div id="315" class="product_size"	onclick="sellAddButton(315)">
			<div>315</div>
			
		</div>
		<div id="320" class="product_size"	onclick="sellAddButton(320)">
			<div>320</div>
			
		</div>
		<div id="325" class="product_size"	onclick="sellAddButton(325)">
			<div>325</div>
			
		</div>
	</div>
	</section>
</div>
        희망가격 : <input type="text" class="selprice">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="selin()">sell</button>
      </div>
    </div>
  </div>
</div>

<!--------------------------------------------------------------구매하기--------------------->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" >
 구매하기
</button>
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">shoebuy</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div id="main">
	<div class="maintitle"></div>
	<section class="sellborder">
	<div class="mainproduct">
		<img src="/shoesproject/main/img/product/4.jpg">
		<div class="product_title">
			<div class="product_number">DJ5422-100</div>
			<div class="product_engliname">Nike LeBron XX EP White Metalic Gold</div>
			<div class="product_koreaname">나이키 르브론 20 EP 화이트 메탈릭 골드</div>
		</div>
	</div>
	<div id="size" style="display:none"  >225</div>
	<div class="subproduct">
		<div id="225" class="product_size"	onclick="sellAddButton(225)">
			
			<div>225</div>
		
		</div>
		<div id="230" class="product_size"	onclick="sellAddButton(230)">
			<div>230</div>
			
		</div>
		<div id="235" class="product_size"	onclick="sellAddButton(235)">
			<div>235</div>
			
		</div>
		<div id="240" class="product_size"	onclick="sellAddButton(240)">
			<div>240</div>
			
		</div>
		<div id="245" class="product_size"	onclick="sellAddButton(245)">
			<div>245</div>
			
		</div>
		<div id="250" class="product_size"	onclick="sellAddButton(250)">
			<div>250</div>
			
		</div>
		<div id="255" class="product_size"	onclick="sellAddButton(255)">
			<div>255</div>
		
		</div>
		<div id="260" class="product_size"	onclick="sellAddButton(260)">
			<div>260</div>
			
		</div>
		<div id="265" class="product_size"	onclick="sellAddButton(265)">
			<div>265</div>
			
		</div>
		<div id="270" class="product_size"	onclick="sellAddButton(270)">
			<div>270</div>
			
		</div>
		<div id="275" class="product_size"	onclick="sellAddButton(275)">
			<div>275</div>
			
		</div>
		<div id="280" class="product_size"	onclick="sellAddButton(280)">
			<div>280</div>
			
		</div>
		<div id="285" class="product_size"	onclick="sellAddButton(285)">
			<div>285</div>
			
		</div>
		<div id="290" class="product_size"	onclick="sellAddButton(290)">
			<div>290</div>
			
		</div>
		<div id="295" class="product_size"	onclick="sellAddButton(295)">
			<div>295</div>
			
		</div>
		<div id="300" class="product_size"	onclick="sellAddButton(300)">
			<div>300</div>
			
		</div>
		<div id="305" class="product_size"	onclick="sellAddButton(305)">
			<div>305</div>
			
		</div>
		<div id="310" class="product_size"	onclick="sellAddButton(310)">
			<div>310</div>
			
		</div>
		<div id="315" class="product_size"	onclick="sellAddButton(315)">
			<div>315</div>
			
		</div>
		<div id="320" class="product_size"	onclick="sellAddButton(320)">
			<div>320</div>
			
		</div>
		<div id="325" class="product_size"	onclick="sellAddButton(325)">
			<div>325</div>
			
		</div>
	</div>
	</section>
</div>
        희망가격 : <input type="text" class="selprice1">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="selbuy()">buy</button>
      </div>
    </div>
  </div>
</div>
				
			


		
		</section>
		<section class="content_coponent">
			<!--  그래프 css 설정은 여기서 하는겁니다. 시작 -->
			<canvas id="myChart" style="width:100%;max-width:500px"></canvas>
			<!--  그래프 css 설정은 여기서 하는겁니다. 끝 -->
		</section>

	
	
	
	
	
	
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
	<!-- 참고 사이트 ==> https://www.chartjs.org/docs/latest/charts/line.html  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/detail.js"></script>
	<script type="text/javascript" src="../js/sellDetail.js"></script>
</body>
</html>
