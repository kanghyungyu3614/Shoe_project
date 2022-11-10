// 상품요청
function request() {
	
	let rpurpose = document.querySelector('.rpurpose').value
	let rdetail = document.querySelector('.rdetail').value
	let rtitle = document.querySelector('.rtitle').value
	let rcontent = document.querySelector('.rcontent').value
	
	$.ajax({
		url : "/shoesproject/request",
		data : { "rpurpose" : rpurpose, "rdetail" : rdetail, "rtitle" : rtitle, "rcontent" : rcontent },
		type : 'post',
		success : function (re) {
			if(re == "true") {
				alert("문의완료!!")
				window.location.href = "/shoesproject/main/mainhome.jsp"
			} else {
				alert("문의실패!!")
				window.location.reload()
			}
		}
	})
}
