// 상품등록
function pregist() {
	let form = document.querySelector('form')
	let formdata = new FormData(form)
	
	$.ajax({
		url : "/shoesproject/pregist",
		data : formdata,
		type : 'POST',
		contentType : false,
		processData : false,

		success : function(re) {
			if(re === 'true') {
				alert('등록성공!!');
				window.location.href = "./admin.jsp"
			}
			else {
				alert('등록실패!!')
				window.location.reload()
			}
		}
	})
	
}
