/////////////////////셀럽들의 정보///////////////////

getsellob()

let json =''
let img = ''
let html = ''
let snum=''
function getsellob(){
	$.ajax({
		url : "/shoesproject/board/write",
		type : 'get',
		success : function(re){
		
			 json = JSON.parse(re);
		
			
			
			for(let i = 0; i<json.length; i++){
				img = '/shoesproject/supload/'+json[i].sfile
				snum = json[i].snum
				 html +=  '<div class="card col-sm-2" >'+
						'  <img src ="'+img+'" onclick="sellobview('+i+')"  class="card-img-top" >'+
						'  <div class="card-body">'+
						'    <h5 class="card-title">'+json[i].lid+'님</h5>'+
						'    <p class="card-text">'+json[i].stitle+'</p>'+
						'	 <p class="card'+i+'"></p>'+
						'    <p class="delete'+i+'"></p>'+
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
	
	document.querySelector(".delete"+i).innerHTML = "<button onclick='seldele("+snum+")'>삭제하기</button><button type='button' onclick='selupdate("+snum+")'>수정하기</button>"
	document.querySelector('.card'+i).innerHTML = json[i].scontent;
	
}

function selupdate(snum){
	//document.querySelector('#chimg').src = 
	$.ajax({
		url : "/shoesproject/board/write",
		type : 'put',
		data : {"snum" : snum  },
		success : function(re){
			
			
			location.href="/shoesproject/board/realsellove.jsp"
		}
		
		
	})
}
function selloveupdate(snum){
	let form  = document.querySelector(".updatesellob")
	let formdata = new FormData(form)
	
	$.ajax({
		url : "/shoesproject/board/write",
	
		processData : false, 
		contentType : false, 
		data : formdata,
		type : "put",
		success : function(re){
			if(re==='true'){
				alert("수정성공")
			}else{
				alert( "성공실패")
			}
		}
		
	})
}


function seldele(snum){
	$.ajax({
		url : "/shoesproject/board/write",
		type : 'delete',
		data : {snum},
		success : (re)=>{
			if(re==='true'){
				alert("삭제성공")
				location.reload()
			}else{
				alert("삭제실패")
			}
		}
		
	})
}

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