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
			
			/* 햄버거 메뉴 */
			$('.menu_bar').click(function(){
				$(this).toggleClass('active');
				$('.menu_open').slideToggle();
			});
		});