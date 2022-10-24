/**
 * 
 */
 function draw(){
	
	
	
	let title = document.querySelector("#title").value
	let content =document.querySelector("#content").value
	let lid = document.querySelector("#lid").value
	let form = document.querySelector('form')
	console.log(form)
	console.log(lid)
	let formdata = new FormData(form)
	console.log(formdata)
	let box = {
		"title" : title,
		"content" :content,
		"lid" : lid,
		
	}
	
	console.log(box)
	
	$.ajax({
		url : "/태섭_경주포폴/board/write",
		data : box,formdata,
		type : 'POST',
		
        processData: false,
		success : function(re){
			if(re==='true'){
				alert("작성성공")
			}else{
				alert("작성실패")
			}
		}
	})
}