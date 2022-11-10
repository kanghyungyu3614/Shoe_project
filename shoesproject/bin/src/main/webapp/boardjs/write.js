
 ///////////////////셀럽들의 정보/////////////////////


 /////////////////////////셀럽 제작소///////////////////
 function draw(){
	
	
	
	let form = document.querySelector('form')
	let formdata = new FormData(form)
	
	try{
		let filename =  document.querySelector(".sfile").files[0].name
	}catch(e){ 
		alert('이미지를 첨부해주세요')
		return;
	}
	
	$.ajax({
		url : "/shoesproject/board/write",
		data :  formdata,
		type : 'POST',
        processData: false,
        contentType :false,
		success : function(re){
			if(re==='true'){
				alert("작성성공")
				let con = confirm("셀럽들의 정보로 이동할까요?")
					if(con===true){
						location.href="/shoesproject/board/selovelist.jsp";
						
					}else{
						alert("취소하겠습니다")
						
					}
			}else{
				alert("작성실패")
			}
		}
	})
	
	//}
}



let sfile = document.querySelector("#sfile")

sfile.addEventListener('change' , function(e){
	let file = new FileReader()
	
	file.readAsDataURL(e.target.files[0])
	
	file.onload = function(e){
		document.querySelector("#chimg").src = e.target.result
	}
})
