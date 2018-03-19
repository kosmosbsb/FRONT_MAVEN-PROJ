var SITE_SHOP_DETAIL = function(){

	var $selected_options;
	var $prod_detail;
	var $prod_detail_content_mobile;
	var $prod_detail_content_tab_mobile;
	var $prod_detail_wish_count;
	var $prod_detail_wish_count_mobile;
	var $prod_image_list;
	var $prod_image_list_rolling;
	var $prod_goods_form;
	var $add_cart_alarm;
	var $deliv_visit_wrap;
	var $options;
	var selected_options = []; /** [ {options:[{option_code:, value_code:, value_name:}], price:, count:, require:} ] */
	var selected_require_options = []; /** [ { value_type:SELECT(선택형)/INPUT(입력형), option_code:, value_code:, value_name:  } ] */
	var require_option_count = 0;
	var current_prod_idx = 0;
	var prod_price = 0;
	var order_count = 0;
	/** 구매할 수량 (옵션이 없는 경우에만)(*/
	var isComplete = false;
	var current_content_tab = '';
	/** detail,review,qna*/
	var isUseNpMobile = false;
	/** 모바일 네이버페이 사용 유무*/
	var $deliv_type = '';
	var $deliv_pay_type = '';
	/** 네이버페이 국가 제한 */
	var deliv_country = '';

	var add_order_progress_check = false;

	var initDetail = function(prodIdx, price, requireOptionCnt, use_np_mobile){
		$prod_image_list = $("#prod_image_list");
		$prod_image_list_rolling = $("#prod_image_list").find("div.owl-carousel");
		$prod_goods_form = $("#prod_goods_form");
		$selected_options = $('#prod_selected_options');
		$options = $('#prod_options');
		$prod_detail = $('#prod_detail');
		$prod_detail_content_mobile = $('#prod_detail_content_mobile');
		$prod_detail_content_tab_mobile = $('#prod_detail_content_tab_mobile');
		$prod_detail_wish_count = $('#prod_detail_wish_count');
		$prod_detail_wish_count_mobile = $('#prod_detail_wish_count_mobile');
		$add_cart_alarm = $('#shop_detail_add_cart_alarm');
		$deliv_visit_wrap = $('#deliv_visit_wrap');
		current_prod_idx = prodIdx;
		prod_price = price;
		require_option_count = parseInt(requireOptionCnt);
		selected_options = [];
		selected_require_options = [];
		isComplete = true;
		isUseNpMobile = use_np_mobile;
	};

	/**
	 * 특정상품 위시리스트 추가 처리
	 * @param prod_code
	 */
	var addProdWish = function(prod_code){
		$.ajax({
			type : 'POST',
			data : {'prod_code' : prod_code},
			url : ('/shop/add_prod_wish.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					if(res.res == 'add'){
						FB_PIXEL.AddToWishlist();
						MOBON.AddToWish();
						$prod_detail_wish_count.parent().addClass('active');
						$prod_detail_wish_count_mobile.parent().addClass('active');
					}else if(res.res == 'delete'){
						$prod_detail_wish_count.parent().removeClass('active');
						$prod_detail_wish_count_mobile.parent().removeClass('active');
					}
					$prod_detail_wish_count.text(res.wish_cnt);
					$prod_detail_wish_count_mobile.text(res.wish_cnt);
				}else
					alert(res.msg);
			}
		});
	};
	/**
	 * 특정상품 위시정보 가져오기 (내 위시여부,위시갯수)
	 * @param prod_code
	 */
	var getProdWish = function(prod_code){
		$.ajax({
			type : 'POST',
			data : {'prod_code' : prod_code},
			url : ('/shop/get_prod_wish.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
				}else
					alert(res.msg);
			}
		});
	};
	/**
	 * 두개의 옵션 데이터가 같은지 확인 (순서 무관)
	 * @param options1 [ {option_code: option_value} ]
	 * @param options2 [ {option_code: option_value} ]
	 */
	var isSameOptionList = function(options1, options2){
		if(options1.length == options2.length){
			var isSame = true;
			var exist = false;
			$.each(options1, function(no, data){
				exist = false;
				$.each(options2, function(no2, data2){
					if(data.option_code == data2.option_code){
						if (data.value_code!=''){
							if(data.value_code == data2.value_code){
								exist = true;
								return false;
							}
						}else{
							if(data.value_name== data2.value_name){
								exist = true;
								return false;
							}
						}
					}
				});
				if(!exist){
					isSame = false;
					return false;
				}
			});
			return isSame;
		}else{
			return false;
		}
	};

	/**
	 * 상품 이미지 롤링 시작
	 */
	var startProdImageRolling = function(){

		var items = $prod_image_list.find('._item');


		var is_dots = false;
		is_dots = items.length > 1 ? true : false;


		$prod_image_list_rolling.owlCarousel({
			dots:is_dots,
			navigation : true,
			slideSpeed : 300,
			paginationSpeed : 400,
			singleItem : true,
			animateOut : 'fadeOut',
			items : 1,
			onChanged : function(){
				var owl = $prod_image_list_rolling.data('owlCarousel');
				var current = 0;
				if(typeof owl !== "undefined") current = owl._current;
				var li_list = $prod_image_list.find('li.owl-dot');
				li_list.find('a').removeClass('active');
				li_list.eq(current).find('a').addClass('active');
				if(items.length > 1 ){
					$prod_goods_form.find('header').css('margin-top',0)
				}
			}
		});
	};

	/**
	 * 상품 이미지 롤링 특정 위치 이동
	 * @param no
	 */
	function changeProdImageRolling(no){
		var owl = $prod_image_list_rolling.data('owlCarousel');
		if(typeof owl !== "undefined"){
			owl.to(no);
		}
	}

	var loadOption = function(type, prod_idx){
		$.ajax({
			type : 'POST',
			data : {'type' : type, 'prod_idx' : prod_idx, 'selected_require_options' : selected_require_options},
			url : ('/shop/load_option.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					$options.html(result.option_html);
					if(IS_MOBILE){
						addEventMobileOptionInput();
					}
				}else{
					alert(result.msg);
				}
			}
		});
	};

	/**
	 * 선택형 필수 옵션 선택
	 * @param type cart (장바구니변경), prod(상품상세)
	 * @param option_code
	 * @param value_code
	 */
	var selectRequireOption = function(type, prod_idx, option_code, value_code, value_name, success){
		var data = {'value_type':'SELECT', 'option_code' : option_code, 'value_code' : value_code, 'value_name' : value_name};
		var no = findSelectedRequireOption(option_code);
		if(no == -1){
			if(value_code == '') return;
			selected_require_options.push(data);
			/** 처음 선택된 옵션인 경우 새로 추가*/
		}else{
			if(value_code == ''){
				/** 옵션 삭제 */
				selected_require_options.splice(no, (selected_require_options.length - no));
			}else{
				selected_require_options[no] = data;
				/** 이미 선택된 옵션인 경우 기존 값 교체 */
				if(no < selected_require_options.length - 1){
					selected_require_options.splice(no + 1, (selected_require_options.length - (no + 1)));
				}
			}
		}
		if( selected_require_options.length == require_option_count){
			/** 필수 옵션이 모두 선택되었을 경우*/
			selectOption(prod_idx, selected_require_options, true, 1, function(){
				selected_require_options = [];
				loadOption(type, prod_idx);
				success();
			}, function(msg){
				alert(msg);
			});
		}else{
			/** 필수옵션 선택이 아직 끝나지 않았을 경우 옵션 재로드 */
			loadOption(type, prod_idx);
		}
	};

	/**
	 * 입력형 필수 옵션 변경시 처리
	 * @param type cart (장바구니변경), prod(상품상세)
	 */
	var changeRequireInputOption = function(type, prod_idx, option_code, msg, success){
		var data = {'value_type':'INPUT', 'option_code' : option_code, 'value_code':'', 'value_name' : msg};
		var no = findSelectedRequireOption(option_code);
		if(no == -1){
			if(msg == '') return;
			selected_require_options.push(data);
			/** 처음 입력한 옵션인 경우 새로 추가*/
		}else{
			if(msg == ''){
				/** 입력형 옵션 삭제 */
				selected_require_options.splice(no, (selected_require_options.length - no));
			}else{
				/** 기존값 교체 */
				selected_require_options[no] = data;
			}
		}
		if( selected_require_options.length == require_option_count){
			/** 필수 옵션이 모두 선택되었을 경우*/
			selectOption(prod_idx, selected_require_options, true, 1, function(){
				selected_require_options = [];
				loadOption(type, prod_idx);
				success();
			}, function(msg){
				alert(msg);
			});
		}
	};

	/**
	 * 옵션 선택
	 * @param options [ {value_type: SELECT/INPUT, option_code:, value_code:, value_name:} ]
	 */
	var selectOption = function(prod_idx, options, require, count, success, failed){
		//$('.npay_btn_pay').attr('onclick', 'event.cancelBubble=true');
		var btn_buy_onclick_temp = $('._btn_buy').attr('onclick');
		var btn_cart_onclick_temp = $('._btn_cart').attr('onclick');
		$('._btn_buy').attr('onclick', 'event.cancelBubble=true');
		$('._btn_cart').attr('onclick', 'event.cancelBubble=true');
		$.ajax({
			type : 'POST',
			data : {'prod_idx' : prod_idx, 'options':options, 'require':(require?'Y':'N'), 'count':count},
			url : ('/shop/select_option.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				console.log(result);
				if(result.msg == 'SUCCESS'){
					prod_price = result.prod_price;
					var no = findSelectedOption(options);
					if(no == -1){
						selected_options.push(result.selected_option);
						/** 처음 선택된 옵션인 경우 새로 추가*/
						success();
					}else{
						failed(LOCALIZE.설명_이미선택된옵션입니다());
					}
				}else{
					failed(result.msg);
				}
				$('._btn_buy').attr('onclick', btn_buy_onclick_temp);
				$('._btn_cart').attr('onclick', btn_cart_onclick_temp);
			}
		});
	};

	/**
	 * 선택된 옵션 삭제
	 * @param optName
	 * @param success
	 */
	var removeSelectedOption = function(optNo, success){
		if(optNo <= (selected_options.length - 1)){
			selected_options.splice(optNo, 1);
			success();
		}
	};

	/**
	 * 해당 옵션이 현재 선택되어있는지 확인
	 * @param options [{option_code:, value_code:, value_name:}]
	 * */
	var findSelectedOption = function(options){
		var found_no = -1;
		$.each(selected_options, function(no, data){
			if(isSameOptionList(data.options, options)){
				found_no = no;
				return false;
			}
		});
		return found_no;
	};

	/**
	 * 해당 필수 옵션이 현재 선택되어있는지 확인
	 * @param optName
	 */
	var findSelectedRequireOption = function(option_code){
		var foundNo = -1;
		$.each(selected_require_options, function(no, data){
			if(data.option_code == option_code){
				foundNo = no;
				return false;
			}
		});
		return foundNo;
	};

	var increaseOptionCount = function(optNo, success){
		var $curCount = $('#prdOption' + optNo).find('input._count');
		var curCount = $curCount.val();
		if(isNaN(curCount))
			curCount = 1;
		else
			curCount = parseInt(curCount) + 1;
		selected_options[optNo].count = curCount;
		success();
	};

	var decreaseOptionCount = function(optNo, success){
		var $curCount = $('#prdOption' + optNo).find('input._count');
		var curCount = $curCount.val();
		if(isNaN(curCount))
			curCount = 1;
		else
			curCount = parseInt(curCount) - 1;
		if(curCount < 1) curCount = 1;
		selected_options[optNo].count = curCount;
		success();
	};

	var changeOptionCount = function(optNo, optCount, success){
		if(isNaN(optCount))
			optCount = 1;
		else
			optCount = parseInt(optCount);
		if(optCount < 1) optCount = 1;
		selected_options[optNo].count = optCount;
		success();
	};

	var increaseOrderCount = function(type, success){
		var o = $prod_detail.find('input._order_count_' + type);
		var curCount = o.val();
		if(isNaN(curCount))
			curCount = 1;
		else
			curCount = parseInt(curCount) + 1;
		o.val(curCount);
		order_count = curCount;
		success();
	};

	var decreaseOrderCount = function(type, success){
		var o = $prod_detail.find('input._order_count_' + type);
		var curCount = o.val();
		if(isNaN(curCount))
			curCount = 1;
		else
			curCount = parseInt(curCount) - 1;
		if(curCount < 1) curCount = 1;
		order_count = curCount;
		o.val(order_count);
		success();
	};

	var changeOrderCount = function(type, count, success){
		if(isNaN(count))
			count = 1;
		else
			count = parseInt(count);
		if(count < 1) count = 1;
		order_count = count;
		$prod_detail.find("input._order_count_" + type).val(order_count);
		success();
	};

	/**
	 * 옵션선택화면갱신
	 * type : prod (상품상세화면용), cart (장바구니 수량 변경용
	 */
	var updateSelectedOptions = function(type){
		var html = '';
		var total_price = 0;
		var total_count = 0;
		var option_price = 0;

		if(require_option_count == 0){
			html += '<div class="opt_block hidden-lg hidden-sm hidden-md no-border" style="height: auto; "> ';
			html += '<div class="col-control row"> ';
			html += '<div class="col-xs-12">';
			html += '<span class="option_title text-bold inline-blocked" style="margin-bottom: 7px">' + LOCALIZE.타이틀_수량() + '</span> ';
			html += '</div> ';
			html += '<div class="col-xs-12 option_btn_wrap" style="top:0;"> ';
			html += '<div class="option_btn_tools" style="float: none;"> ';
			if(type == 'prod')
				html += '<a href="javascript:;" onclick="SITE_SHOP_DETAIL.decreaseOrderCount(\'mobile\', function(){SITE_SHOP_DETAIL.updateSelectedOptions(\'' + type + '\')})"> ';
			else if(type == 'cart')
				html += '<a href="javascript:;" onclick="SITE_SHOP_CART.changeCartDecrease(\'mobile\')"> ';

			html += '<i class="btl bt-minus"></i> ';
			html += '</a> ';
			if(type == 'prod'){
				html += '<input type="text" value="' + order_count + '" class="form-control _order_count_mobile" onchange="SITE_SHOP_DETAIL.changeOrderCount(\'mobile\', $(this).val(), function(){SITE_SHOP_DETAIL.updateSelectedOptions(\'' + type + '\')})"> ';
				html += '<a href="javascript:;" onclick="SITE_SHOP_DETAIL.increaseOrderCount(\'mobile\', function(){SITE_SHOP_DETAIL.updateSelectedOptions(\'' + type + '\')})"> ';
			}else if(type == 'cart'){
				html += '<input type="text" value="' + order_count + '" class="form-control _order_count_mobile" onchange="SITE_SHOP_CART.changeCartOrderCount(\'mobile\', $(this).val())"> ';
				html += '<a href="javascript:;" onclick="SITE_SHOP_CART.changeCartIncrease(\'mobile\')"> ';
			}
			html += '<i class="btl bt-plus"></i> ';
			html += '</a> ';
			html += '</div> ';
			html += '</div> ';
			html += '</div> ';
			html += '</div> ';
			total_count = order_count;
			total_price = order_count * prod_price;
		}
		$.each(selected_options, function(no, data){
			if(data.require){ /* 필수옵션인경우 총 수량 증가*/
				total_count += parseInt(data.count);
			}
			option_price = parseFloat(data.price) * parseFloat(data.count);
			total_price += option_price;
			var html2 = [];
			$.each(data.options, function(no2, data2){
				html2.push(RemoveTag(data2.value_name));
			});

			if(type == 'cart'){
				if(no == 0)
					html += '<div class="opt_block row" id="prdOption' + no + '">';
				else
					html += '<div class="opt_block row middle" id="prdOption' + no + '">';
			}else{
				if(no == 0)
					html += '<div class="opt_block" id="prdOption' + no + '">';
				else
					html += '<div class="opt_block middle" id="prdOption' + no + '">';
			}
			html += '<div class="tabled full-width text-13">';
			html += '<div class="table-cell vertical-middle"> <span class="text-default-dark">' + html2.join(' / ') + '</span> </div>';
			html += '<div class="table-cell vertical-middle option_btn_wrap"><div class="option_btn_tools">';
			if(type == 'cart'){
				html += ' <a href="javascript:;" onclick="SITE_SHOP_CART.changeCartItemDecrease(' + no + ')"> <i class="btl bt-minus"></i> </a>';
				html += ' <input type="text" value="' + data.count + '" class="form-control count _count" onchange="SITE_SHOP_CART.changeCartItemCount(' + no + ', $(this).val())" />';
				html += ' <a href="javascript:;" onclick="SITE_SHOP_CART.changeCartItemIncrease(' + no + ')">';
			}else{
				html += ' <a href="javascript:;" onclick="SITE_SHOP_DETAIL.decreaseOptionCount(' + no + ',\'prod\')"> <i class="btl bt-minus"></i> </a>';
				html += ' <input type="text" value="' + data.count + '" class="form-control count _count" onchange="SITE_SHOP_DETAIL.changeOptionCount(' + no + ', $(this).val(),\'prod\')" />';
				html += ' <a href="javascript:;" onclick="SITE_SHOP_DETAIL.increaseOptionCount(' + no + ',\'prod\')">';
			}
			html += ' <i class="btl bt-plus"></i> </a>';
			html += '</div> </div>';
			html += '<div class="table-cell vertical-middle align_r width-3">';
			html += ' <span>' + LOCALIZE.getCurrencyFormat(option_price) + '</span>';
			if(type == 'cart'){
				html += ' <a href="javascript:;" onclick="SITE_SHOP_CART.changeCartItemRemove(' + no + ')">';
			}else{
				html += ' <a href="javascript:;" onclick="SITE_SHOP_DETAIL.removeSelectedOption(' + no + ',\'prod\')">';
			}
			html += ' <i class="btl bt-times-circle"></i> </a>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
		});

		/* 총수량,총금액 */
		if(selected_options.length > 0){
			if(type == 'cart')
				html += '<div class="opt_block row total bottom">';
			else
				html += '<div class="opt_block total bottom">';
			html += '<div class="col-xs-4 vertical-middle"> <span class="text-default-dark text-13">' + LOCALIZE.타이틀_총수량(total_count) + '</span> </div>';
			html += '<div class="col-xs-8 vertical-middle"> <p class="align_r text-default-dark text-13">';

			if (LOCALIZE.getCurrency()=='KRW')
				html += LOCALIZE.타이틀_총금액('<span class="text-brand vertical-middle">' + money_format(total_price) + '<em>원</em></span>');
			else
				html += LOCALIZE.타이틀_총금액('<span class="text-brand vertical-middle">' + LOCALIZE.getCurrencyFormat(total_price) + '</span>');

			html += ' </p> </div>';
			html += '</div>';
		}
		$selected_options.html(html);
	};

	/**
	 * 장바구니에 추가
	 */
	var addCart = function(callback){
		$.ajax({
			type : 'POST',
			data : {'prodIdx' : current_prod_idx,
					'options' : selected_options,
					'orderCount' : order_count,
					'deliv_type' : $deliv_type,
					'deliv_pay_type': $deliv_pay_type
			},
			url : ('/shop/add_cart.cm'),
			dataType : 'json',
			success : function(result){
				if(result.msg == 'SUCCESS'){
					NP_LOG.AddToCart();
					FB_PIXEL.AddToCart(result.prod_id);
					MOBON.AddToCart();
					ACE_COUNTER.AM_Cart(result.prod_id, result.prod_name, result.prod_count);
					if(result.daum_ddn_switch){
						DAUM_DDN.AddToCart(result.prod_id , result.total_price, result.prod_count);
					}
					callback();
				}else{
					alert(result.msg);
				}
			}
		});
	};

	/**
	 * 바로 주문하기  추가
	 */
	var addOrder = function(type, backurl, callback){
		add_order_progress_check = true;
		$.ajax({
			type : 'POST',
			data : {
				'backurl' : backurl,
				'prodIdx' : current_prod_idx,
				'optDataList' : selected_options,
				'orderCount' : order_count,
				'type' : type,
				'deliv_type' : $deliv_type,
				'deliv_pay_type': $deliv_pay_type,
				'deliv_country' : $(".countryList").val()
			},
			url : ('/shop/add_order.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					callback(result);
				}else{
					add_order_progress_check = false;
					alert(result.msg);
				}
			}
		});
		if(IS_MOBILE){
			console.log($options.find('input'));
		}
	};
	/**
	 * 네이버페이지 찜하기  등록
	 */
	var addNPayWish = function(){
		$.ajax({
			type : 'POST',
			data : {'prod_idx_list' : [current_prod_idx]},
			url : ('/shop/add_npay_wish.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					if(result.mobile == 'Y')
						window.location.href = result.npay_url;
					else
						window.open(result.npay_url, "", "scrollbars=yes,width=400,height=267");
				}else{
					alert(LOCALIZE.설명_네이버페이찜등록실패(escape_javascript(result.msg)));
				}
			}
		});
	};
	/**
	 * 모바일에서 구매하기 클릭시 옵션 표시 처리
	 */
	var showMobileOptions = function(){
		$prod_detail.addClass('open');
	};

	/**
	 * 모바일에서 구매하기 클릭시 옵션 숨기기 처리
	 */
	var hideMobileOptions = function(){
		$prod_detail.removeClass('open');
	};

	/**
	 * 상세정보 탭 변경 처리
	 * @param type
	 */
	var changeContentTab = function(type, r_p, q_p, paging_on){
		if(current_content_tab != ''){
			$prod_detail_content_tab_mobile.find('a._' + current_content_tab).removeClass('on');
		}
		current_content_tab = type;
		$prod_detail_content_tab_mobile.find('a._' + type).addClass('on');
		if(type == 'detail'){
			$.ajax({
				type : 'POST',
				data : {'prod_idx' : current_prod_idx},
				url : ('/shop/prod_detail.cm'),
				dataType : 'json',
				cache : false,
				success : function(result){
					if(result.msg == 'SUCCESS'){
						if(result.content == ''){
							$prod_detail_content_mobile.html('<div style="text-align: center; padding: 50px 0;"><div class="body_font_color_40" style="font-size: 18px; margin:30px"><div> </div>');
						}else{
							$prod_detail_content_mobile.html(result.content.replace(/<img class="fr-dii" src=/gi, '<img class="fr-dii" data-original='));		/* 상품 상세페이지 lazy load 적용, 기본 /img/no-image.png 는 한번만 불러옴 */
							$prod_detail_content_mobile.html($prod_detail_content_mobile.html().replace(/<img class="fr-dii fr-draggable" src=/gi, '<img class="fr-dii fr-draggable" data-original='));		/* 상품 상세페이지 lazy load 적용, 기본 /img/no-image.png 는 한번만 불러옴 */
							$prod_detail_content_mobile.find('img').lazyload({
								placeholder : '/img/no-image.png',
								thresold : 100,
								effect : "fadeIn"
							});
						}
					}else{
						alert(result.msg);
					}
				}
			});
		}else if(type == 'review'){
			$.ajax({
				type : 'POST',
				data : {'prod_idx' : current_prod_idx, 'review_page' : r_p, 'qna_page' : q_p},
				url : ('/shop/prod_review_mobile_html.cm'),
				dataType : 'html',
				cache : false,
				success : function(result){
					$prod_detail_content_mobile.html(result);
					if(paging_on) document.getElementById("tab_offset").scrollIntoView();
				}
			});
		}else if(type == 'qna'){
			$.ajax({
				type : 'POST',
				data : {'prod_idx' : current_prod_idx, 'review_page' : r_p, 'qna_page' : q_p},
				url : ('/shop/prod_qna_mobile_html.cm'),
				dataType : 'html',
				cache : false,
				success : function(result){
					$prod_detail_content_mobile.html(result);
					if(paging_on) document.getElementById("tab_offset").scrollIntoView();
				}
			});
		}
	};

	var hideAddCartAlarm = function(){
		$add_cart_alarm.hide();
	};

	var changeTab = function(type){
		$('._detail_detail_wrap').hide();
		$('._detail_review_wrap').hide();
		$('._detail_qna_wrap').hide();
		$('._detail_'+type+'_wrap').show();
	};

	var countryCodeChange = function(country){
		$.ajax({
			type : 'POST',
			data : {'country':country},
			url : ('/shop/country_code_change.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg != "SUCCESS"){
					alert(result.msg);
				}
			}
		});
	};

	var DetailItemMake = function(idx, change_country, deliv_type, deliv_pay_type){
		$.ajax({
			type : 'POST',
			data : {'idx' : idx,'change_country':change_country,'deliv_type':deliv_type,'deliv_pay_type':deliv_pay_type},
			url : ('/shop/prod_detail_make.cm'),
			dataType : 'html',
			cache : false,
			success : function(result){
				$prod_detail.find('._item_detail_wrap').html(result);
			}
		});
	};

	/**
	 * 모바일 옵션 input클릭시 입력키보드 때문에 css예외처리가 필요하여 클래스 추가.
	 */
	var addEventMobileOptionInput = function(){
		$options.find('input').focus(function(){
			if(!$('body').hasClass('mobile_focus_on')){
				$('body').addClass('mobile_focus_on');
			}
		});
		$options.find('input').blur(function(){
			if($('body').hasClass('mobile_focus_on')){
				$('body').removeClass('mobile_focus_on');
			}
		});
	};

	/**
	 * 쇼핑 카테고리 목록에서 상품 상세페이지 레이어팝업 띄우는 함수
	 */
	var openProdDetailFromShoppingList = function(idx, back_url){
		$.ajax({
			type : 'POST',
			data : {'idx' : idx, 'back_url' : back_url},
			url : ('/shop/prod_detail_from_shopping_list.cm'),
			dataType : 'html',
			cache : false,
			async : true,
			success : function(result){
				$.cocoaDialog.open({type : 'prod_detail_from_shopping_list', custom_popup : result, 'close_block' : true});

				$('.modal_prod_detail_from_shopping_list').find('._modal_close').off('click').on('click', function(){
					$('.modal_prod_detail_from_shopping_list').find('.modal-content').html('');		// close 해도 html 이 남아있어서 스크립트가 재실행이 안 되므로 html 을 삭제시킴
					$.cocoaDialog.close();
				})
			}
		});
	};

	/**
	 * 상품상세 페이지에 뿌려지는 review, qna 의 카운트 가져오기.
	 * @param prod_code
	 */
	var getReviewQnaCount = function(prod_code){
		$.ajax({
			type : 'POST',
			data : {'prod_code' : prod_code},
			url : ('/shop/get_review_qna_count.cm'),
			dataType : 'json',
			cache : false,
			async : true,
			success : function(res){
				$("._review_count_text").text(res.review_count);
				$("._qna_count_text").text(res.qna_count);
			}
		});
	};

	return {
		addProdWish : function(prod_code){
			addProdWish(prod_code);
		},
		/** type (prod/cart) */
		increaseOptionCount : function(optNo, type){
			increaseOptionCount(optNo, function(){
				updateSelectedOptions(type);
			});
		},
		/** type (prod/cart) */
		decreaseOptionCount : function(optNo, type){
			decreaseOptionCount(optNo, function(){
				updateSelectedOptions(type);
			});
		},
		initDetail : function(prodIdx, price, requireOptionCnt, use_np_mobile){
			initDetail(prodIdx, price, requireOptionCnt, use_np_mobile);
		},
		selectOption : function(prod_idx, optList, require, count, success, failed){
			selectOption(prod_idx, optList, require, count, function(){
				success();
			}, function(msg){
				failed(msg);
			});
		},
		removeSelectedOption : function(optNo, type){
			removeSelectedOption(optNo, function(){
				selected_require_options = [];		// 선택된 필수 옵션 초기화
				loadOption(type, current_prod_idx);		// 옵션을 다시 로드함
				updateSelectedOptions(type);
			});
		},
		selectRequireOption : function(type, prod_idx, option_code, value_code, value_name, success){
			selectRequireOption(type, prod_idx, option_code, value_code, value_name, function(){
				success();
			});
		},
		selectOptionalOption : function(prod_idx, option_code, value_code, value_name, success){
			selectOption(prod_idx, [{
				'value_type': 'SELECT',
				'option_code' : option_code,
				'value_code' : value_code,
				'value_name' : value_name
			}], false, 1, function(){
				success();
			}, function(msg){
				alert(msg);
			});
		},
		/** type (prod/cart) */
		changeOptionCount : function(optNo, optCount, type){
			changeOptionCount(optNo, optCount, function(){
				updateSelectedOptions(type);
			});
		},
		addOrder : function(type, backurl){
			if(add_order_progress_check) return false;
			addOrder(type, backurl, function(result){
				if(type == 'npay'){
					if(result.npay_url == '')
						alert(LOCALIZE.설명_네이버페이상품구매실패(escape_javascript(result.errmsg)));
					else{
						if ( !! result.shopping_additional_price_msg ) {
							if ( ! confirm(result.shopping_additional_price_msg + '\n\n' + LOCALIZE.설명_네이버페이를계속해서진행하시겠습니까()) ) {
								return false;
							}
						}

						FB_PIXEL.InitiateCheckout();
						window.location.href = result.npay_url;
					}
				}else{
					FB_PIXEL.InitiateCheckout();
					window.location.href = "/shop_payment/?order_code=" + encodeURIComponent(result.order_code);
				}
			});
		},
		addCart : function(){
			addCart(function(){
				$add_cart_alarm.show();
			});
		},
		updateSelectedOptions : function(type){
			updateSelectedOptions(type);
		},
		getSelectedOption : function(){
			return selected_options;
		},
		changeOrderCount : function(type, count, success){
			return changeOrderCount(type, count, success);
		},
		increaseOrderCount : function(type, success){
			return increaseOrderCount(type, success);
		},
		decreaseOrderCount : function(type, success){
			return decreaseOrderCount(type, success);
		},
		showMobileOptions : function(){
			return showMobileOptions();
		},
		hideMobileOptions : function(){
			return hideMobileOptions();
		},
		changeContentTab : function(type, r_p, q_p, paging_on){
			return changeContentTab(type, r_p, q_p, paging_on);
		},
		changeProdImageRolling : function(no){
			return changeProdImageRolling(no);
		},
		startProdImageRolling : function(){
			return startProdImageRolling();
		},
		setOrderCount : function(count){
			order_count = count;
		},
		getOrderCount : function(){
			return order_count;
		},
		addNPayWish : function(){
			return addNPayWish();
		},
		hideAddCartAlarm : function(){
			return hideAddCartAlarm();
		},
		loadOption : function(type, prod_idx){
			return loadOption(type, prod_idx);
		},
		changeRequireInputOption : function(type, prod_idx, option_code, msg, success){
			changeRequireInputOption(type, prod_idx, option_code, msg, function(){
				success();
			});
		},
		changeTab : function(type){
			changeTab(type);
		},
		countryCodeChange : function(country){
			countryCodeChange(country);
		},
		DetailItemMake : function(idx,change_country,deliv_type,deliv_pay_type){
			return DetailItemMake(idx,change_country,deliv_type,deliv_pay_type);
		},
		addDelivType : function(type){
			$deliv_type = type
		},
		addDelivPayType : function(type){
			$deliv_pay_type = type;
		},
		visitFormMake : function(){
			$deliv_visit_wrap.show()
		},
		openProdDetailFromShoppingList : function(idx, back_url){
			return openProdDetailFromShoppingList(idx, back_url);
		},
		'getReviewQnaCount' : function(prod_code){
			return getReviewQnaCount(prod_code);
		}
	}
}();

