list()
function list() {
	$.ajax({
		url : "/shoesproject/list",
		success : function (re) {
			let data = JSON.parse(re)
			console.log(data)
			
			let html = ""
			for(let i = 0 ; i<data.length ; i++) {
				
				let p = data[i]
				let pimg = "/shoesproject/pupload/" + p.pimg
								
				if(p.pimg == null) {
					pimg = "/shoesproject/pupload/noimg.png"
				}
				
				html += `
					<tr>
						<td>${p.pno}</td>
						<td>${p.ppurpose}</td>
						<td>${p.pcategory}</td>
						<td>${p.pbrand}</td>
						<td>${p.psize}</td>
						<td>${p.pprice}</td>
						<td>${p.ptitle}</td>
						<td>${p.pcontent}</td>
						<td>${p.pdate}</td>
						<td><img style="width: 100px; height: 100px" src="${pimg}"></td>
						<td>${p.pstatus}</td>
					</tr> <br>
				`
			}
			document.querySelector(".list").innerHTML = html
		}
	})
}
