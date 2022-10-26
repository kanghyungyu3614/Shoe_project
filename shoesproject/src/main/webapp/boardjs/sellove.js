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
			for(let i = 0; i<json.length; i++){
				img = '/shoesproject/supload/'+json[i].sfile
					
				 html +=  '<div class="card col-sm-2" >'+
						'  <img src ="'+img+'" onclick="sellobview()"  class="card-img-top" >'+
						'  <div class="card-body">'+
						'    <h5 class="card-title">'+json[i].lid+'</h5>'+
						'    <p class="card-text">'+json[i].stitle+'</p>'+
						
						'  </div>'+
						'</div>';		
							
			}
				document.querySelector(".selove5").innerHTML += html;	
			}
	
	})
	
}

function sellobview(){
	
	alert("dd")
}
/*
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
							'<td><img src ="'+img+'" width ="100%" onclick="sellobview()"></td>'+
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

function sellobview(){
	
	alert("dd")
} */