var SITE_SHOP_CART = function(){
	var selectedCartItem = [];
	var $cartItemCheckboxList;
	var $cartAllCheckBox;
	var $shop_cart_list;
	var $shop_cart_wish_list;
	var $shop_cart_wish_list_empty;
	var $changeCartItemLayer;
	var $deliv_price;
	var $total_price;
	var $price;
	var $price_sale;

	var currentCartCode = '';
	var currentChangeCartItemCode = '';

	var add_order_progress_check = false;

	var initCart = function(cart_code){
		currentCartCode = cart_code;
		$shop_cart_list = $('#shop_cart_list');
		$changeCartItemLayer = $('#shop_cart_change_layer');
		$shop_cart_wish_list = $('#shop_cart_wish_list');
		$shop_cart_wish_list_empty = $('#shop_cart_wish_list_empty');
		$total_price = $('#cart_main_total_price');
		$price = $('#cart_main_price');
		$price_sale = $('#cart_main_price_sale');
		$deliv_price = $('#cart_main_deliv_price');
	};

	/**
	 * 선택한 항목의 가격 계산
	 */
	var getSelectedPrice = function(){
		$.ajax({
			type : 'POST',
			data : {'item_list' : selectedCartItem},
			url : ('/shop/get_cart_price.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					cartListMake();
				}else
					alert(res.msg);
			}
		});
	};

	/**
	 * 상품 위시리스트 추가 처리
	 * @param cart_item_list
	 */
	var addProdWish = function(cart_item_list){
		$.ajax({
			type : 'POST',
			data : {'type' : 'add', 'cart_item_list' : cart_item_list},
			url : ('/shop/add_prod_wish_cart.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					for(var i = 0; i < cart_item_list.length; i++){
						FB_PIXEL.AddToWishlist();
						$shop_cart_list.find("._wish_status_" + cart_item_list[i]).addClass('check');
					}
					loadProdWishList();
				}else
					alert(res.msg);
			}
		});
	};

	/**
	 * 위시리스트 가져오기
	 * @param prod_code
	 */
	var loadProdWishList = function(){
		$.ajax({
			type : 'POST',
			data : {'type' : 'cart'},
			url : ('/shop/get_prod_wish_list.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					if(res.count > 0){
						$shop_cart_wish_list_empty.hide();
						$shop_cart_wish_list.show().html(res.html);
					}else{
						$shop_cart_wish_list_empty.show();
						$shop_cart_wish_list.hide();
					}
				}else
					alert(res.msg);
			}
		});
	};

	/**
	 * 위시리스트 제거
	 * @param cart_item_list
	 */
	var deleteProdWish = function(cart_item_list){
		$.ajax({
			type : 'POST',
			data : {'type' : 'delete', 'cart_item_list' : cart_item_list},
			url : ('/shop/add_prod_wish_cart.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					for(var i = 0; i < cart_item_list.length; i++){
						$shop_cart_list.find("._wish_status_" + cart_item_list[i]).removeClass('check');
					}
					loadProdWishList();
				}else
					alert(res.msg);
			}
		});
	};

	/**
	 * 위시리스트 제거 (상품코드사용
	 * @param prod_code
	 */
	var deleteProdWishByProdCode = function(prod_code){
		$.ajax({
			type : 'POST',
			data : {'type' : 'delete_prodcode', 'prod_code' : prod_code},
			url : ('/shop/add_prod_wish_cart.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					window.location.reload();
				}else
					alert(res.msg);
			}
		});
	};

	/**
	 * 특정 카트 아이템 삭제
	 */
	var removeCartItem = function(item_codeList){
		$.ajax({
			type : 'POST',
			data : {'item_codeList' : item_codeList},
			url : ('/shop/remove_cart_item.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					window.location.href = "/shop_cart";
				}else{
					alert(result.msg);
				}
			}
		});
	};

	/**
	 * 특정 카트 아이템 삭제
	 */
	var removeCartItemOption = function(item_code, optionNo){
		$.ajax({
			type : 'POST',
			data : {'item_code' : item_code, 'optionNo' : optionNo},
			url : ('/shop/remove_cart_item_option.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					window.location.reload();
				}else{
					alert(result.msg);
				}
			}
		});
	};

	/**
	 * selectedCartItem 토글 처리
	 * @param item_code
	 * @returns {boolean}
	 */
	var toggleSelectCartItem = function(item_code, chk){
		var selNo = -1;
		// if(!chk && selectedCartItem.length == 1){
		// 	return false;
		// }
		$.each(selectedCartItem, function(no, code){
			if(code == item_code){
				selNo = no;
				return false;
			}
		});
		$.ajax({
			type : 'POST',
			data : {'item_code_list' : [item_code], 'is_sel' : (chk ? 'Y' : 'N')},
			url : ('/shop/change_cart_selected.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					if(chk){
						if(selNo == -1)
							selectedCartItem.push(item_code);
					}else{
						if(selNo > -1)
							selectedCartItem.splice(selNo, 1);
					}
					getSelectedPrice();
				}else
					alert(res.msg);
			}
		});
		return true;
	};

	/**
	 * 전체 선택 토글 처리
	 * @param check boolean
	 * @returns {boolean}
	 */
	var toggleAllSelectCartItem = function(chk){
		$cartItemCheckboxList.each(function(){
			if(chk){
				$(this).prop('checked', true);
			}else{
				$(this).prop('checked', false);
			}
			var chkItemCode = $(this).val();
			var selNo = -1;
			$.each(selectedCartItem, function(no, code){
				if(code == chkItemCode){
				selNo = no;
					return false;
				}
			});
			if(chk){
				if(selNo == -1) selectedCartItem.push(chkItemCode);
			}else{
				selectedCartItem = [];
			}
		});
		getSelectedPrice();
	};

	/**
	 * 전체 선택인지 아닌지 체크
	 */
	var toggleAllSelectCk = function(){
		var $cartItemSelectCount = 0;
		$cartItemCheckboxList = $shop_cart_list.find("input._cartItemCheckbox");
		$cartAllCheckBox = $shop_cart_list.find("input._all_check");
		$cartItemCheckboxList.each(function(){
			if($(this).is(":checked") === true){
				$cartItemSelectCount++;
			}
		});
		if($cartItemCheckboxList.length == $cartItemSelectCount){
			$cartAllCheckBox.prop('checked',true);
		}else{
			$cartAllCheckBox.prop('checked',false);
		}
	}

	/**
	 * 카트 전체 주문하기
	 * @param direct true/false (선택유무와 상관없이 바로 주문)
	 */
	var addOrderWithCart = function(type, item_code, backurl, direct){
		if(add_order_progress_check) return false;
		if(currentCartCode == ''){
			alert(LOCALIZE.설명_장바구니가비어있습니다());
			return false;
		}
		var item_code_list = [];
		if(item_code == '')
			item_code_list = selectedCartItem;
		else
			item_code_list = [item_code];

		if ( item_code_list.length <= 0 ) {
			alert(LOCALIZE.설명_주문하실상품을선택해주세요());
			return false;
		}

		add_order_progress_check = true;
		$.ajax({
			type : 'POST',
			data : {
				'type' : type,
				'cart_code' : currentCartCode,
				'item_code_list' : item_code_list,
				'backurl' : backurl,
				'direct' : (direct?'Y':'N')
			},
			url : ('/shop/add_order_cart.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					if(type == 'npay'){
						if(result.npay_url == '')
							alert(LOCALIZE.설명_네이버페이상품구매실패(escape_javascript(result.errmsg)));
						else{
							if ( !! result.shopping_additional_price_msg ) {
								alert(result.shopping_additional_price_msg);
							}
							FB_PIXEL.InitiateCheckout();
							window.location.href = result.npay_url;
						}
					}else{
						FB_PIXEL.InitiateCheckout();
						window.location.href = "/shop_payment/?order_code=" + encodeURIComponent(result.order_code);
					}
				}else{
					alert(result.msg);
					location.reload();
				}
			}
		});
	};
	/**
	 * 카트 전체 네이버찜등록
	 */
	var addNPayWishWithCart = function(item_code){
		if(currentCartCode == ''){
			alert(LOCALIZE.설명_장바구니가비어있습니다());
			return false;
		}
		$.ajax({
			type : 'POST',
			data : {'cart_code' : currentCartCode, 'item_code' : item_code},
			url : ('/shop/add_npay_wish_cart.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					if(result.npay_url == '')
						alert(LOCALIZE.설명_네이버페이찜등록실패(escape_javascript(result.errmsg)));
					else{
						if(result.mobile == 'Y')
							window.location.href = result.npay_url;
						else
							window.open(result.npay_url);
					}
				}else{
					alert(result.msg);
				}
			}
		});
	};
	/**
	 * 장바구니 옵션변경 화면 표시
	 */
	var showChangeCartItem = function(item_code){
		$.ajax({
			type : 'POST',
			data : {'item_code' : item_code},
			url : ('/shop/change_cart_item_request.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg == 'SUCCESS'){
					$changeCartItemLayer.find('div.container-fluid').html(result.html);
					$changeCartItemLayer.show();
					SITE_SHOP_DETAIL.initDetail(result.prodIdx, result.price, result.require_option_count, false);
					SITE_SHOP_CART.changeCartLoadOption(result.prodIdx);
					var selected_option_count = result.selected_option_list.length;
					var cnt = 0;
					currentChangeCartItemCode = item_code;
					$.each(result.selected_option_list, function(no, data){
						SITE_SHOP_DETAIL.selectOption(result.prodIdx, data.options, data.require, data.count, function(){
							cnt++;
							if(cnt >= selected_option_count) SITE_SHOP_DETAIL.updateSelectedOptions('cart');
						}, function(){
							cnt++;
							if(cnt >= selected_option_count) SITE_SHOP_DETAIL.updateSelectedOptions('cart');
						});
					});
					if(result.require_option_count == 0){
						SITE_SHOP_CART.changeCartOrderCount("pc", result.count);
						SITE_SHOP_CART.changeCartOrderCount("mobile", result.count);
					}
				}else{
					alert(result.msg);
				}
			}
		});
	};
	var hideChangeCartItem = function(){
		$changeCartItemLayer.find('div.container-fluid').empty();
		$changeCartItemLayer.hide();
		currentChangeCartItemCode = '';
	};
	/**
	 * 장바구니 옵션 변경 완료 처리
	 */
	var changeCartItemComplete = function(){
		if(currentChangeCartItemCode != ''){
			$.ajax({
				type : 'POST',
				data : {
					'item_code' : currentChangeCartItemCode,
					'options' : SITE_SHOP_DETAIL.getSelectedOption(),
					'order_count' : SITE_SHOP_DETAIL.getOrderCount()
				},
				url : ('/shop/change_cart_item.cm'),
				dataType : 'json',
				cache : false,
				success : function(result){
					if(result.msg == 'SUCCESS'){
						window.location.reload();
					}else{
						alert(result.msg);
					}
				}
			});
		}
	};

	var countryCodeChange = function(country){
		$.ajax({
			type : 'POST',
			data : {'country':country},
			url : ('/shop/country_code_change.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(result.msg != "SUCCESS"){
					alert(result.msg);
				}else{
					getSelectedPrice();
				}
			}
		});
	}

	var cartListMake = function(current_full_url){
		selectedCartItem = [];
		$.ajax({
			type : 'POST',
			data : {'current_full_url':current_full_url},
			url : ('/shop/get_cart_list_make.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					$shop_cart_list.find('._cart_list_wrap').html(res.html);
				}else
					alert(res.msg);
			}
		});
	}
	return {
		getSelectedPrice : function(){
			getSelectedPrice();
		},
		initCart : function(cart_code){
			initCart(cart_code);
		},
		loadProdWishList : function(){
			loadProdWishList();
		},
		deleteProdWish : function(cart_item){
			deleteProdWish([cart_item]);
		},
		deleteProdWishByProdCode : function(prod_code){
			deleteProdWishByProdCode(prod_code);
		},
		addProdWish : function(cart_item){
			addProdWish([cart_item]);
		},
		addProdWishMulti : function(){
			if(selectedCartItem.length == 0){
				alert(LOCALIZE.설명_선택한항목이없습니다());
				return false;
			}
			addProdWish(selectedCartItem);
		},
		removeCartItemOption : function(item_code, optionNo){
			removeCartItemOption(item_code, optionNo);
		},
		removeCartItem : function(item_code){
			removeCartItem([item_code]);
		},
		removeSelectedCartItem : function(){
			if(selectedCartItem.length == 0){
				alert(LOCALIZE.설명_선택한항목이없습니다());
				return false;
			}
			removeCartItem(selectedCartItem);
		},
		toggleSelectCartItem : function(item_code, chk){
			return toggleSelectCartItem(item_code, chk);
		},
		toggleAllSelectCartItem : function(chk){
			toggleAllSelectCartItem(chk);
		},
		addOrderWithCart : function(type, item_code, backurl){
			addOrderWithCart(type, item_code, backurl, false);
		},
		addOrderWithCartDirect : function(type, item_code, backurl){
			addOrderWithCart(type, item_code, backurl, true);
		},
		showChangeCartItem : function(item_code){
			showChangeCartItem(item_code);
		},
		hideChangeCartItem : function(){
			hideChangeCartItem();
		},
		changeCartSelectRequireOption : function(prod_idx, option_code, value_code, value_name){
			SITE_SHOP_DETAIL.selectRequireOption('cart', prod_idx, option_code, value_code, value_name, function(){
				SITE_SHOP_DETAIL.updateSelectedOptions('cart');
			});
		},
		changeCartChangeRequireInputOption : function(prod_idx, option_code, msg){
			SITE_SHOP_DETAIL.changeRequireInputOption(prod_idx, option_code, msg, function(){
				SITE_SHOP_DETAIL.updateSelectedOptions('cart');
			});
		},
		changeCartSelectOptionalOption : function(prod_idx, option_code, value_code, value_name){
			SITE_SHOP_DETAIL.selectOptionalOption(prod_idx, option_code, value_code, value_name, function(){
				SITE_SHOP_DETAIL.updateSelectedOptions('cart');
			});
		},
		changeCartItemIncrease : function(optNo, reload){
			SITE_SHOP_DETAIL.increaseOptionCount(optNo, 'cart');
		},
		changeCartItemDecrease : function(optNo){
			SITE_SHOP_DETAIL.decreaseOptionCount(optNo, 'cart');
		},
		changeCartIncrease : function(type){
			var o = $changeCartItemLayer.find('input._order_count_' + type);
			var curCount = o.val();
			if(isNaN(curCount))
				curCount = 1;
			else
				curCount = parseInt(curCount) + 1;
			o.val(curCount);
			SITE_SHOP_DETAIL.setOrderCount(curCount);
			SITE_SHOP_DETAIL.updateSelectedOptions('cart');
		},
		changeCartDecrease : function(type){
			var o = $changeCartItemLayer.find('input._order_count_' + type);
			var curCount = o.val();
			if(isNaN(curCount))
				curCount = 1;
			else
				curCount = parseInt(curCount) - 1;
			if(curCount < 1) curCount = 1;
			o.val(curCount);
			SITE_SHOP_DETAIL.setOrderCount(curCount);
			SITE_SHOP_DETAIL.updateSelectedOptions('cart');
		},
		changeCartOrderCount : function(type, count){
			if(isNaN(count))
				count = 1;
			else
				count = parseInt(count);
			if(count < 1) count = 1;
			$changeCartItemLayer.find("input._order_count_" + type).val(count);
			SITE_SHOP_DETAIL.setOrderCount(count);
			SITE_SHOP_DETAIL.updateSelectedOptions('cart');
		},
		changeCartItemRemove : function(optNo){
			SITE_SHOP_DETAIL.removeSelectedOption(optNo, 'cart');
		},
		changeCartItemCount : function(optNo, optCount){
			SITE_SHOP_DETAIL.changeOptionCount(optNo, optCount, 'cart');
		},
		changeCartItemComplete : function(){
			changeCartItemComplete();
		},
		addNPayWishWithCart : function(item_code){
			addNPayWishWithCart(item_code);
		},
		addSelectedCartItem : function(item_code){
			selectedCartItem.push(item_code);
		},
		changeCartLoadOption : function(prod_idx){
			SITE_SHOP_DETAIL.loadOption('cart', prod_idx);
		},
		countryCodeChange : function(country){
			countryCodeChange(country);
		},
		cartListMake : function(current_full_url){
			cartListMake(current_full_url);
		},
		toggleAllSelectCk : function(){
			toggleAllSelectCk();
		}
	}
}();

