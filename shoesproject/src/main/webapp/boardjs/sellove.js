/////////////////////셀럽들의 정보///////////////////
getsellob()
function getsellob() {
	$.ajax({
		url: "/shoesproject/board/write",
		async: false,
		type: 'get',
		success: function(re) {
			let json = JSON.parse(re);
			let html = ''
			let img = ''
			let snum = ''
			let lnum = ''
			let scontent = ''
			if(re !== null) {				
				for (let i = 0; i < json.length; i++) {
					console.log(json[i].lid)
					img = '/shoesproject/supload/' + json[i].sfile
					snum = json[i].snum
					lnum = json[i].lid
					scontent = json[i].scontent
					html += '<div class="card col-sm-2" >' +
						'  <img src ="' + img + '" onclick="sellobview(' + snum + ',' + i + ',' + lnum + ',' + scontent + ')"  class="card-img-top" >' +
						'  <div class="card-body">' +
						'    <h5 class="card-title">' + json[i].lid + '님</h5>' +
						'    <p class="card-text">' + json[i].stitle + '</p>' +
						'	 <p class="card' + i + '"></p>' +
						'    <p class="delete' + i + '"></p>' +
						'  </div>' +
						'</div>';
				}
				document.querySelector(".selove5").innerHTML += html;
			}
			
		}
	})

}

function sellobview(snum, i, lnum, scontent) {
	console.log(snum, i, lnum, scontent)
	let lid = document.querySelector(".lid").value
	if (lid == lnum) {
		document.querySelector(".delete" + i).innerHTML = "<button onclick='seldele(" + snum + ")'>삭제하기</button>" +
			"<a href='/shoesproject/board/realsellove.jsp?snum=" + snum + "'><button type='button' >수정하기</button></a>"
	}
	document.querySelector('.card' + i).innerHTML = scontent;
}

function seldele(snum) {
	$.ajax({
		url: "/shoesproject/board/write",
		async: false,
		type: 'delete',
		data: { snum },
		success: (re) => {
			if (re === 'true') {
				alert("삭제성공")
				location.reload()
			} else {
				alert("삭제실패")
			}
		}
	})
}

selhi()
function selhi() {
	$.ajax({
		url: "/shoesproject/board/write",
		async: false,
		type: 'get',
		success: function(re) {
			let sjson = JSON.parse(re)

			let chtml = ''
			if(re !== null) {
				for (let i = 0; i < sjson.length; i++) {
					let simg = '/shoesproject/supload/' + sjson[i].sfile
					chtml +=
						'<div class="seloveComponent">'
						+ '<a href="/shoesproject/board/selovelist.jsp"><img class="seloveimg" alt="" src="' + simg + '"></a>'
						+ '<div class="userid">' + sjson[i].lid + '님</div>'
						+ '<div class="usercontent">' + sjson[i].stitle + '</div>'
						+ '</div>';
				}
				document.querySelector(".selloveimg").innerHTML = chtml;
			}
		}
	})
}
