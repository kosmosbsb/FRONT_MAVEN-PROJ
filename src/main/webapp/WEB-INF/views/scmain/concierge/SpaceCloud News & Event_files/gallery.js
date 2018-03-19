var SLIDE_RESIZE = function(){
	var $el, $container;
	var data;
	var max_width,ratio;
	var slideWidgetResize =function (){
		var width = $container.width();
		if(width > max_width)
			width = max_width;
		var height = width*ratio;
		if(height == 0)
			height = 550;
		$container.height(height);
	};
	var carouselResize = function(){
		if(data.cnt>1){
			var owl = $el.data('owlCarousel');
			owl.onResize();
		}
	};
	var setRatio = function (r){
		ratio = r;
	};
	var init = function(d){
		data = d;
		$el = $('#gallery_'+data.code);
		$container = $('#'+data.code+' ._gallery_wrap');
		max_width = data.max_width;
		ratio = data.ratio;
		if(data.cnt>1){
			$el.owlCarousel({
				animateIn : data.animate_in,
				animateOut : data.animate_out,
				loop : true,
				smartSpeed : 700,
				autoplayTimeout : 4000,
				nav : data.show_next_prev,
				autoplay : true,
				dots : data.show_paging,
				navText : ["", ""],
				items : 1
			});
		}

		slideWidgetResize();

		$(window).off('resize.'+data.code)
			.on('resize.'+data.code,function(){
				slideWidgetResize();
			});
	};
	return {
		'init' : function(d){
			init(d);
		},
		'slideWidgetResize' : function(){
			slideWidgetResize();
		},
		'carouselResize' : function(){
			carouselResize();
		},
		'setRatio' : function(r){
			setRatio(r);
		}
	}
};


