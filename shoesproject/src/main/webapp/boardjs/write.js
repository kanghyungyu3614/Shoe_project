
 ///////////////////셀럽들의 정보/////////////////////


 let file = document.querySelector(".sfile").value
 console.log(file)
 /////////////////////////셀럽 제작소///////////////////
 function draw(){
	
	
	
	let form = document.querySelector('form')
	let formdata = new FormData(form)
	//if(file !=null){alert("사진등록해주세요")}
	//else{
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
