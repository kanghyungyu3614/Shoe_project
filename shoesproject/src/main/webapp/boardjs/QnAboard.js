alert('QnA board js 통신')
function qnawrite(){
	let form = document.querySelector('form')
	console.log(form)
	let formdata = new FormData(form)
	console.log(formdata)
	$.ajax({
		url : "http://localhost:8080/shoesproject/shoe/QnAboard",
		data : formdata,
		contentType : false ,
		processData : false , 
		type : "post",
		success : function(re){
			if( re === 'true'){
				alert('문의 성공')	
			}else{ alert( '문의 실패') }
		}
	})
}