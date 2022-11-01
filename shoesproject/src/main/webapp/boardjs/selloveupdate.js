let snum = document.querySelector('.snum').value 
/*
$.ajax({
	url : "/shoesproject/board/write",
	type :"get",
	data : {"snum" : snum},
	success : re=>{
		let json = JSON.parse(re)
		console.log(json)
		document.querySelector("#chimg").src='/shoesproject/src/main/webapp/supload/'+json.sfile
	}
})
*/
function selloveupdate(){
	
	let form  = document.querySelector("#updatesellob")
	alert(snum)
	let formdata = new FormData(form)
		console.log(formdata)
		
	$.ajax({
		url : "/shoesproject/board/write",
		data : formdata,
		type : "put",
		contentType: false, 
		processData: false, 
		success : function(re){
			let json = JSON.parse(re)
			alert(json)
			if(json==='true'){
				alert("수정성공")
			}else{
				alert( "성공실패")
			}
		}
		
	})
}
