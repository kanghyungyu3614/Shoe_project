detail()
function detail() {
	$.ajax({
		url : "/shoesproject/product/detail",
		success : function (re) {
			let product = JSON.parse(re)
			
			console.log(product.pno)
			html = `
				<h1>${product.pno}번 상품 디테일입니다.</h1>
			`
			
			document.querySelector('.product').innerHTML = html
		}
	})
}


function selin(){
	
	let selprice = document.querySelector(".selprice").value
	let product_size = document.querySelector('.product_size').value
	alert(product_size)
	
	$.ajax({
		
		
	})
}
function buyin(){
	
}