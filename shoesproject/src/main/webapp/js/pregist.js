function pregist() {
	let form = document.querySelector('form')
	let formdata = new FormData(form)
	console.log(formdata)
	
	$.ajax({
		url : "http://localhost:8080/shoesproject/pregist",
		data : formdata,
		type : 'POST',
		contentType : false,
		processData : false,

		success : function(re) {
			if(re === 'true') {
				alert('등록성공!!');
				window.location.href = "./pregist.jsp"
			}
			else {
				alert('등록실패!!')
				window.location.reload()
			}
		}
	})
	
}
