function nwrite() {
	let ntitle = document.querySelector('.ntitle').value
	let ncontent = document.querySelector('.ncontent').value	
	
	$.ajax({
		url: "/shoesproject/nwrite",
		type: "POST",
		data: { "ntitle": ntitle, "ncontent": ncontent },
		success : function (re) {
			console.log("re")
			console.log(re)
			if(re == 'true') {
				alert('등록성공!!')
				window.location.href = "/shoesproject/admin/admin.jsp"
			} else {
				alert('등록실패!!')
				console.log("re")
			    console.log(re)
				window.location.reload()
			}
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
