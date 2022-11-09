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
				window.location.href=`/shoesproject/product/detail.jsp?pno=${i}`
			}
		}
	})
}
