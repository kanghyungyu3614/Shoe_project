
 ///////////////////셀럽들의 정보/////////////////////


 
 
 /////////////////////////셀럽 제작소///////////////////
 function draw(){
	let form = document.querySelector('form')
	let formdata = new FormData(form)
	
	$.ajax({
		url : "/shoesproject/board/write",
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



let sfile = document.querySelector("#sfile")

sfile.addEventListener('change' , function(e){
	let file = new FileReader()
	
	file.readAsDataURL(e.target.files[0])
	
	file.onload = function(e){
		document.querySelector("#chimg").src = e.target.result
	}
})
