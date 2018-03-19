var MOBILE_CAROUSEL_MENU = function($carousel_wrap_obj){
	var init = function($carousel_wrap_obj){

		var $carousel_objs =  $carousel_wrap_obj.find('._mobile_navigation_menu');

		$carousel_objs.each(function(e){
			makeCarousel($(this));
		});
		$carousel_wrap_obj.css('visibility','visible');
	};

	var makeCarousel = function($carousel_obj){
		$carousel_obj.on('init',function(event,slick){
			$carousel_obj.css('visibility','visible');
		});
		$carousel_obj.slick({
			'dots': false,
			'infinite': false,
			'speed': 300,
			'arrows' : false,
			'variableWidth':true,
			'swipeToSlide':true,
			'mobileFirst':true
		});
		var target = 0;
		var left_num  = 0;
		var right_num = 0;
		var width = $carousel_obj.width();
		var active_width = 0;
		var right_width = 0;
		var left_width = 0;
		var item_width = [];
		var i = 0;
		$carousel_obj.find('._item').each(function(e){
			i++;
			var left_margin = parseInt($(this).css('margin-left').replace('px' ,''));
			var right_margin = parseInt($(this).css('margin-right').replace('px' ,''));
			var _item_width = $(this).outerWidth()+left_margin+right_margin;
			item_width.push(_item_width);
			if(target > 0){
				right_width += _item_width;
				right_num++;
			}
			if($(this).hasClass('active')){
				target = i;
				active_width = _item_width;
			}
			if(target < 1){
				left_width += _item_width;
				left_num++;
			}
		});
		var new_target = target-1;
		if(right_width < width){
			item_width.reverse();
			var target_width = active_width;
			var j = 1;
			$.each(item_width,function(e,_width){
				target_width += _width;
				if(target_width > width){
					new_target = target-j+1;
					return false;
				}
				j++;
			});
			if(target_width < width)
				new_target = 0;
		}
		if(left_width+active_width < 100){
			new_target = 0;
		}else if(right_width > width){
			new_target = new_target-1;
		}
		$carousel_obj.slick('slickGoTo',new_target);
	};
	init($carousel_wrap_obj);
};