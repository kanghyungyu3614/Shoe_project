/////////////////////셀럽들의 정보///////////////////

getsellob()

let json =''
let img = ''
let html = ''
function getsellob(){
	$.ajax({
		url : "/shoesproject/board/write",
		type : 'get',
		success : function(re){
		
			 json = JSON.parse(re);
		
			
			
			for(let i = 0; i<json.length; i++){
				img = '/shoesproject/supload/'+json[i].sfile
					
				 html +=  '<div class="card col-sm-2" >'+
						'  <img src ="'+img+'" onclick="sellobview('+i+')"  class="card-img-top" >'+
						'  <div class="card-body">'+
						'    <h5 class="card-title">'+json[i].lid+'님</h5>'+
						'    <p class="card-text">'+json[i].stitle+'</p>'+
						
						'  </div>'+
						'</div>';
						
						
						
						// SFILE IF문이 안들어가는 이유 물어보기 
						// 페이지 전환처럼 안보이고 바로 클릭하면 리스트가 나오게하기 
						
							
			}
				document.querySelector(".selove5").innerHTML += html;	
		}
	})
	
}

function sellobview(i){

	console.log(json[i]);
	
	img = '/shoesproject/supload/'+json[i].sfile
	 html =  '<div class="card col-sm-2" >'+
						'  <img src ="'+img+'"  class="card-img-top" >'+
						'  <div class="card-body">'+
						'    <h5 class="card-title">'+json[i].lid+'님</h5>'+
						'    <p class="card-text">'+json[i].stitle+'</p>'+
						'    <p class="card-text">'+json[i].scontent+'</p>'+
//						'<button type="button" onclick="sellovedelete()">글삭제</button>'+
//						'<button>뒤로가기</button>'+
						'  </div>'+
						'</div>';		
				
				document.querySelector(".selove5").innerHTML = html






//	for(let i = 0; i<snum.length; i++){
//				img = '/shoesproject/supload/'+json[i].sfile
//					
//				 html +=  '<div class="card col-sm-2" >'+
//						'  <img src ="'+img+'" onclick="sellobview()"  class="card-img-top" >'+
//						'  <div class="card-body">'+
//						'    <h5 class="card-title">'+json[i].lid+'님</h5>'+
//						'    <p class="card-text">'+json[i].stitle+'</p>'+
//						'    <p class="card-text">'+json[i].scontent+'</p>'+
//						'  </div>'+
//						'</div>';		
//							
//			}
//				document.querySelector(".selove5").innerHTML = html;	
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