var SITE_SHOP_PAYMENT = function(){
	var $form;
	var $use_point;
	var $use_point_text;
	var $use_coupon;
	//var $use_coupon_text;
	var $check_coupon_code;
	var $check_coupon_code_btn;
	var $check_sale_price;
	var $total_price_text;
	var $orderer_call;
	var $orderer_email;
	var $deliv_call;
	var current_order_code;
	var $order_form_wrap;
	var $item_wrap;
	var $pay_type;
	var $pg_type;
	var $pg_status;
	var $address_select_form = '';

	var initPayment = function(order_code){
		var payment_type = $("._payment_type");
		$form = $('#order_payment');
		$order_form_wrap = $('#order_form_wrap');
		$use_point = $form.find('input._use_point');
		$use_point_text = $form.find('._use_point_text');
		$use_coupon = $form.find('input._use_coupon');
		//$use_coupon_text = $form.find('._use_coupon_text');
		$total_price_text = $form.find('._total_price_text');
		$orderer_call = $form.find('._orderer_call');
		$check_coupon_code = $form.find("._check_coupon_code");
		$check_coupon_code_btn = $form.find("._check_coupon_code_btn");
		$check_sale_price = $form.find("._check_sale_price");
		$orderer_call.check_callnum();
		$orderer_email = $form.find('._orderer_email');
		$deliv_call = $form.find('._deliv_call');
		$deliv_call.check_callnum();
		$use_point.number(true);
		$pay_type = $('#pay_type');
		$pg_type = $('#pg_type');
		$pg_status = $('#pg_status');
		var cash_idx = $('#cash_idx');
		var depositor_name = $('#depositor_name');		// 무통장입금 입금자명
		current_order_code = order_code;
		var cash_idx_size = cash_idx.find('option').size();
		$pay_type.change(function(){
			$('#current_pay_type').text($(this).find('option:selected').text());
			if(cash_idx_size > 1 && this.value == "cash"){
				cash_idx.show();
				payment_type.addClass("on");
				return;
			}
			payment_type.removeClass("on");
			cash_idx.hide();
		});
		if(cash_idx_size > 1 && $pay_type.val() == "cash"){
			payment_type.addClass("on");
			cash_idx.show();
		};

		// 최초 셀렉트 되어있는 결제수단에 따른 무통장입금, 현금영수증 신청 영역 처리
		if($('#pay_type').val() == 'cash'){
			depositor_name.show();
			if($('._cash_receipt_wrap').length > 0 && $('._cash_receipt_type_wrap').length > 0){
				$('._cash_receipt_wrap').show();
			}
		}

		// 현금 영수증 신청 종류에 따른 처리
		$('._cash_receipt_type').on('change', function(){
			var type = $(this).val();

			if(type == 'deducation'){
				$('#cash_receipt_value').attr('placeholder', '휴대전화번호 입력');
				$('#cash_receipt_value').val('');
			}else{
				$('#cash_receipt_value').attr('placeholder', '사업자번호 입력');
				$('#cash_receipt_value').val('');
			}
		});

		$('#current_pay_type').text($pay_type.find('option:selected').text());
	};

	var startPayment = function(){
		FB_PIXEL.AddPaymentInfo();
		if ($pay_type.val()=='paypal'){
			$form.prop('target','');
		}

		if($pg_status.val() == 'test' && $pay_type.val()  != "cash") {
			alert(
					$pg_type.val() == 'inicis'
				? 	LOCALIZE.설명_테스트결제메시지_이니시스()
				: 	LOCALIZE.설명_테스트결제메시지()
			);
		}

		var form_data = $form.serializeObject();
		var error_msg = "";
		$.each(form_data,function(name,value){
			error_msg = "";
			if(isBlank(value)){
				if(form_data.deliv_type != 'visit' && form_data.deliv_type != 'download' && form_data.deliv_type != 'no_deliv'){
					switch(name){
						case 'orderer_name':
							error_msg = LOCALIZE.설명_주문자이름을입력해주세요();
							break;
						case 'orderer_call':
							error_msg = LOCALIZE.설명_주문자연락처를입력해주세요();
							break;
						case 'orderer_email':
							error_msg = LOCALIZE.설명_이메일을입력해주세요();
							break;
						case 'deliv_name':
							error_msg = LOCALIZE.설명_배송지이름을입력해주세요();
							break;
						case 'deliv_call':
							error_msg = LOCALIZE.설명_배송지연락처를입력해주세요();
							break;
					}

					var $domestic_ck = false;
					if(form_data.address_select_type){
						if(!isBlank(form_data.deliv_country) && form_data.address_select_type.indexOf("KR") > -1){
							$domestic_ck = true;
						}else{
							$domestic_ck = false;
						}
					}else{
						if(!isBlank(form_data.deliv_country) && form_data.deliv_country.indexOf("KR") > -1){
							$domestic_ck = true;
						}else{
							$domestic_ck = false;
						}
					}

					if($domestic_ck === true){
						switch(name){
							case 'deliv_address':
							case 'deliv_address_detail':
							case 'deliv_postcode':
								error_msg = LOCALIZE.설명_배송지주소를입력해주세요();
								break;
							case 'unipass_number':
								error_msg = LOCALIZE.설명_개인통관고유부호를입력해주세요();
								break;
						}
					}else{
						if(form_data.address_select_type == 'JP'){
							switch(name){
								case 'deliv_address':
								case 'deliv_address_detail':
								case 'deliv_address_zipcode':
									error_msg = LOCALIZE.설명_배송지주소를입력해주세요();
									break;
							}
						}else{
							switch(name){
								case 'deliv_address_city':
									error_msg = LOCALIZE.설명_배송지주소City를입력해주세요();
									break;
								case 'deliv_address_state':
									error_msg = LOCALIZE.설명_배송지주소State를입력해주세요();
									break;
								case 'deliv_address_building':
									error_msg = LOCALIZE.설명_배송지주소Building를입력해주세요();
									break;
								case 'deliv_address_street':
									error_msg = LOCALIZE.설명_배송지주소Street를입력해주세요();
									break;
								case 'deliv_address_zipcode':
									error_msg = LOCALIZE.설명_배송지주소ZipCode를입력해주세요();
									break;
							}
						}
					}
				}else{
					switch(name){
						case 'orderer_name':
							error_msg = LOCALIZE.설명_주문자이름을입력해주세요();
							break;
						case 'orderer_call':
							error_msg = LOCALIZE.설명_주문자연락처를입력해주세요();
							break;
						case 'orderer_email':
							error_msg = LOCALIZE.설명_이메일을입력해주세요();
							break;
					}
				}
				if(!isBlank(error_msg))return false;
			}
		});
		if($form.find('._privacy_no_member_agree').length > 0 && $form.find('._privacy_no_member_agree').prop('checked') != true) error_msg = LOCALIZE.설명_개인정보처리방침에동의하여주시기바랍니다();		// 비회원 개인정보 수집 및 이용 동의 요소가 존재 하고 수집 동의에 체크가 안 되어 있을 경우
		if(!isBlank(error_msg)){
			alert(error_msg);
			return;
		}else{
			$form.submit();
		}
	};

	var point = 0;
	var issue_coupon_list = [];
	var no_use_no_overlab_coupon;
	var checkPointUsable = function(val){
		if(val == 'max'){
			point = 'max';
		}else{
			point = $.trim($use_point.val());
			if(point == '') point = 0;
		}
		checkUsable();
	};


	function checkUsable(is_item_make_list){
		if(point == 0){
			point = $use_point.val()?$use_point.val():0;
		}
		$.ajax({
			type : 'POST',
			data : {'order_code' : current_order_code, 'point' : point,'issue_coupon_list':issue_coupon_list,'current_no_overlab_code':current_no_overlab_code},
			url : ('/shop/check_usable.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					$use_point.val(res.point);
					if(res.coupon_create_price == '0'){
						$form.find('._check_coupon_code').val('');
						$form.find("._create_coupon_list input[value='"+res.current_no_overlab_code+"']").remove();
						//$form.find("._coupon_sale_price_wrap, ._coupon_sale_error_wrap").hide();
					}
					if(res.coupon_down_price == '0'){
						$form.find('._use_coupon').val('');
					}
					if($form.find("._create_coupon_list input[value='"+res.current_no_overlab_code+"']").length > 0){
						$check_sale_price.text(((res.coupon_create_price != '' && res.coupon_create_price != '0') ? (res.coupon_create_price) : '0'));
					}else{
						$use_coupon.val(res.coupon_down_price);
					}
					SITE_SHOP_PAYMENT.itemMakeList($('#order_postcode_input').val(),$("#deliv_country").val(),false);
				}else{
					if(!isBlank(res.current_no_overlab_code)){
						$form.find("input[value='"+res.current_no_overlab_code+"']").remove();
						setIssueCouponList();
					}

					// 비회원일때 배송국가 변경시 로그인중 아니라는 메세지가 변경할때마다 계속 나와서 예외처리
					if(is_item_make_list && res.error_code == 2){
						// 비회원일때 배송국가 변경이 일어날경우.
					}else{
						alert(res.msg);
					}
				}
			}
		});
	}


	//다운로드 쿠폰 적용
	var current_no_overlab_code = "";
	var setCoupon = function(){
		current_no_overlab_code = "";
		var coupon_price = 0.0;
		var $set_coupon_list = $("#set_coupon_list");
		var $no_overlab_obj = $set_coupon_list.find("input:radio[name='no_overlab_coupon']:checked");
		var $overlab_obj = $set_coupon_list.find("input:checkbox[name='overlab_coupon']:checked");
		var _issue_coupon_list = [];
		$form.find("._down_coupon_list input[name='issue_coupon_list[]']").remove();


		if($no_overlab_obj.val() > 0){
			coupon_price = parseFloat($no_overlab_obj.val());
			_issue_coupon_list.push($no_overlab_obj.data("issue-code"));
			current_no_overlab_code = $no_overlab_obj.data("issue-code");
		}else if($no_overlab_obj.val() == "no"){
			no_use_no_overlab_coupon = "ok";
		}

		$overlab_obj.each(function(){
			coupon_price = coupon_price + parseFloat($(this).val());
			_issue_coupon_list.push($(this).data("issue-code"));
		});


		$.each(_issue_coupon_list,function(index,code){
			var html = "<input type='hidden' name='issue_coupon_list[]' value='"+code+"'/>";
			$form.find("._down_coupon_list").append(html);
		});

		setIssueCouponList();

		checkUsable();
		$.cocoaDialog.hide();
	};

	function setIssueCouponList(){
		issue_coupon_list = [];
		$form.find("input[name='issue_coupon_list[]']").each(function(){
			issue_coupon_list.push($(this).val());
		});
	}
	//쿠폰적용 다이얼로그 설정
	var setCouponDialog = function(create_issue_code_list,down_issue_code){
		if(create_issue_code_list){
			if(create_issue_code_list.length > 0){
				$.each(create_issue_code_list,function(key,value){
					SITE_SHOP_PAYMENT.issueCoponListSetting(value);
				})
			}
		}
		if(down_issue_code){
			SITE_SHOP_PAYMENT.currentNoOverlabCodeSetting(down_issue_code);
		}
		//$use_coupon.val("");
		set_money_format($use_coupon);

		if($form.find("._down_coupon_add_btn").length > 0){
			var $down_coupon_add_btn = $form.find("._down_coupon_add_btn");
			$down_coupon_add_btn.off("click.down_coupon_add_btn").on("click.down_coupon_add_btn",function(){
				$.ajax({
					type: 'POST',
					data : {order_code:current_order_code},
					url: ('/dialog/issue_coupon_list.cm'),
					dataType: 'html',
					async: true,
					cache: false,
					success: function(res){
						$.cocoaDialog.open({type : 'site_coupon', custom_popup : $(res)});
					}
				});
			});
		}

		$check_coupon_code_btn.off("click.check_coupon_code_btn").on("click.check_coupon_code_btn",function(){
			checkCreateCouponIssueCode($check_coupon_code.val());
		});
		/*
		$check_coupon_code.off("blur._create_coupon_list").on("blur._create_coupon_list",function(){
			if($(this).val() == "" && $form.find("._create_coupon_list input[name='issue_coupon_list[]']").length > 0 ){
				$form.find("._create_coupon_list input[name='issue_coupon_list[]']").remove();
				$form.find("._coupon_sale_price_wrap, ._coupon_sale_error_wrap").hide();
				setIssueCouponList();
				current_no_overlab_code = '';
				checkUsable();
			}
		});
		*/

	};

	//유효한 쿠폰코드인지 체크
	function checkCreateCouponIssueCode(coupon_issue_code){
		if($form.find("._create_coupon_list input[name='issue_coupon_list[]']").length > 0){
			$form.find("._create_coupon_list input[name='issue_coupon_list[]']").remove();
			setIssueCouponList();
		}

		if(coupon_issue_code != ""){
			$form.find("._coupon_sale_price_wrap, ._coupon_sale_error_wrap").hide();
			$.ajax({
				type: 'POST',
				data : {coupon_issue_code:coupon_issue_code,issue_coupon_list:issue_coupon_list,order_code:current_order_code},
				url: ('/shop/check_coupon_code.cm'),
				dataType: 'json',
				async: true,
				cache: false,
				success: function(res){
					$form.find("._create_coupon_list input[name='issue_coupon_list[]']").remove();
					if(res.msg == "SUCCESS"){
						current_no_overlab_code = res.current_no_overlab_code;
						var html = "<input type='hidden' name='issue_coupon_list[]' value='"+current_no_overlab_code+"'/>";
						$form.find("._create_coupon_list").append(html);

						setIssueCouponList();
						checkUsable();
						//$form.find("._check_sale_price").text();
						$form.find("._coupon_sale_price_wrap").show();
					}else{
						$form.find("._coupon_sale_error_wrap").show();
						$form.find("._coupon_sale_error_wrap").text(res.msg);
						$form.find("._create_coupon_list input[name='issue_coupon_list[]']").remove();
						setIssueCouponList();
						current_no_overlab_code = '';
						checkUsable();
					}
				}
			});
		}
	}

	var setDelivInfoWithOrderer = function(){
		if ($order_form_wrap.find('._orderer_name').val()!='') $order_form_wrap.find('._deliv_name').val($order_form_wrap.find('._orderer_name').val());
		if ($order_form_wrap.find('._orderer_call').val()!='') $order_form_wrap.find('._deliv_call').val($order_form_wrap.find('._orderer_call').val());
		if ($order_form_wrap.find('._orderer_postcode').val()!='') $order_form_wrap.find('#order_postcode_input').val($order_form_wrap.find('._orderer_postcode').val());
		if ($order_form_wrap.find('._orderer_address').val()!='') $order_form_wrap.find('#order_address_input').val($order_form_wrap.find('._orderer_address').val());
		if ($order_form_wrap.find('._orderer_address_detail').val()!='') $order_form_wrap.find('#order_address_detail_input').val($order_form_wrap.find('._orderer_address_detail').val());
	};

	/**
	 *
	 * @param type - 배송옵션(택배,퀵배달,방문수령) - lsy
	 */
	var itemMakeList = function(zonecode,default_country,address_change,address_select_type){
		$.ajax({
			type : 'POST',
			data : {
				'order_code' : current_order_code,
				'zonecode':zonecode,
				'default_country':default_country,
				'address':$order_form_wrap.find('#order_address_input').val(),
				'address_detail':$order_form_wrap.find('#order_address_detail_input').val(),
				'address_select_type':address_select_type
			},
			url : ('/shop/get_item_list.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					$item_wrap = $order_form_wrap.find('._item_wrap').html($(res.html));
					$order_form_wrap.find('._total_point').html(res.total_point);
					if(address_change){
						setIssueCouponList();
						checkUsable(true);
					}
				}else
					alert(res.msg);
			}
		});
	};

	/**
	 *
	 * @param type - 배송옵션(택배,퀵 배달, 방문수령) - lsy
	 */
	var delivOptionChange = function(type){
		var zonecode = $form.find('#order_postcode_input').val();
		var deliv_pay_type = $form.find("#deliv_pay_type").val();
		var deliv_country = $form.find("select[name=deliv_country]").val();
		if(type == 'visit'){
			$order_form_wrap.find('._deliv_title_wrap').hide();
			$order_form_wrap.find('._deliv_inpormation_wrap').hide();
			$order_form_wrap.find('._deliv_memo_wrap').hide();
			$order_form_wrap.find('._compay_list').show();
			$order_form_wrap.find('#deliv_infomation_show').val('N');
			$order_form_wrap.find('._deliv_pay_type_wrap').hide();
		}else if(type == 'quick'){
			$order_form_wrap.find('._deliv_title_wrap').show();
			$order_form_wrap.find('._deliv_inpormation_wrap').show();
			$order_form_wrap.find('._deliv_memo_wrap').show();
			$order_form_wrap.find('._compay_list').hide();
			$order_form_wrap.find('#deliv_infomation_show').val('Y');
			$order_form_wrap.find('._deliv_pay_type_wrap').hide();
		}else if(type == 'deliv_price_after'){
			$order_form_wrap.find('._deliv_title_wrap').show();
			$order_form_wrap.find('._deliv_inpormation_wrap').show();
			$order_form_wrap.find('._deliv_memo_wrap').show();
			$order_form_wrap.find('._compay_list').hide();
			$order_form_wrap.find('#deliv_infomation_show').val('Y');
		}else{
			$order_form_wrap.find('._deliv_title_wrap').show();
			$order_form_wrap.find('._deliv_inpormation_wrap').show();
			$order_form_wrap.find('._deliv_memo_wrap').show();
			$order_form_wrap.find('._compay_list').hide();
			$order_form_wrap.find('#deliv_infomation_show').val('Y');
			$order_form_wrap.find('._deliv_pay_type_wrap').show();
		}
		itemMakeList(zonecode,deliv_country,false);
	};

	var digitalFileDownload = function(target_code,order_idx){
		$.ajax({
			type : 'POST',
			data : {'target_code' : target_code,'order_idx':order_idx},
			url : ('/shop/shop_file_download.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					alert(LOCALIZE.설명_성공());
				}else{
					alert(res.msg);
				}
			}
		});
	};

	var delivPayTypeChang = function(type,zonecode,deliv_pay_type,default_country){

		itemMakeList(zonecode,default_country,false);
	};

	var delivMakeList = function(country){
		var address = "";
		var splitAddress ="";
		var street= "";
		var city= "";
		var state= "";
		$.ajax({
			type : 'POST',
			data : {order_code:current_order_code,country:country},
			url : ('/shop/make_deliv_form.cm'),
			dataType : 'json',
			success : function(res){
				if(res.msg == 'SUCCESS'){
					$order_form_wrap.find('._deliv_wrap').html($(res.html));
					$order_form_wrap.find('._deliv_call').check_callnum();
					SITE_SHOP_PAYMENT.itemMakeList($('#order_postcode_input').val(),res.default_country,false,res.address_select_type);
					var addr_daum = new ZIPCODE_DAUM();
					addr_daum.init({
						'addr_container' : $('#order_find_address'),
						'addr_pop' : $('#order_find_address ._add_list'),
						'post_code' : $('#order_postcode_input'),
						'addr' : $('#order_address_input'),
						'onStart' : function(){

						},
						'onComplete' : function(key){
							$('#order_address_detail_input').focus();
							address = key.jibunAddressEnglish;
							splitAddress= address.split(',');

							if(key.addressEnglish != "undefined"){
								address = key.addressEnglish;
								splitAddress= address.split(',');
								if(splitAddress.length > 5){
									street = splitAddress[0] + " " + splitAddress[1];
									city = splitAddress[2] + " " + splitAddress[3];
									state = splitAddress[4];
								} else {
									street = splitAddress[0] + " " + splitAddress[1];
									city = splitAddress[2];
									state = splitAddress[3];
								}
							} else if(key.jibunAddressEnglish != "undefined"){
								address = key.jibunAddressEnglish;
								splitAddress= address.split(',');
								if(splitAddress.length > 5){
									street = splitAddress[0] + " " + splitAddress[1];
									city = splitAddress[2] + " " + splitAddress[3];
									state = splitAddress[4];
								} else {
									street = splitAddress[0] + " " + splitAddress[1];
									city = splitAddress[2];
									state = splitAddress[3];
								}
							}

							$("input[name='deliv_address_street']").val(street);
							$("input[name='deliv_address_city']").val(city);
							$("input[name='deliv_address_state']").val(state);
							$("input[name='deliv_address_zipcode']").val(key.zonecode);
							//SITE_SHOP_PAYMENT.itemMakeList(key.zonecode,$("#deliv_country").val(),true,res.address_select_type);
							SITE_SHOP_PAYMENT.itemMakeList(key.zonecode,$("#deliv_country").val(),false,res.address_select_type);
						},
						'onClose' : function(){

						}
					});
				}else{
					alert(res.msg);
				}
			}
		});
	};

	var canselCreateCoupon = function(){
		$form.find("._create_coupon_list input[name='issue_coupon_list[]']").remove();
		$form.find("._coupon_sale_price_wrap, ._coupon_sale_error_wrap").hide();
		$check_coupon_code.val('');
		current_no_overlab_code = '';
		setIssueCouponList();
		checkUsable();
	};

	var selectAddressChange = function(type){
		if(type == 'KR'){
			$address_select_form.find('._domestic_wrap').show();
			$address_select_form.find('._oversea_wrap').hide();
			SITE_SHOP_PAYMENT.itemMakeList($('#order_postcode_input').val(),$("#deliv_country").val(),false,type);
		}else{
			$address_select_form.find('._domestic_wrap').hide();
			$address_select_form.find('._oversea_wrap').show();
			SITE_SHOP_PAYMENT.itemMakeList('',$("#deliv_country").val(),true,type);
		}
		showUnipassNumberWrap(type);
	};

	var showUnipassNumberWrap = function(country_code){
		if(country_code === 'KR'){
			$form.find('._unipass_number_wrap').show();
		}else{
			$form.find('._unipass_number_wrap').hide();
		}
	};

	var showCashReceiptTypeWrap = function(chk){
		if(chk){
			$('._cash_receipt_type_wrap').show();
		}else{
			$('._cash_receipt_type_wrap').hide();
		}
	};

	return {
		initPayment : function(order_code){
			initPayment(order_code);
		},
		startPayment : function(){
			startPayment();
		},
		checkPointUsable : function(val){
			checkPointUsable(val);
		},
		setCouponDialog : function(create_issue_code_list,down_issue_code){
			setCouponDialog(create_issue_code_list,down_issue_code);
		},
		setCoupon : function(){
			setCoupon();
		},
		'setDelivInfoWithOrderer' : function(){
			setDelivInfoWithOrderer();
		},
		itemMakeList : function(zonecode,default_country,address_change,address_select_type){
			itemMakeList(zonecode,default_country,address_change,address_select_type);
		},
		delivOptionChange : function(type){
			delivOptionChange(type);
		},
		digitalFileDownload : function(target_code,order_idx){
			digitalFileDownload(target_code,order_idx);
		},
		delivPayTypeChang : function(type,zonecode,deliv_pay_type,default_country){
			delivPayTypeChang(type,zonecode,deliv_pay_type,default_country);
		},
		delivMakeList : function(country){
			delivMakeList(country);
		},
		issueCoponListSetting : function(code){
			var html = "<input type='hidden' name='issue_coupon_list[]' value='"+code+"'/>";
			$form.find("._down_coupon_list").append(html);
		},
		currentNoOverlabCodeSetting : function(code){
			current_no_overlab_code = code;
			var html = "<input type='hidden' name='issue_coupon_list[]' value='"+code+"'/>";
			$form.find("._create_coupon_list").append(html);
		},
		canselCreateCoupon : function(){
			canselCreateCoupon();
		},
		selectAddressChange : function(type){
			selectAddressChange(type);
		},
		adressSelectTypeSetting : function(){
			$address_select_form = $('#deliv_inpormation_wrap');
		},
		'showUnipassNumberWrap' : function(country_code){
			showUnipassNumberWrap(country_code);
		},
		'showCashReceiptTypeWrap' : function(chk){
			showCashReceiptTypeWrap(chk);
		}
	}
}();

