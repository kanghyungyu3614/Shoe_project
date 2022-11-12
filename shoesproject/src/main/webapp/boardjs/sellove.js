/////////////////////셀럽들의 정보///////////////////
getsellob()
let json = ''
let img = ''
let html = ''
let snum = ''
function getsellob() {
	$.ajax({
		url: "/shoesproject/board/write",
		type: 'get',
		success: function(re) {
			json = JSON.parse(re);
			for (let i = 0; i < json.length; i++) {
				img = '/shoesproject/supload/' + json[i].sfile
				snum = json[i].snum
				html += '<div class="card col-sm-2" >' +
					'  <img src ="' + img + '" onclick="sellobview(' + snum + ',' + i + ')"  class="card-img-top" >' +
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
	})

}
selhi()
function sellobview(snum, i) {
	let lid = document.querySelector(".lid").value
	if (lid == json[i].lid) {
		document.querySelector(".delete" + i).innerHTML = "<button onclick='seldele(" + snum + ")'>삭제하기</button>" +
			"<a href='/shoesproject/board/realsellove.jsp?snum=" + snum + "'><button type='button' >수정하기</button></a>"
	}
	document.querySelector('.card' + i).innerHTML = json[i].scontent;
}

function seldele(snum) {
	$.ajax({
		url: "/shoesproject/board/write",
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
function selhi() {
	$.ajax({
		url: "/shoesproject/board/write",
		type: 'get',
		success: function(re) {
			let sjson = JSON.parse(re)

			let chtml = ''
			for (let i = 0; i < sjson.length; i++) {
				let simg = '/shoesproject/supload/' + sjson[i].sfile
				chtml +=
					'<div class="seloveComponent">'
					+ '<a href="/shoesproject/board/selovelist.jsp"><img class="seloveimg" alt="" src="' + simg + '"></a>'
					+ '<div class="userid">' + sjson[i].lid + '님</div>'
					+ '<div class="usercontent">' + sjson[i].stitle + '</div>'
					+ '</div>';
			}
			document.querySelector(".selloveimg").innerHTML += chtml;
		}
	})
}