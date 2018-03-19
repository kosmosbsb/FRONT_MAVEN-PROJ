var HEADER_MEGA_DROPDOWN = function(){
	var is_slide_down = false;
	var is_slide_down_ing = false;
	var is_slide_up_ing = false;
	var $body;
	var code;
	var widget_offset_top = 0;
	var widget_height = 0;
	var widget_bottom = 0;
	var section_offset_top = 0;
	var section_height = 0;
	var section_bottom = 0;
	var row_size = 0;
	var gap = 0;
	var event_type = 'mouseover';
	var menu_sync = false;
	var $section;
	var $widget;
	var $drop_down;
	var option;
	var $has_child = false;		// 하위 메뉴 소유 여부
	var init = function($w, $d, o){
		$widget = $w;
		$drop_down = $d;
		option = o;
		if(typeof $widget == 'undefined')
			return;
		if(typeof $drop_down == 'undefined')
			return;

		if($widget.length == 0)
			return;

		if($drop_down.length == 0)
			return;

		code = option.code;
		event_type = typeof option.event_type == 'undefined'? 'mouseover' : option.event_type;

		//ios 에서 mouseover 이벤트를 더블탭하여 함. 다른 링크들에 영향을 줌
		if(IS_MOBILE){
			event_type = 'click';
		}
		row_size = option.row_size;
		menu_sync = option.menu_sync;

		if(row_size <1 || row_size>20)
			row_size = 5;

		$has_child = $widget.find('.sub_menu').length > 0 ? true : false;		// 하위 메뉴 요소가 1개 이상 존재할 경우 true

		$section = $widget.closest('div[data-type=section-wrap]');
		$section.find('._mega_dropdown_container_'+code).remove();
		$section.append($drop_down);

		widget_offset_top = $widget.offset().top;
		widget_height = $widget.outerHeight();
		widget_bottom = widget_offset_top+widget_height;
		section_offset_top = $section.offset().top;
		section_height = $section.outerHeight();
		section_bottom = section_offset_top+section_height;
		$body = $('body');

		gap = (widget_offset_top - section_offset_top)+widget_height;
		$drop_down.css({'top' : gap + 'px'});
			setTimeout(function(){

				widget_offset_top = $widget.offset().top;
				widget_height = $widget.outerHeight();
				widget_bottom = widget_offset_top+widget_height;
				section_offset_top = $section.offset().top;
				section_height = $section.outerHeight();
				section_bottom = section_offset_top+section_height;
				gap = (widget_offset_top - section_offset_top)+widget_height;
				$drop_down.css({'top' : gap + 'px'});
			},1000);

		if(menu_sync){
			//setMenuSync();
		}else{
			$('#dropdown_' + code).find('._item').each(function(e){
				if(e % row_size == 0)
					$(this).addClass('clear-both');
			});
			$drop_down.find('._mega_dropdown_sync').css('visibility','visible');
		}
		$widget.find('._inline_menu_container').on('more_menu_complete',function(){
			setMenuSync();
		});

		$widget.off(event_type+".mega_dropdown_"+code).on(event_type+".mega_dropdown_"+code,function(e){
			if(is_slide_down && event_type=='click'){
				close(e);
			}else{
				open(e);
			}
		});

		$(document).off(event_type+".mega_dropdown_"+code).on(event_type+".mega_dropdown_"+code,function(e){

			if(($(e.target).closest("#"+code).length == 0 || (event_type=='click' && !is_slide_down_ing)) && $(e.target).closest("#dropdown_"+code).length == 0){
				close(e);
			}
		});
	};

	var setMenuSync = function(){
		if(menu_sync){
			var $mega_dropdown_sync = $drop_down.find('._mega_dropdown_sync');
			$mega_dropdown_sync.css('visibility','hidden');
			$mega_dropdown_sync.find('._title_txt').hide();
			var $menu_items = $widget.find('._main_menu li');
			var $more_menu = $widget.find('._main_menu li._more_menu');
			if($more_menu.length >0){
				var _last_code = '';
				$menu_items.each(function(){
					if(isBlank($(this).attr('data-code')))
						return false;
					_last_code = $(this).attr('data-code');
				});

				var $drop_down_menu_items = $mega_dropdown_sync.find('._item');
				var more_list = [];
				var hit_more = false;
				if(_last_code == '')
					hit_more = true;
				$drop_down_menu_items.each(function(){
					if(hit_more)
						more_list.push($(this));
					var _code = $(this).attr('data-code');
					if(_code == _last_code){
						hit_more = true;
					}
				});
				if(more_list.length > 0){
					var $_ul = more_list[0].find('ul');
					$_ul.empty();

					$.each(more_list, function(e, $_obj){
						$_obj.find('span').show();
						$_ul.append($('<li class="mega_more">').append($_obj.find('._title_anchor')));
						$_obj.hide();
					});
					more_list[0].show();
				}
			}

			var left = $widget.offset().left;
			if($body.hasClass('admin'))
				left = left-$('#edit').offset().left;
			$mega_dropdown_sync.css({
				'padding' : 0,
				'width' : $widget.width(),
				'position' : 'relative',
				'left' : left,
				'visibility' : 'visible'
			});
		}
	};

	var open = function(e){
		if($body.hasClass('admin'))
			return;
		if($('#dropdown_' + code).find('._item').length == 0)
			return;
		if(!$has_child && $(e.currentTarget).find('._main_menu ._more_menu').length == 0)		// 하위 메뉴가 존재하지 않거나 메뉴 더보기 버튼이 존재하지 않을 경우
			return;
		if(is_slide_down_ing)
			return;
		if(!is_slide_down){
			$drop_down.slideDown({
				'duration' : 400,
				'easing' : 'swing',
				'start' : function(animation){
					is_slide_down_ing = true;
					is_slide_up_ing = false;
				},
				'progress' : function(animation, progress, remainingMs){

				},
				'done' : function(animation,jumpedToEnd){
					is_slide_down_ing = false;
					is_slide_down = true;
				}
			});
		}
	};

	var close = function(e){
		if($body.hasClass('admin'))
			return;
		if($('#dropdown_' + code).find('._item').length == 0)
			return;
		if(!$has_child && $(e.currentTarget).find('._main_menu ._more_menu').length == 0)		// 하위 메뉴가 존재하지 않거나 메뉴 더보기 버튼이 존재하지 않을 경우
			return;
		if(!is_slide_up_ing){
			$drop_down.slideUp({
				'duration' : 400,
				'easing' : 'swing',
				'start' : function(animation){
					is_slide_up_ing = true;
					is_slide_down_ing = false;
				},
				'progress' : function(animation, progress, remainingMs){

				},
				'done' : function(animation,jumpedToEnd){
					is_slide_up_ing = false;
					is_slide_down = false;
				}
			});
		}
	};



	return {
		'init' : function($widget, $drop_down, option){
			init($widget, $drop_down, option);
		}
	}

};