var SITE_SHOP_REVIEW = function(){
	var $review_wrap;
	var $mobile_review_wrap;
	var $form;
	var $mobile_form;
	var $rating;
	var $star;
	var $m_rating;
	var $m_star;
	var $comment_body;
	var $review_image_box;
	var $comment_area;


	var init = function(){
		$form = $review_wrap.find('#review_form');
		$rating = $form.find('#rating');
		$star = $form.find('._star');
		$form.find("#review_image_box").hide();

		$form.find('#review_image_upload_btn').setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#review_image_box").show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#review_image_box").append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
		autosize($('.textarea_block textarea'));
	};

	var initMobileReview = function(){
		$mobile_review_wrap = $('#prod_detail_content_mobile');
		$mobile_form = $mobile_review_wrap.find('#mobile_review_form');
		$m_rating = $mobile_form.find('#mobile_rating');
		$m_star = $mobile_form.find('._star');
		$mobile_form.find("#mobile_review_image_box").hide();

		$mobile_form.find('#mobile_review_image_upload_btn').setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#mobile_review_image_box").show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#mobile_review_image_box").append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
		autosize($('.textarea_block textarea'));
	};

	var changeRating = function(t, n){

		if(t == 'desktop'){
			$rating.val(n + 1);
			$star.each(function(e){
				if(n <= 0 && e == 0){
					if(n == -1){
						$(this).removeClass('active');
					}else{
						$(this).addClass('active');
					}
				}else{
					$(this).removeClass('active');
					if(e <= n){
						$(this).addClass('active');
					}
				}
			});
		}else{
			$m_rating.val(n + 1);
			$m_star.each(function(e){
				if(n <= 0 && e == 0){
					if(n == -1){
						$(this).removeClass('active');
					}else{
						$(this).addClass('active');
					}
				}else{
					$(this).removeClass('active');
					if(e <= n){
						$(this).addClass('active');
					}
				}
			});
		}
	};

	var reviewFormShow = function(t){
		var sub_form = $("._sub_form_" + t);

		sub_form.data('show', 'Y');
		sub_form.show();
		var comment_add_body = sub_form.find('._comment_add_body_' + t);

		$('body').off('mouseup.sub_comment')
			.on('mouseup.sub_comment', function(e){
				var $c_target = $(e.target);
				var $s_form = $c_target.closest('._sub_form_' + t + ', ._show_sub_form_btn_' + t);
				if($s_form.length == 0){

					var text = comment_add_body.val();
					sub_form.data('show', 'N');
					if(text == ''){
						$('body').off('mouseup.sub_comment');
						reviewFormHide();
					}
				}
			});
	};

	var reviewEditShow = function(t){
		var editor_form = $("._sub_form_editor_" + t);
		editor_form.siblings().hide();

		editor_form.data('show', 'Y');
		editor_form.show();
		autosize.update(editor_form.find('textarea'));

	};

	var reviewEditHide = function(t){
		var editor_form = $("._sub_form_editor_" + t);
		editor_form.hide();
		editor_form.siblings('.block-postmeta').show();
	};

	var reviewFormHide = function(){
		$("._sub_review_form").hide();
	};

	var reviewDelete = function(t, c ,pass){
		if(confirm(LOCALIZE.설명_삭제하시겠습니까())){
			$.ajax({
				type : 'POST',
				data : {code : t, prod_code : c , review_pass : pass},
				url : ('/shop/delete_review.cm'),
				dataType : 'json',
				success : function(result){
					if(result.msg == 'SUCCESS'){
						createHtml(result.prod_idx);
						SITE_SHOP_DETAIL.changeContentTab('review');
					}else
						alert(result.msg);
				}
			});
		}
	};

	var reviewDeleteShow = function(t,c){
		$show_secret_password = $('#show_secret_password');
		if($show_secret_password.length == 0){
			$show_secret_password = $('<div class="remove-pop" id="show_secret_password" style="position:absolute; left:0;top:0;z-index:99999;"><p>'+LOCALIZE.설명_작성시등록하신비밀번호를입력해주세요()+'</p><div class="input_area"><input type="password" placeholder="'+LOCALIZE.설명_비밀번호()+'"><button class="btn btn-primary _confirm">'+LOCALIZE.버튼_확인닫기()+'</button></div></div>').hide();
			$('body').append($show_secret_password);
		}

		var $show_link = $(event.target);

		var top = $show_link.offset().top;
		var left = $show_link.offset().left;

		$show_secret_password.css({
			position : 'absolute',
			top : top,
			left : left
		});
		$show_secret_password.find('input').val('');
		$show_secret_password.show();
		$show_secret_password.off('click', '._confirm')
			.on('click', '._confirm', function(){
				var secret_pass = $show_secret_password.find('input').val();
				$show_secret_password.hide();
				reviewDelete(t, c, secret_pass);
			});
		$('body').off('mousedown.show_secret')
			.on('mousedown.show_secret', function(e){
				var $tmp = $(e.target).closest('#show_secret_password');
				if($tmp.length == 0){
					$show_secret_password.hide();
					$('body').off('click.show_secret');
				}
			});
	};

	var imageUploadInit = function(n){
		$("#sub_review_image_box_" + n).hide();
		//$("#editor_review_image_box_"+n).hide();

		$('#sub_review_image_upload_btn_' + n).setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#sub_review_image_box_" + n).show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#sub_review_image_box_" + n).append(html);
				}else{
					alert(tmp.error);
				}
			});
		});

		$('#editor_review_image_upload_btn_' + n).setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#editor_review_image_box_" + n).show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#editor_review_image_box_" + n).append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
	};

	var submit = function(t, type, i){
		switch(type){
			case 'main': // PC 형태 form Q&A
				var data = $form.serializeObject();
				break;
			case 'sub_form': //PC 형태 form Q&A 댓글
				var data = $('#sub_review_form_' + i).serializeObject();
				break;
			case 'editor': // PC 형태 form Q&A 수정
				var data = $('#sub_review_editor_form_' + i).serializeObject();
				break;
			case 'mobile': // Mobile 형태 form Q&A
				var data = $('#mobile_review_form').serializeObject();
				break;
			case 'mobile_sub_form': // Mobile 형태 form Q&A 댓글
				var data = $('#mobile_sub_review_form_' + i).serializeObject();
				break;
			case 'mobile_editor': // Mobile 형태 form Q&A 수정
				var data = $('#mobile_sub_review_editor_form_' + i).serializeObject();
				break;
		}
		if(!t.hasClass("btn-writing")){
			t.addClass("btn-writing");
		}

		$.ajax({
			type : 'POST',
			data : {data : data, type : type},
			url : ('/shop/add_review.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(t.hasClass("btn-writing")){
					t.removeClass("btn-writing");
				}
				if(result.ace_counter_plus_switch){
					ACE_COUNTER_PLUS.AddReview(result.prod_code, result.rating);
				}
				if(result.msg == 'SUCCESS'){
                    if(type=='main'|| type=='mobile') document.getElementById("first_review").scrollIntoView();
					createHtml(result.prod_idx);
					SITE_SHOP_DETAIL.changeContentTab('review');
					$("div[id^='sub_review_image_box_']").hide();
				}else
					alert(result.msg);
			}
		});
	};

	var createHtml = function(prod_idx, review_page, qna_page, paging_on){
		$review_wrap = $('._review_wrap');
		$.ajax({
			type : 'POST',
			data : {prod_idx : prod_idx, review_page : review_page, qna_page : qna_page},
			url : ('/shop/prod_review_pc_html.cm'),
			dataType : 'html',
			cache : false,
			success : function(result){
				$review_wrap.html(result);
				if(paging_on){
					document.getElementById("first_review").scrollIntoView();
				}
			}
		});
	};


	return {
		init : function(){
			init();
		},
		initMobileReview : function(){
			initMobileReview();
		},
		submit : function(t, type, i){
			submit(t, type, i);
		},
		changeRating : function(t, n){
			changeRating(t, n);
		},
		FormShow : function(t){
			reviewFormShow(t);
		},
		Delete : function(t, c){
			reviewDelete(t, c);
		},
		EditShow : function(t){
			reviewEditShow(t);
		},
		DeleteShow : function(t,c){
			reviewDeleteShow(t,c);
		},
		EditHide : function(t){
			reviewEditHide(t);
		},
		imageUploadInit : function(n){
			imageUploadInit(n);
		},
		createHtml : function(prod_idx, review_page, qna_page,paging_on){
			createHtml(prod_idx, review_page, qna_page,paging_on);
		}
	}
}();