var GALLERY2 = function(){
	var code;
	var $list_wrap;
	var $org_html;
	var old_item_cnt = 0;
	var change_timer = setTimeout(function(){},1);
	var current_window_width;
	var ratio;
	var max_width;
	var option = {
	};
	var type_data = {
	};
	var mobile_section;
	var org_grid_gutter;
	var show_more_status = false;
	var show_text = false;
	var init = function(_c,data,_type_data,c_idx){
		option = $.extend(option,data);
		org_grid_gutter = option.grid_gutter;
		type_data = $.extend(type_data,_type_data);
		code = _c;
		$list_wrap = $('#container_'+code);
		var $section_obj = $list_wrap.closest('div[doz_type=section]');
		mobile_section = $section_obj.attr('doz_mobile_section') == 'Y';
		current_window_width = $(window).width();
		$org_html = $list_wrap.clone(false);
		//갤러리 로드시 텍스트는 가려진 상태로 시작(갤러리 완성후 출력)
        if(type_data['type'] != 'masonry'){
        	$list_wrap.find('._text_wrap').hide();
        }else{
            show_text = true;
		}
		$list_wrap.imagesLoaded()
			.always(function(){
				runLightGallery(c_idx);
			});
		listResize();
		var windowWidth = $(window).width();

		slideHeightResize();

		$(window).off('resize.'+code)
			.on('resize.'+code,function(){
				//if(navigator.userAgent.match(/iPhone|iPad|iPod/i)){
					if ($(window).width() != windowWidth) {
						windowWidth = $(window).width();
					}else{
						return;
					}
				//}
				slideHeightResize();
				clearTimeout(change_timer);
				change_timer = setTimeout(function(){
					listResize();
				},1000);
			});

		$('body').off('gridChange.'+code).on('gridChange.'+code,function(){
			$(window).trigger('gallery_width.'+code);
		});

		$('#'+code +' ._more_btn').on('click',function(){
			showMore();
		});
	};

	var setRatio = function (r){
		option.slide_ratio = r;
	};
	var slideHeightResize =function (){
		if(type_data['use_height']!='Y'){
			$list_wrap.height('auto');
			return;
		}
		setTimeout(function(){
			var width = $list_wrap.width();
			if(width > max_width)
				width = max_width;
			var height = width*option.slide_ratio;
			if(height == 0)
				height = 550;
			$list_wrap.parent().height(height);
		},40);

	};

	var carouselResize = function(){
		if($list_wrap.find('._item').length>1){
			var owl = $list_wrap.data('owlCarousel');
			owl.onResize();
		}
	};

	var runLightGallery = function(c_idx){
		if(type_data['sub_type']=='slide_01')
			return;
		$list_wrap.lightGallery({
			selector: '._lightbox_item',
			thumbnail: true,
			animateThumb: false,
			autoplayControls: false,
			// hash: false,
			swipeThreshold : 20,
			showThumbByDefault: false,
			mode: 'lg-fade'
		});
		//$list_wrap.find('._text_wrap').show();
		var current_idx = parseInt(c_idx);
		if(current_idx>0){
			showLightGallery(current_idx);
		}
	};
	
	var showLightGallery = function(idx){
		
		$('#gal_item_'+idx).click();
	};
	
	var runMasonry = function(){
		$list_wrap.on( 'layoutComplete', function() {
			$list_wrap.css('visibility','visible');
		});
		$list_wrap.masonry({
			itemSelector: '._item'
		});
		$list_wrap.find('._lazy_img').lazyload({
			effect: 'fadeIn',
			load: function() {
			}
		});
	};

	var runSlide = function(item_cnt){
		if(type_data['show_slide_wrap'] != 'Y')
			return;


		if(old_item_cnt == item_cnt)
			return;

		if(typeof $list_wrap.data('owlCarousel') != 'undefined'){
			$list_wrap.data('owlCarousel',false);
			$list_wrap.empty();
			$list_wrap.off();
			$list_wrap.unbind();
			$.each($org_html.find('._item'),function(e,$_item){
				$list_wrap.append($_item);
			});
			$org_html = $list_wrap.clone(false);
		}


		old_item_cnt = item_cnt;
		var mobile_cnt = item_cnt;
		var pc_cnt = item_cnt;

		mobile_cnt  = type_data['max_col'] <=1 ? 1 : mobile_cnt;
		pc_cnt  = type_data['max_col'] <=1 ? 1 : pc_cnt;

		if(type_data['max_col'] > 1){
			$list_wrap.find('._item').css({'padding' : option.grid_gutter + 'px'});
		}

		var change_animate_list = {
			'slide' : {
				'name' : 'Slide',
				'in' : false,
				'out' : false
			},
			'fade' : {
				'name' : 'Fade',
				'in' : 'fadeIn',
				'out' : 'fadeOut'
			},
			'fadedown' : {
				'name' : 'Fade Down',
				'in' : false,
				'out' : 'fadeOutDown'
			},
			'slidedown' : {
				'name' : 'Slide Down',
				'in' : 'slideInDown',
				'out' : 'slideOutDown'
			},
			'slidedown2' : {
				'name' : 'Slide Down2',
				'in' : false,
				'out' : 'slideOutDown'
			}
		};
		if($list_wrap.find('._item').length>1){
			$list_wrap.owlCarousel({
				'animateIn' : change_animate_list[option['effect']]['in'],
				'animateOut' : change_animate_list[option['effect']]['out'],
				'loop' : option['effect_loop']=='Y',
				'smartSpeed' : option['effect_time']*1000,
				'autoplayTimeout' : option['effect_wait']*1000,
				'nav' : option['show_next_prev']=='Y',
				'autoplay' : option['auto_change']=='Y',
				'dots' : option['show_paging']=='Y',
				'navText' : ["", ""],
				'responsive':{
					0:{
						'items':mobile_cnt,
						'nav':false
					},
					600:{
						'items':pc_cnt,
						'nav':option['show_next_prev']=='Y'
					}
				}
			});
		}
		imgHeight();

	};

	var listResize = function(){
		$list_wrap.imagesLoaded()
			.always(function(){
				var window_width = $(window).width();
				if($('body').hasClass('device_type_m'))
					window_width = 370;
				if(window_width <= 991)
					option.grid_gutter = org_grid_gutter/2;
				$list_wrap.css({'margin':'0 -'+option.grid_gutter+'px'});

				var cnt = parseInt(option.grid_col_count);
				var inner_width = $list_wrap.width();

				//var item_cnt = Math.floor(inner_width/option.grid_width);
				//var width = Math.floor(inner_width / item_cnt);
				if(window_width <= 991 && !mobile_section){
					if(typeof option.grid_mobile_col_count == "undefined")
						cnt = 2;
					else
						cnt = parseInt(option.grid_mobile_col_count);
				}else{
					if(type_data['type'] == 'slide'){
						inner_width = $list_wrap.parent().width();
					}else{
						inner_width = $list_wrap.width();
					}
					if(option.grid_extend_fix != 'Y'){
						var s_width = (option.max_width - (option.document_margin * 2)) + option.grid_gutter * 2;
						var item_max = s_width - ((cnt - 1) * parseInt(option.grid_gutter));
						var grid_width = Math.floor(item_max / cnt);
						var current_width = Math.floor((inner_width - ((cnt - 1) * parseInt(option.grid_gutter))) / cnt);
						if(current_width > grid_width){
							cnt = Math.floor(inner_width / grid_width);
						}
					}
				}
				var width = Math.floor(inner_width / cnt);
				if(type_data['type'] == 'grid'){
					$list_wrap.find('._item').css({'padding' : option.grid_gutter + 'px'});
					runColSize(cnt);
				}else if(type_data['type'] == 'masonry'){
					$list_wrap.find('._item').css({'width' : width, 'padding' : option.grid_gutter + 'px'});
					runMasonry();
				}
				runSlide(cnt);

				//한번 보여진 텍스트는 그다음부터 show 처리안하도록
				if(!show_text){
					$list_wrap.find('._text_wrap').show();
					show_text = true;
				}
			});



	};

	var runColSize = function(col_cnt){
		var i = 1;
		var $_row = $('<div />').addClass('_gallery_row gallery_row tabled');
		var is_append = false;
		$list_wrap.find('._dummy_item').remove();
		var $item = $list_wrap.find('._item');

		var item_count = $item.length;
		var max_count = col_cnt * parseInt(option['grid_row_count']);
		if(parseInt(option['grid_row_count']) <= 0){
			max_count = 99999999;
		}
		if(type_data['type'] == 'grid'){
			$item.each(function(e,$_obj){
				if(e < max_count || show_more_status){
					showItem($(this));
				}else
					hideItem($(this));
			});
		}


		$item.each(function(e,$_obj){
			$_row.append($_obj);
			is_append = false;
			if(i % col_cnt == 0){
				$list_wrap.append($_row);
				is_append = true;
				$_row = $('<div />').addClass('_gallery_row gallery_row tabled');
			}
			i++;
		});

		if(!is_append){
			var $tmp_item = $_row.find('._item');
			if($tmp_item.length >0 ){
				if($tmp_item.length < col_cnt){
					var remain_cnt = col_cnt - $tmp_item.length;
					for(var i = 0; i <remain_cnt; i++){
						var $dummy_col = $('<div/>').addClass('dummy_col item_gallary _item _dummy_item');
						$_row.append($dummy_col);
					}
				}
				$list_wrap.append($_row);
			}
		}
		$list_wrap.find('._gallery_row').each(function(){
			var $tmp_item = $(this).find('._item');
			if($tmp_item.length ==0 ){
				$(this).remove();
			}
		});

		//$list_wrap.find('._item').css('width' , percent+'%');
		imgHeight();
	};


	var imgHeight = function(){
		if(type_data['show_ratio_wrap'] == 'Y'){
			var height = Math.ceil($list_wrap.find('._img_wrap').eq(0).width() / (option.img_ratio / 100));
			 $list_wrap.find('._img_wrap').css({'min-height':height});
			if(type_data['sub_type'] == 'slide_02'){
				$list_wrap.find('._img_wrap').height(height);
			}
			if(type_data['is_hover_text'] == 'Y'){
				$list_wrap.find('._text_wrap').height(height);
			}
		}
		if(type_data['use_masonry'] == 'Y'){
			runMasonry();
		}
	};

	
	var showMore = function(){
		$list_wrap.find('._item_hide').each(function(){
			showItem($(this));
		});
		show_more_status = true;
	};
	var showItem = function($_obj){
		$_obj.show();
		var _url = $_obj.find('._img_wrap').data('bg');
		$_obj.find('._img_wrap').css('background-image',_url);
		$_obj.removeClass('_item_hide');
		if($list_wrap.find('._item_hide').length == 0)
			$('#'+code +' ._more_btn').hide();

	};
	var hideItem = function($_obj){
		$_obj.hide();
		$_obj.addClass('_item_hide');
		if($list_wrap.find('._item_hide').length > 0)
			$('#'+code +' ._more_btn').show();
	};


	return {
		'init' : function(c,d,t,c_idx){
			init(c,d,t,c_idx);
		},
		'listResize' : function(){
			listResize();
		},
		'setRatio' : function(r){
			setRatio(r);
		},
		'slideWidgetResize' : function(){
			slideHeightResize();
		},
		'carouselResize' : function(){
			carouselResize();
		},
		'showMore' : function(){
			showMore();
		},
		'showLightGallery' : function(idx){
			showLightGallery(idx);
		}
	}
};