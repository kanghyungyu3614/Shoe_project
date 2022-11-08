pload()
function pload() {
	$.ajax({
		url : "/shoesproject/pload",
		data : { "type" : "admin" },
		success : function (re) {
			let product = JSON.parse(re)
			console.log(product)
			let html = ""

			for(let i = 0 ; i<product.length ; i++) {
				let p = product[i]
				if(p.pimg == null) {
					p.pimg = "noimg.png"
				}
				let pimg = "/shoesproject/pupload/" + p.pimg
				
				html += `<tr style="text-align: center;">
							<td onclick="spload(${p.pno})" style="width: 100px; height: 100px; cursor: pointer;">${p.pcategory}</td>
							<td onclick="spload(${p.pno})" style="width: 100px; height: 100px; cursor: pointer;">${p.pbrand}</td>
							<td onclick="spload(${p.pno})" style="width: 100px; height: 100px; cursor: pointer;">${p.pname}</td>
							<td onclick="spload(${p.pno})" style="width: 100px; height: 100px; cursor: pointer;">${p.pcolor}</td>
							<td onclick="spload(${p.pno})" style="width: 100px; height: 100px; cursor: pointer;">${p.pprice}</td>
							<td onclick="spload(${p.pno})" style="width: 100px; height: 100px; cursor: pointer;">${p.preleaseday}</td>
							<td onclick="spload(${p.pno})"><img style="width: 100px; height: 100px;" alt="이미지없음" src="${pimg}"></td>
							<td><button type="button" onclick="pdelete(${p.pno})">삭제</button></td>
						</tr>
						<tbody class="product${p.pno}">
						
						</tbody>`
			}
			document.querySelector('.regist').innerHTML = html
		}
	})
}

let sploadOn = false
function spload(pno) {
	$.ajax({
		url : "/shoesproject/spload",
		data : { "pno" : pno },
		success : function (re) {
			data = JSON.parse(re)
			let html = ""
			if (sploadOn == false) {
				html += `<tr style="text-align: center;"><td>상품번호</td><td>현재진행상태</td><td>사이즈</td><td>낙찰일</td><td>판매자ID</td><td>구매자ID</td><td>가격</td><td>기타</td><tr>`
				for(let i = 0 ; i < data.length ; i++) {
					s = data[i]
					if(s.spendday == undefined) {
						s.spendday = ""
					}
					if(s.spsellid == undefined) {
						s.spsellid = ""
					}
					if(s.spbuyid == undefined) {
						s.spbuyid = ""
					}
					html += `<tr style="text-align: center;">
								<td>${s.spno}번상품</td>
								<td>${s.spstatus}</td>
								<td>${s.spsize}</td>
								<td>${s.spendday}</td>
								<td>${s.spsellid}</td>
								<td>${s.spbuyid}</td>
								<td>${s.spprice}</td>
								<td></td>
							</tr>`
				}
				html += `<br><br>`
				sploadOn = true;
			} else {
				html = "";
				sploadOn = false; 
			}
			document.querySelector(`.product${pno}`).innerHTML = html
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