var SITE_SHOP_QNA = function(){
	var $qna_wrap;
	var $mobile_qna_wrap;
	var $form;
	var $mobile_form;
	var $comment_body;
	var $qna_image_box;
	var $comment_area;
	var $secret;
	var $m_secret;

	var init = function(){
		$form = $qna_wrap.find('#qna_form');
		$secret = $form.find('._secret_btn');
		$form.find("#qna_image_box").hide();

		$secret.on('click', function(){
			if($secret.hasClass('active')){
				$secret.removeClass('active');
				$form.find('._secret').val('N');
			}else{
				$secret.addClass('active');
				$form.find('._secret').val('Y');
			}
		});

		$('#qna_image_upload_btn').setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#qna_image_box").show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#qna_image_box").append(html);
				}else{
					alert(tmp.error);
				}
			});
		});

		autosize($('.textarea_block textarea'));
	};

	var initMobileQna = function(){
		$mobile_qna_wrap = $('#prod_detail_content_mobile');
		$mobile_form = $mobile_qna_wrap.find('#mobile_qna_form');
		$m_secret = $mobile_form.find('._secret_btn');
		$mobile_form.find("#mobile_qna_image_box").hide();

		$m_secret.on('click', function(){
			if($m_secret.hasClass('active')){
				$m_secret.removeClass('active');
				$mobile_form.find('._secret').val('N');
			}else{
				$m_secret.addClass('active');
				$mobile_form.find('._secret').val('Y');
			}
		});

		$mobile_form.find('#mobile_qna_image_upload_btn').setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#mobile_qna_image_box").show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#mobile_qna_image_box").append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
		autosize($('.textarea_block textarea'));
	};

	var qnaFormShow = function(t){
		var sub_form = $("._sub_form_" + t);

		sub_form.data('show', 'Y');
		sub_form.show();
		var comment_add_body = sub_form.find('._comment_add_body_' + t);

		$('body').off('mouseup.sub_comment')
			.on('mouseup.sub_comment', function(e){
				var $c_target = $(e.target);
				var $s_form = $c_target.closest('._sub_form_' + t + ', ._show_sub_form_btn_' + t);
				if($s_form.length == 0){

					var text = comment_add_body.val();
					sub_form.data('show', 'N');
					if(text == ''){
						$('body').off('mouseup.sub_comment');
						qnaFormHide();
					}
				}
			});
	};

	var qnaEditShow = function(t){
		var editor_form = $("._sub_form_editor_" + t);
		editor_form.siblings().hide();

		editor_form.data('show', 'Y');
		editor_form.show();
		autosize.update(editor_form.find('textarea'));

	};

	var qnaEditHide = function(t){
		var editor_form = $("._sub_form_editor_" + t);
		editor_form.hide();
		editor_form.siblings('.block-postmeta').show();
	};

	var qnaFormHide = function(){
		$("._sub_qna_form").hide();
	};

	var qnaDelete = function(code, prod_code, secret_pass){
		if(confirm(LOCALIZE.설명_삭제하시겠습니까())){
			$.ajax({
				type : 'POST',
				data : {code : code, prod_code : prod_code, secret_pass : secret_pass},
				url : ('/shop/delete_qna.cm'),
				dataType : 'json',
				success : function(result){
					if(result.msg == 'SUCCESS'){
						createHtml(result.prod_idx);
						SITE_SHOP_DETAIL.changeContentTab('qna');
					}else
						alert(result.msg);
				}
			});
		}
	};

	var qnaModify = function(idx, prod_code, secret_pass, is_book,code){
		$.ajax({
			type : 'POST',
			data : {idx : idx, prod_code : prod_code, secret_pass : secret_pass, is_book : is_book, code : code},
			url : ('/shop/show_secret_qna.cm'),
			dataType : 'json',
			success : function(result){
				if(result.msg == 'SUCCESS'){
					qnaEditShow(idx);
				}else
					alert(result.msg);
			}
		});
	};

	var qnaShow = function(idx, prod_code, secret_pass, is_book,code){
		$.ajax({
			type : 'POST',
			data : {idx : idx, prod_code : prod_code, secret_pass : secret_pass, is_book : is_book, code : code},
			url : ('/shop/show_secret_qna.cm'),
			dataType : 'json',
			success : function(result){
				if(result.msg == 'SUCCESS'){
					$("._comment_body_"+idx).html(result.html);
					if(result.isSubComment){
						for(var i in result.sub_comment){
							var sub_data = result.sub_comment[i];
							$("._comment_child_"+idx+"_"+sub_data.idx).html(sub_data.html);
						}
					}
				}else
					alert(result.msg);
			}
		});
	};

	var qnaConfirmShow = function (e, idx, prod_code, type , code){
		$show_secret_password = $('#show_secret_password');
		if($show_secret_password.length == 0){
			$show_secret_password = $('<div class="remove-pop" id="show_secret_password" style="position:absolute; left:0;top:0;z-index:99999;"><p>'+LOCALIZE.설명_작성시등록하신비밀번호를입력해주세요()+'</p><div class="input_area"><input type="password" placeholder="'+LOCALIZE.설명_비밀번호()+'"><button class="btn btn-primary _confirm">'+LOCALIZE.버튼_확인닫기()+'</button></div></div>').hide();
			$('body').append($show_secret_password);
		}
		var $show_link = $(event.target);

		var top = $show_link.offset().top;
		var left = $show_link.offset().left;

		$show_secret_password.css({
			position : 'absolute',
			top : top,
			left : left
		});

		$show_secret_password.find('input').val('');
		$show_secret_password.show();
		$show_secret_password.off('click', '._confirm')
			.on('click', '._confirm', function(){
				var secret_pass = $show_secret_password.find('input').val();
				$show_secret_password.hide();
				switch(type){
					case 'show' :
						qnaShow(idx, prod_code, secret_pass, 'N',code);
						break;
					case 'modify' :
						qnaModify(idx, prod_code, secret_pass, 'N',code);
						break;
					case 'delete' :
						qnaDelete(code, prod_code, secret_pass);
						break;

				}
			});
		$('body').off('mousedown.show_secret')
			.on('mousedown.show_secret', function(e){
				var $tmp = $(e.target).closest('#show_secret_password');
				if($tmp.length == 0){
					$show_secret_password.hide();
					$('body').off('click.show_secret');
				}
			});
	};

	var imageUploadInit = function(n){
		$("#sub_qna_image_box_" + n).hide();

		$('#sub_qna_image_upload_btn_' + n).setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#sub_qna_image_box_" + n).show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#sub_qna_image_box_" + n).append(html);
				}else{
					alert(tmp.error);
				}
			});
		});

		$('#editor_qna_image_upload_btn_' + n).setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#editor_qna_image_box_" + n).show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#editor_qna_image_box_" + n).append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
	};

	var submit = function(t, type, i){
		switch(type){
			case 'main': // PC 형태 form Q&A
				var data = $form.serializeObject();
				break;
			case 'sub_form': //PC 형태 form Q&A 댓글
				var data = $('#sub_qna_form_' + i).serializeObject();
				break;
			case 'editor': // PC 형태 form Q&A 수정
				var data = $('#sub_qna_editor_form_' + i).serializeObject();
				break;
			case 'mobile': // Mobile 형태 form Q&A
				var data = $('#mobile_qna_form').serializeObject();
				break;
			case 'mobile_sub_form': // Mobile 형태 form Q&A 댓글
				var data = $('#mobile_sub_qna_form_' + i).serializeObject();
				break;
			case 'mobile_editor': // Mobile 형태 form Q&A 수정
				var data = $('#mobile_sub_qna_editor_form_' + i).serializeObject();
				break;
		}
		if(!t.hasClass("btn-writing")){
			t.addClass("btn-writing");
		}

		$.ajax({
			type : 'POST',
			data : {data : data, type : type},
			url : ('/shop/add_qna.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(t.hasClass("btn-writing")){
					t.removeClass("btn-writing");
				}
				if(result.msg == 'SUCCESS'){
                    if(type=='main'||type=='mobile') document.getElementById("first_qna").scrollIntoView();
					createHtml(result.prod_idx);
					SITE_SHOP_DETAIL.changeContentTab('qna');
				}else
					alert(result.msg);
			}
		});
	};

	var createHtml = function(prod_idx, review_page, qna_page, paging_on){
		$qna_wrap = $('._qna_wrap');
		$.ajax({
			type : 'POST',
			data : {prod_idx : prod_idx, review_page : review_page, qna_page : qna_page},
			url : ('/shop/prod_qna_pc_html.cm'),
			dataType : 'html',
			cache : false,
			success : function(result){
				$qna_wrap.html(result);
				if(paging_on) document.getElementById("first_qna").scrollIntoView();
			}
		});
	};


	return {
		init : function(){
			init();
		},
		initMobileQna : function(){
			initMobileQna();
		},
		submit : function(t, type, i){
			submit(t, type, i);
		},
		FormShow : function(t){
			qnaFormShow(t);
		},
		Delete : function(code, prod_code){
			qnaDelete(code, prod_code);
		},
		EditShow : function(t){
			qnaEditShow(t);
		},
		EditHide : function(t){
			qnaEditHide(t);
		},
		imageUploadInit : function(n){
			imageUploadInit(n);
		},
		createHtml : function(prod_idx, review_page, qna_page,paging_on){
			createHtml(prod_idx, review_page, qna_page,paging_on);
		},
		confirmShow : function(e, idx, prod_code, type, code){
			qnaConfirmShow(e, idx, prod_code, type, code);
		}
	}
}();

