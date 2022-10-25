/**
 * 
 */
 function draw(){
	let form = document.querySelector('form')
	let formdata = new FormData(form)
	
	$.ajax({
		url : "/태섭_경주포폴/board/write",
		data :  formdata,
		type : 'POST',
        processData: false,
        contentType :false,
		success : function(re){
			if(re==='true'){
				alert("작성성공")
			}else{
				alert("작성실패")
			}
		}
	})
}