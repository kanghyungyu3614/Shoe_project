pload()
function pload() {
	$.ajax({
		url : "/shoesproject/pload",
		data : { "type" : "adminDetail" },
		success : function (re) {
			let product = JSON.parse(re)
			let html = ""

			for(let i = 0 ; i<product.length ; i++) {
				let p = product[i]
				if(p.pimg == null) {
					p.pimg = "noimg.png"
				}
				let pimg = "/shoesproject/pupload/" + p.pimg
				
				
				html += `<tr>
							<td>${p.pno}</td>
							<td>${p.ppurpose}</td>
							<td>${p.pcategory}</td>
							<td>${p.pbrand}</td>
							<td>${p.psize}</td>
							<td>${p.ptitle}</td>
							<td>${p.pcontent}</td>
							<td>${p.pdate}</td>
							<td><img style="width: 100px; height: 100px;" alt="이미지없음" src="${pimg}"></td>
							<td>${p.pstatus}</td>
							<td><button type="button" onclick="pdelete(${p.pno})">삭제</button></td>
						</tr>`
			}
			document.querySelector('#product_regist').innerHTML = html
		}
	})
}

function pdelete(i) {
	$.ajax({
		url : "/shoesproject/pdelete",
		data : {"pno" : i},
		success : function (re) {
			alert(re)
			pload()
		}
	})
}