var SITE_PERSONAL_QNA = function(){
	var $personal_qna_wrap;
	var $mobile_qna_wrap;
	var $form;
	var $mobile_form;
	var $comment_body;
	var $qna_image_box;
	var $comment_area;
	var $secret;

	var init = function(){
		$form = $('#qna_form');
		$secret = $form.find('._secret');

		$secret.on('click', function(){
			if($secret.hasClass('active')){
				$secret.removeClass('active');
				$form.find('#secret').val('N');
			}else{
				$secret.addClass('active');
				$form.find('#secret').val('Y');
			}
		});

		$('#qna_image_upload_btn').setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#qna_image_box").show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#qna_image_box").append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
		autosize($('.textarea_block textarea'));
	};

	var submit = function(t, type, i){
		switch(type){
			case 'main': // 1:1 문의 페이지에서 바로 작성하는 폼
				var data = $form.serializeObject();
				break;
			case 'sub_form': // 등록되어 있는 qna에 답변을 다는 폼
				var data = $('#sub_qna_form_' + i).serializeObject();
				break;
			case 'editor': // 등록되어 있는 qna를 수정하는 폼
				var data = $('#sub_qna_editor_form_' + i).serializeObject();
				break;
		}
		if(!t.hasClass("btn-writing")){
			t.addClass("btn-writing");
		}
		$.ajax({
			type : 'POST',
			data : {data : data, type : type, personal_qna : 'Y'},
			url : ('/shop/add_qna.cm'),
			dataType : 'json',
			cache : false,
			success : function(result){
				if(t.hasClass("btn-writing")){
					t.removeClass("btn-writing");
				}
				if(result.msg == 'SUCCESS'){
					createHtml(result.page);
				}else
					alert(result.msg);
			}
		});
	};

	var Delete = function(code, prod_code){
		if(confirm(LOCALIZE.설명_삭제하시겠습니까())){
			$.ajax({
				type : 'POST',
				data : {code : code, prod_code : prod_code},
				url : ('/shop/delete_qna.cm'),
				dataType : 'json',
				success : function(result){
					if(result.msg == 'SUCCESS'){
						createHtml();
					}else
						alert(result.msg);
				}
			});
		}
	};

	var FormShow = function(t){
		var sub_form = $("._sub_form_" + t);

		sub_form.data('show', 'Y');
		sub_form.show();
		var comment_add_body = sub_form.find('._comment_add_body_' + t);

		$('body').off('mouseup.sub_comment')
			.on('mouseup.sub_comment', function(e){
				var $c_target = $(e.target);
				var $s_form = $c_target.closest('._sub_form_' + t + ', ._show_sub_form_btn_' + t);
				if($s_form.length == 0){

					var text = comment_add_body.val();
					sub_form.data('show', 'N');
					if(text == ''){
						$('body').off('mouseup.sub_comment');
						FormHide();
					}
				}
			});
	};

	var FormHide = function(){
		$("._sub_qna_form").hide();
	};

	var EditShow = function(t){
		var editor_form = $("._sub_form_editor_" + t);
		editor_form.siblings().hide();
		editor_form.data('show', 'Y');
		editor_form.show();
	};

	var EditHide = function(t){
		var editor_form = $("._sub_form_editor_" + t);
		editor_form.hide();
		editor_form.siblings('.block-postmeta').show();
	};

	var imageUploadInit = function(n){
		$("#sub_image_box_" + n).hide();

		$('#sub_image_upload_btn_' + n).setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#sub_image_box_" + n).show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#sub_image_box_" + n).append(html);
				}else{
					alert(tmp.error);
				}
			});
		});

		$('#editor_image_upload_btn_' + n).setUploadImage({
			url : '/shop/upload_image.cm',
			dropZone : 'icon_img_upload_wrap',
			singleFileUploads : true,
			formData : {temp : 'Y'}
		}, function(res, data){
			$("#editor_image_box_" + n).show();
			$.each(data, function(e, tmp){
				if(tmp.error == "" || tmp.error == null){
					var url = CDN_UPLOAD_URL + tmp.url;
					var html = '<span class="file-add"><input type="hidden" name="img" value="' + tmp.name + '"><img src="' + url + '"><em class="del" onclick="POST_COMMENT.removeCommentImg($(this))"></em></span>';
					$("#editor_image_box_" + n).append(html);
				}else{
					alert(tmp.error);
				}
			});
		});
	};

	var createHtml = function(page){
		$personal_qna_wrap = $('._personal_qna_wrap');
		$.ajax({
			type : 'POST',
			data : {page:page},
			url : ('/shop/personal_qna_list.cm'),
			dataType : 'html',
			cache : false,
			success : function(result){
				$personal_qna_wrap.html(result);
			}
		});
	};



	return{
		init : function(){
			init();
		},
		submit : function(t, type, i){
			submit(t, type, i);
		},
		Delete : function(code, prod_code){
			Delete(code, prod_code);
		},
		FormShow : function(t){
			FormShow(t);
		},
		EditShow : function(t){
			EditShow(t);
		},
		EditHide : function(t){
			EditHide(t);
		},
		imageUploadInit : function(n){
			imageUploadInit(n);
		},
		createHtml : function(page){
			createHtml(page);
		}
	}
}();