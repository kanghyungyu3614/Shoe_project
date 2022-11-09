$(document).ready(function() {
			var gnb = $('#gnb');

			// 마우스 over 시
			gnb.mouseenter(function() {
				$('.inner_menu').show();
				// menu bg
				var menuHeight = $('#header').outerHeight();
				var inmeHegiht = $('.inner_menu').outerHeight();
				$('.hd_bg').css({
					'top': menuHeight + 'px',
					height: inmeHegiht + 'px'
				});
			});

			// 마우스  leave 시
			gnb.mouseleave(function() {
				$('.inner_menu').hide();
				$('.hd_bg').css('height', '0')

			});

			//dept2 hover시 dept1 active
			$('.dept1').mouseenter(function() {
				$(this).children().addClass('active');
				$(this).siblings().children().removeClass('active')
			});
			$('.dept1').mouseleave(function() {
				$(this).children().removeClass('active');
			});
			
			/* 로그인을 안했을때 햄버거 메뉴  */
			$('.menu_bar').click(function(){
				$(this).toggleClass('active');
				$('.menu_open').slideToggle();
			});
			/* member가 로그인했을때 햄버거 메뉴  */
			$('.member_menu_bar').click(function(){
				$(this).toggleClass('active');
				$('.member_menu_open').slideToggle();
			});
			/* admin이 로그인했을때 햄버거 메뉴  */
			$('.admin_menu_bar').click(function(){
				$(this).toggleClass('active');
				$('.admin_menu_open').slideToggle();
			});
		});
		
		
// 회원의 드롭다운인지, 비회원의 드롭다운인지, 관리자의 드롭다운인지 찾기
function findDropdown (){
 let resultNum = 0 ;
 let noMemberDropdowncontent = document.querySelector('.menu_open')
 let MemberDropdowncontent = document.querySelector('.member_menu_open')
 let adminDropdowncontent = document.querySelector('.admin_menu_bar')
 if(noMemberDropdowncontent != null){
	resultNum = 'noMem';	
 }
 else if(MemberDropdowncontent != null){
	resultNum = 'Mem';
 }
 else if(adminDropdowncontent != null){
	resultNum = 'admin';
 }
 return resultNum;	
}
		
// 드롭다운 닫기 
$(window).scroll(function () { 
	var scrollValue = $(document).scrollTop(); 
	console.log(scrollValue);
    if(scrollValue>10 && findDropdown() == 'noMem'){
		noMemberDropdowncontent = document.querySelector('.menu_open')
		noMemberDropdowncontent.style.display = "none";
	}
    else if(scrollValue>10 && findDropdown() == 'Mem'){
		MemberDropdowncontent = document.querySelector('.member_menu_open')
		MemberDropdowncontent.style.display = "none";
	}
    else if( scrollValue>10 && findDropdown() == 'admin'){
		adminDropdowncontent = document.querySelector('.admin_menu_open')
		adminMenuBar = document.querySelector('.admin_menu_bar')
		adminDropdowncontent.style.display = "none";
	}
});		