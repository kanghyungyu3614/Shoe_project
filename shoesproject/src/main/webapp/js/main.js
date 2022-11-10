pload()

function pload() {
	$.ajax({
		url : "/shoesproject/pload",
		data : { "type" : "main" },
		success : function (re) {
			let product = JSON.parse(re)
			let html = ""

			for(let i = 0 ; i<product.length ; i++) {
				let p = product[i]
				if(p.pimg == null) {
					p.pimg = "noimg.png"
				}
				let pimg = "/shoesproject/pupload/" + p.pimg
				
				console.log("product 는?")
				console.log(product)
				html += `<div  id="product${p.pno}" class="productComponent" onclick="product(${p.pno})">
							<img class="productComponentImg" alt="이미지없음" src="${pimg}">
							<div class="product_content">
								<div class="product_brand_content">${p.pbrand}</div>
							</div>
						</div>`
			}
			
			html +=  '<span class="product_img">'+
'			    <img src="./img/product/1.jpg">'+
'			    <div class="selname">Louis Vuitton</div>'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/2.jpg">'+
'				<div>Adidas Yeezy Boost</div>'+
'				'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/3.jpg">'+
'				<div>Asics x Jessica</div>'+
'				'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/4.jpg">'+
'				<div>Asics x Andersson Bell </div>'+
'				'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/5.jpg">'+
'				<div>Jordan 4 Retro</div>'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/6.jpg">'+
'				<div>Nike Air Force</div>'+
'			</span>	'+
'			'+
'			<span class="product_img">'+
'			    <img src="./img/product/7.jpg">'+
'			    <div>Nike x Neckface </div>'+
'				'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/8.jpg">'+
'				<div>Louis Vuitton LV Trainer</div>'+
'				'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/9.jpg">'+
'				<div>Louis Vuitton</div>'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/10.jpg">'+
'				<div>Louis Vuitton</div>'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/11.jpg">'+
'				<div>New Balance 1906R</div>'+
'			</span>	'+
'			<span class="product_img">'+
'				<img src="./img/product/12.jpg">'+
'				<div>New Balance 1906R</div>'+
'			</span>';
			
			
			
			document.querySelector('.main_popular_product').innerHTML += html
		}
		
	})
}

// 세션 저장하고 디테일페이지 리로드
function product(i) {
	$.ajax({
		url : "/shoesproject/product/psession",
		data : { "pno" : i },
		success : function (re) {
			if(re == "true") {
				window.location.href=`/shoesproject/product/detailPage.jsp?pno=${i}`
			}
		}
	})
}
