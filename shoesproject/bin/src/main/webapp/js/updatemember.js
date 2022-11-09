alert('회원정보 JS 구동 확인')
function updatemember(){
	
	let form = document.querySelector('form')
	
	let fd = new FormData(form)
	
	$.ajax({
		url : "/shoesproject/shoe/updatemember",
		data : fd,
		seccess : function(re){
			if( re == 'ture'){
				alert('회원정보 수정 완료')
			}else{ alert( '회원정보 수정 실패 ')}
		}
	})
}