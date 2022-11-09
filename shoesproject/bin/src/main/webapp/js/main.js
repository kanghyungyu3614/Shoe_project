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
				
				
				html += `<span style="margin: 30px; z-index: 99;" class="product${p.pno}" onclick="product(${p.pno})">
							<div><img style="width: 230px; height: 230px;" alt="이미지없음" src="${pimg}"></div>
							<div>
								브랜드명 : <span>${p.pbrand}</span>
								<span>${p.ptitle}</span>
							</div>
						</span>`
			}
			document.querySelector('#popular_product').innerHTML += html
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
