/////////////////////셀럽들의 정보///////////////////

getsellob()
function getsellob(){
	$.ajax({
		url : "/shoesproject/board/write",
		type : 'get',
		success : function(re){
		
			
			let json = JSON.parse(re);
		
			
			let img = ''
			let html = ''
			console.log(img)
			for(let i = 0; i<json.length; i++){
				img = '/shoesproject/supload/'+json[i].sfile
				html += '<tr>'+
							'<td>'+json[i].stitle+'</td>'+
							'<td><img src ="'+img+'" width ="100%"></td>'+
							'<td>'+json[i].lid+'</td>'+
							//'<td>'+json[i].lid+'</td>'+
						'</tr>'	
			console.log(img[i])
							
			}
		console.log(html)
		document.querySelector(".selove5").innerHTML += html;	
			}
	
		
		
		
	})
	
}

