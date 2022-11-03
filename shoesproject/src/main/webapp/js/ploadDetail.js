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
							<td>${p.pcategory}</td>
							<td>${p.pbrand}</td>
							<td>${p.pname}</td>
							<td>${p.pcolor}</td>
							<td>${p.pprice}</td>
							<td>${p.preleaseday}</td>
							<td><img style="width: 100px; height: 100px;" alt="이미지없음" src="${pimg}"></td>
							<td><button type="button" onclick="pdelete(${p.pno})">삭제</button></td>
						</tr>`
			}
			document.querySelector('.regist').innerHTML = html
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

function logout() {
	$.ajax({
		url : "/shoesproject/logout",
		success: function (re) {
			if(re) {
				window.location.href="/shoesproject/main/mainhome.jsp"
			}
		}
	})
}
