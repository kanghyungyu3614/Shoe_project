let snum = document.querySelector('.snum').value 

$.ajax({
	url : "/shoesproject/board/write",
	type :"get",
	data : {"snum" : snum},
	success : re=>{
		let json = JSON.parse(re)
		document.querySelector("#chimg").src='/shoesproject/supload/'+json[0].sfile
	}
})

function selloveupdate(){
	
	let info = {
		snum : document.querySelector('#snum').value , 
		title : document.querySelector('#title').value , 
		content : document.querySelector('#content').value ,  		
	}
	
	$.ajax({
		url : "/shoesproject/board/write",
		data : info,
		type : "put",  
		success : function(re){
			if( re ==='true'){
				alert("수정완료")
				let con = confirm("셀럽들의 정보로 이동할까요?")
					if(con===true){
						location.href="/shoesproject/board/selovelist.jsp";
					}
			}else{
				alert( "성공실패")
			}
		}
		
	})
}
