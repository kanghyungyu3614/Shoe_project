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
