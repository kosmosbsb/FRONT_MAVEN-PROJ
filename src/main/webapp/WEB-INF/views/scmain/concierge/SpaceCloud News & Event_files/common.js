var console = window.console || {'log':function(){}};
function log(){
	var console = window.console;

	if (console && console.log) {
		return console.log.apply(console, arguments);
	}
}
/**
 * 엔터키 체크
 */
function checkEnter(e){
	var checkEnter_k = false;
	var code = (e.keyCode ? e.keyCode : e.which);
	if(code == 13)
		checkEnter_k = true;
	else
		checkEnter_k = false;
	return checkEnter_k;
}
//ㅇㄹㄹㅇ
//파일 사이즈를 이쁘게 변환해서 리턴
function GetFileSize(size){
	if(size >= 1024 * 1024 * 1024)
		return Math.round((((size / 1024) / 1024) / 1024)) + " Gb";
	else if(size >= 1024 * 1024)
		return Math.round(((size / 1024) / 1024)) + " Mb";
	else if(size >= 1024)
		return Math.round((size / 1024)) + " Kb";
	else
		return Math.round(size) + " Byte";
}

//쿠키 생성
function setCookie(name, value, expiredays){
	if(expiredays == 0){
		document.cookie = name + "=" + encodeURIComponent(value) + "; path=/;";
	}else{
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = name + "=" + encodeURIComponent(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	}
}

//쿠키 읽기
function getCookie(name){
	var nameOfCookie = name + "=";
	var x = 0;
	while(x <= document.cookie.length){
		var y = (x + nameOfCookie.length);
		if(document.cookie.substring(x, y) == nameOfCookie){
			if((endOfCookie = document.cookie.indexOf(";", y)) == -1)
				endOfCookie = document.cookie.length;
			return decodeURIComponent(document.cookie.substring(y, endOfCookie));
		}
		x = document.cookie.indexOf(" ", x) + 1;
		if(x == 0)
			break;
	}
	return "";
}

function cancelDialog(){
	$('#dialog').dialog("close");
}

function makeUniq(prefix){
	var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
	var string_length = 10;
	var random_string = '';
	for(var x = 0; x < string_length; x++){
		var letterOrNumber = Math.floor(Math.random() * 2);
		if(letterOrNumber == 0){
			var newNum = Math.floor(Math.random() * 9);
			random_string += newNum;
		}else{
			var r_num = Math.floor(Math.random() * chars.length);
			random_string += chars.substring(r_num, r_num + 1);
		}
	}
	if(typeof prefix == 'undefined')
		return random_string;
	else
		return prefix + random_string;
}
/**
 * Created by cocoa-studio on 15. 3. 11..
 */
$.fn.serializeObject = function(){
	var o = {};
	var a = this.serializeArray();
	$.each(a, function(){
		if(typeof o[this.name] != 'undefined'){
			if(!o[this.name].push){
				o[this.name] = [o[this.name]];
			}
			o[this.name].push(this.value || '');
		}else{
			o[this.name] = this.value || '';
		}
	});
	return o;
};


$.fn.limitLength = function(option, add_event){
	option = option || {};
	add_event = add_event || false;
	var default_option = {
		max_byte : 3000,
		max_count_obj : '',
		count_count_obj : ''
	};

	var option = $.extend(default_option, option);
	var $input = this;

	// update 함수는 keyup, paste, input 이벤트에서 호출한다.
	var update = function(){
		var str_len = $input.val().length;
		var cbyte = 0;
		var li_len = 0;
		for(i = 0; i < str_len; i++){
			var ls_one_char = $input.val().charAt(i);
			if(encodeURI(ls_one_char).length > 4){
				cbyte += 2; //한글이면 2를 더한다
			}else{
				cbyte++; //한글아니면 1을 다한다
			}

			if(cbyte <= option.max_byte){
				li_len = i + 1;
			}
		}
		// 사용자가 입력한 값이 제한 값을 초과하는지를 검사한다.
		if(parseInt(cbyte) > parseInt(option.max_byte)){
			var str2 = $input.val().substr(0, li_len);
			$input.val(str2);
			var cbyte = 0;
			for(i = 0; i < $input.val().length; i++){
				var ls_one_char = $input.val().charAt(i);
				if(encodeURI(ls_one_char).length > 4){
					cbyte += 2; //한글이면 2를 더한다
				}else{
					cbyte++; //한글아니면 1을 다한다
				}
			}
		}
		if(option.count_count_obj.length > 0)
			option.count_count_obj.text(cbyte);
	};
	update();

	if(add_event){
		$input.off('input keyup keydown paste change')
			.on('input keyup keydown paste change', function(){
				setTimeout(function(){
					update();
				}, 0);
			});
	}


};

(function(){
	$.cocoaResizeData = {
		data_list : [],
		add : function(o){
			this.data_list.push($(o));
		},
		showData : function(){
			return this.data_list;
		},
		remove : function(i){
			this.data_list.splice(i, 1);
		},
		use_resize : true
	};
})();


$.fn.checkIframeLoaded = function(callback){
	var iframe = this;
	var iframeDoc = iframe[0],
		doc = iframeDoc.contentDocument || iframeDoc.contentWindow.document;

	if(doc.readyState == 'complete'){
		if(typeof callback == 'function'){
			callback();
		}
		return;
	}
	setTimeout(function(){
		iframe.checkIframeLoaded(callback);
	}, 100);
};

$.fn.scrollable = function(){
	return this.map(function(){
		var elem = this,
			isWin = !elem.nodeName || $.inArray(elem.nodeName.toLowerCase(), ['iframe', '#document', 'html', 'body']) != -1;

		if(!isWin){
			return elem;
		}


		var doc = (elem.contentWindow || elem).document || elem.ownerDocument || elem;

		return $.browser.safari || doc.compatMode == 'BackCompat' ?
			doc.body :
			doc.documentElement;
	});
};

/*
 $(window).resize(function(){
 if(typeof $.cocoaResizeData.use_resize == 'undefined') return false;
 if(!$.cocoaResizeData.use_resize) return false;
 $.each($.cocoaResizeData.showData(), function(i, obj){
 try {
 obj.imageResize(obj.data('data').width, obj.data('data').height, obj.data('data').ratio)
 }catch(e){
 $.cocoaResizeData.remove(i);
 }
 });
 });
 */
/**
 *
 * @param w 이미지 원래의 가로
 * @param h 이미지 원래의 세로
 * @param r 이미지 원래의 비율
 */
$.fn.imageResize = function(w, h, r, o, gh){
	var $obj = this;

	setTimeout(function(){
		w = parseFloat(w);
		h = parseFloat(h);
		r = parseFloat(r);
		gh = parseFloat(gh);
		var $parent = $obj.parent('._img_box');
		var $text_wrap = $obj.next('._txt_wrap');
		var pw = $parent.width();
		var img_ratio = Math.round((h * 100) / w) / 100;

		if($obj.length == 0)
			return;
		if(typeof o == 'undefined'){
			o = false;
		}

		//$obj.attr('doz_resize','');
		if(o == 'Y'){ //채우기가 아님
			//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|o=y');
			if(typeof gh == 'undefined'){
				gh = pw * r;
			}

			var fix_ratio = Math.round((gh * 100) / pw) / 100;

			if(img_ratio > fix_ratio){ // 화면 보다 이미지의 높이가 크면  이미지 높이를 꽉차게
				//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|img_ratio>fix_ratio');
				if(h > gh){ //
					//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|h>gh');
					$obj.css({
						'display' : 'inline-block',
						'width' : 'auto',
						'height' : gh,
						'margin' : '0 auto'
					});
				}else{
					//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|!h>gh');
					var h_term = (gh - h) / 2;
					$obj.css({
						'display' : 'inline-block',
						'width' : 'auto',
						'height' : h,
						'margin' : h_term + 'px auto'
					});
				}
			}else{ //화면 보다 이미지 넓이가 넓으므로 이미지 너비를 꽉차게
				//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|!img_ratio>fix_ratio');
				if(w > pw){
					//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|w>pw');
					var fix_h = pw * img_ratio;
					var h_term = (gh - fix_h) / 2;
					$obj.css({
						'display' : 'inline-block',
						'width' : pw,
						'height' : 'auto',
						'margin-top' : h_term + 'px',
						'margin-bottom' : h_term + 'px',
						'margin-left' : 'auto',
						'margin-right' : 'auto'
					});
				}else{
					//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|!w>pw');
					var w_term = (pw - w) / 2;
					var fix_h = w * img_ratio;
					var h_term = (gh - fix_h) / 2;
					var ma = h_term > 0 ? h_term + 'px ' : 'auto ';
					$obj.css({
						'display' : 'inline-block',
						'width' : w,
						'height' : 'auto',
						'margin' : ma + w_term + 'px'
					});
				}
			}
			if($text_wrap.length >0){
				$text_wrap.css({
					position : 'relative',
					margin : 'auto',
					'margin-top' : $obj.height() * (-1),
					width : $obj.width(),
					height : $obj.height()
				});

				$text_wrap.find('span').css({
					height : $obj.height()
				});
			}


		}else{ //채우기
			//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|o=n');
			if($parent.css('position') != 'absolute')
				$parent.height(pw * r);

			if(r != h / w){
				//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|r!=h/w');
				var ph = $parent.height();
				var wr = pw / w;
				if(wr * h > ph){
					//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|wr*h>ph');
					$obj.css({
						'display' : 'block',
						'width' : '100%',
						'height' : 'auto',
						'margin-top' : -(h * wr - ph) / 2,
						'margin-left' : 0
					})
				}else{
					//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|!wr*h>ph');
					var hr = ph / h;
					$obj.css({
						'display' : 'block',
						'width' : 'auto',
						'height' : '100%',
						'margin-top' : 0,
						'margin-left' : -(w * hr - pw) / 2
					})
				}
			}else{
				//$obj.attr('doz_resize',$obj.attr('doz_resize')+'|!r!=h/w');
				$obj.css({
					'display' : 'bock',
					'width' : '100%',
					'margin-top' : 0,
					'margin-left' : 0
				})
			}

			$text_wrap.css({
				width : $obj.width(),
				height: $parent.height(),
				top : $obj.position().top,
				left : $obj.position().left
			});

			$text_wrap.find('span').css({
				height: $parent.height()
			});
		}
	},1);
};

//중첩된 요소에서 하위에서 상위 중첩으로 가는 이벤트 전파를 중지
function cancelPropagation(event){
	if(event.stopPropagation){
		event.stopPropagation();
	}else{
		event.cancelBubble = true;
	}
}


$.fn.toggleClassClick = function(cls){
	$(this).click(function(e){
		$(this).toggleClass(cls);
	});
};


$.fn.setUploadImage = function(option, callback){
	var default_option = {
		dataType : 'json',
		singleFileUploads : false,
		limitMultiFileUploads : 200,
		formData : {temp : 'N'},
		dropZone : null,
		start : function(e, data){
			dozProgress.start();
			// TODO site 에서는 preloader 변수가 아직 없음
			//$preloader.show();
		},
		progress : function(e, data){
			dozProgress.increase(data.loaded);
			// Calculate the completion percentage of the upload
			var progress = parseInt(data.loaded / data.total * 100, 10);
			if(progress == 100){
				//	data.context.removeClass('working');
			}
		},
		done : function(e, data){
			dozProgress.done();
			if(typeof callback != 'undefined' && typeof callback == 'function'){
				callback('success', data.result.files, data.result);
			}else
				return data.result.files;
		},
		fail : function(e, data){
			dozProgress.done();
			if(typeof callback != 'undefined' && typeof callback == 'function'){
				callback('error');
			}else
				return 'error';
		}
	};
	var option = $.extend(default_option, option);
	$(this).find('input').attr('accept', '.jpg,.jpeg,.png,.gif');
	$(this).fileupload(option);
};


$.fn.setUploadFile = function(option, callback){
	var default_option = {
		dataType : 'json',
		singleFileUploads : false,
		limitMultiFileUploads : 200,
		formData : {temp : 'N'},
		dropZone : null,
		add: function(e, data) {
			if(data.originalFiles[0]['size'] > 104857600)
				alert(LOCALIZE.설명_최대업로드용량안내());
			else data.submit();
		},
		start : function(e, data){
			dozProgress.start();
		},
		progress : function(e, data){
			dozProgress.increase(data.loaded);
			// Calculate the completion percentage of the upload
			var progress = parseInt(data.loaded / data.total * 100, 10);
			if(progress == 100){
				//	data.context.removeClass('working');
			}
		},
		done : function(e, data){
			dozProgress.done();
			if(typeof callback != 'undefined' && typeof callback == 'function'){
				callback('success', data.result.files, data.result);
			}else
				return data.result.files;
		},
		fail : function(e, data){
			dozProgress.done();
			if(typeof callback != 'undefined' && typeof callback == 'function'){
				callback('error');
			}else
				return 'error';
		}
	};
	var option = $.extend(default_option, option);
	$(this).fileupload(option);
};


(function(){
	/**
	 * o.cls        - css class
	 * o.change     - click event callback function
	 *
	 * @param el
	 * @param o
	 */
	var check = function(el, o){
		this.element = $(el);
		this.label = this.element.find('label');
		if(this.label.length == 0)
			this.label = this.element.find('.label');
		if(this.label.length == 0)
			this.label = this.element;

		this.is_label = this.label.get(0).tagName == 'LABEL';


		this.input = this.element.find('input');
		this.o = o;

		this.init();
	};

	check.prototype.init = function(){
		var that = this;

		if(that.is_label){
			that.input
				.off('change')
				.on('change', function(){
					that.change(that.input.prop("checked"));
				});
		}else{
			that.label
				.off('click')
				.on('click', function(){
					if(that.input.prop("disabled"))
						return false;
					if(that.input.prop("checked"))
						that.input.prop("checked", false);
					else
						that.input.prop("checked", true);
					that.change(that.input.prop("checked"));
				});
		}

		that.input.prop("checked", that.o.value);

		if(typeof that.o.disable != 'undefined' && that.o.disable == true){
			this.disable();
		}else{
			this.enable();
		}

	};

	check.prototype.change = function(bool){
		if(typeof this.o.change == 'function')
			this.o.change(bool);
	};

	check.prototype.get = function(){
		return this.input.prop('checked');
	};
	check.prototype.set = function(res){
		return this.input.prop('checked', res);
	};
	check.prototype.disable = function(){
		this.input.prop("disabled", true);
		this.label.toggleClass('disabled', true);
	};
	check.prototype.enable = function(){
		this.input.prop("disabled", false);
		this.label.toggleClass('disabled', false);
	};
	check.prototype.destroy = function(){
		this.element.data("setCheck", false);
	};

	function PLUGIN(o, v){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('setCheck');
			if(!data) obj.data('setCheck', (data = new check(obj, o)));
			return data[o](v);
		}else if(typeof o == 'object'){
			var data = obj.data('setCheck');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setCheck', (data = new check(obj, o)));
		}
		return this;
	}
	$.fn.setCheck = PLUGIN;

})();

(function(){
	var cssSwitch = function(el,callback){
		this.$element = $(el);
		this.init();
	};

	cssSwitch.prototype.init = function(){
		var that = this;
	};

	cssSwitch.prototype.change = function(url,callback){
		var link = url+"&"+makeUniq();
		this.$element.attr("href", link);
		var img = document.createElement('img');
		img.onerror = function(){
			if(typeof callback == 'function')
				callback(link);
		};
		img.src = url;
	};
	function PLUGIN(o, v){
		var $obj = $(this);
		if(typeof o == 'string'){
			var data = $obj.data('cssSwitch');
			if(!data) $obj.data('cssSwitch', (data = new cssSwitch($obj)));
			return data.change(o,v);
		}
		return this;
	}
	$.fn.cssSwitch = PLUGIN;

})();

function isEnter(e){
	return e.keyCode == 13;
}
function isEsc(e){
	return e.keyCode == 27;
}


function base64Encode(str){
	var output = "";
	var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
	var i = 0;
	var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

	while (i < str.length) {

		chr1 = str.charCodeAt(i++);
		chr2 = str.charCodeAt(i++);
		chr3 = str.charCodeAt(i++);

		enc1 = chr1 >> 2;
		enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
		enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
		enc4 = chr3 & 63;

		if (isNaN(chr2)) {
			enc3 = enc4 = 64;
		} else if (isNaN(chr3)) {
			enc4 = 64;
		}

		output = output +
			keyStr.charAt(enc1) + keyStr.charAt(enc2) +
			keyStr.charAt(enc3) + keyStr.charAt(enc4);

	}

	return output;
}

function base64Decode(str){
	var output = "";
	var chr1, chr2, chr3;
	var enc1, enc2, enc3, enc4;
	var i = 0;
	var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

	str = str.replace(/[^A-Za-z0-9+/=]/g, "");

	while (i < str.length)
	{
		enc1 = keyStr.indexOf(str.charAt(i++));
		enc2 = keyStr.indexOf(str.charAt(i++));
		enc3 = keyStr.indexOf(str.charAt(i++));
		enc4 = keyStr.indexOf(str.charAt(i++));

		chr1 = (enc1 << 2) | (enc2 >> 4);
		chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
		chr3 = ((enc3 & 3) << 6) | enc4;

		output = output + String.fromCharCode(chr1);

		if (enc3 != 64) {
			output = output + String.fromCharCode(chr2);
		}
		if (enc4 != 64) {
			output = output + String.fromCharCode(chr3);
		}
	}

	return output;
}

(function(){
	/**
	 * o.event      - event 목록
	 * o.default    - default value
	 * o.change     - event callback function
	 *
	 * @param el
	 * @param o
	 */
	var input = function(el, o){
		var default_option = {
			'default' : ''
		};
		this.element = $(el);
		this.o = o;
		this.o = $.extend(default_option, this.o);

		this.trigger_event = ['blur', 'enter'];

		this.disabled = false;

		this.init();
	};

	input.prototype.init = function(){
		var that = this;
		if(typeof that.o['default'] != 'undefined')
			that.element.val(that.o['default']);

		if(typeof this.o.event != 'undefined'){
			this.trigger_event = $.merge(this.o.event,this.trigger_event);
		}


		if($.inArray('no_blur',this.trigger_event) > -1 ){

			this.trigger_event = deleteArrayValue(this.trigger_event,'blur');
			this.trigger_event = deleteArrayValue(this.trigger_event,'no_blur');

		}


		$.each(this.trigger_event, function(i, k){
			that[k]();
		});
	};

	input.prototype.blur = function(){
		var that = this;
		this.element.off('blur');
		if(!that.disabled){
			this.element.on('blur', function(e){
				that.change($(this).val());
			});
			if(this.element[0].tagName != 'TEXTAREA'){
				this.element.off('keypress.bl-enter');
				this.element.on('keypress.bl-enter', function(e){
					if(e.keyCode == 13){
						that.element.blur();
					}
				});
			}
		}
	};

	input.prototype.keyup = function(){
		var that = this;
		this.element.off('keyup');
		this.element.on('keyup', function(e){
			that.change($(this).val());
		});
	};

	input.prototype.keydown = function(){
		var that = this;
		this.element.off('keydown');
		this.element.on('keydown', function(e){
			that.change($(this).val());
		});
	};

	input.prototype.keypress = function(){
		var that = this;
		this.element.off('keypress');
		this.element.on('keypress', function(e){
			that.change($(this).val());
		});
	};

	input.prototype.enter = function(){
		var that = this;
		this.element.off('keypress');
		this.element.on('keypress', function(e){
			if(e.keyCode == 13){
				that.change($(this).val());
			}
		});
	};

	input.prototype.change = function(data){
		this.o['default'] = data;
		this.o.change(data);
	};

	input.prototype.get = function(){
		return this.element.val();
	};

	input.prototype.set = function(value){
		return this.element.val(value);
	};


	/** 블러 이벤트 활성 비활성 **/
	input.prototype.setDisable = function(){
		this.disabled = true;
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
	};
	input.prototype.setEnable = function(){
		this.disabled = false;
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
	};

	input.prototype.disable = function(){
		this.disabled = true;
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
	};
	input.prototype.enable = function(){
		this.disabled = false;
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
	};

	input.prototype.destroy = function(){
		this.element.data('setInput',false);
	};

	function PLUGIN(o, d){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('setInput');
			if(!data) obj.data('setInput', (data = new input(obj, o)));
			return data[o](d);
		}else if(typeof o == 'object'){
			var data = obj.data('setInput');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setInput', (data = new input(obj, o)));
		}
		return this;
	}

	$.fn.setInput = PLUGIN;

})();

(function(){
	/**
	 * o.event      - event 목록
	 * o['default']    - default value
	 * o.change     - event callback function
	 *
	 * @param el
	 * @param o
	 */
	var colorPicker = function(el, o){
		this.id = makeUniq(); //makeUniq();
		this.element = $(el);
		this.o = o;
		this.value;
		this.color;
		this.$container = {};
		this.MAX_RECENT_COLOR_COUNT = 7;		// 최근 사용 컬러 표시 수
		this.defaults = {
			'value' : '',
			'mode' : 'input',
			'class' : 'doz-colorpicker',
			'disable' : false,
			'horizontal' : true,
			'format' : 'rgba',
			'container' : 'body',
			'default_hex' : '#000',
			'brand_color' : '#000'
		};
		this.options = $.extend(this.defaults,o);

		this.template = '<div class="colorpicker dropdown-menu">' +
			'<div class="colorpicker-saturation"><i><b></b></i></div>' +
			'<div class="color-wrap">' +
			'<div class="colorpicker-color"><div /></div>' +
			'</div>' +
			'<div class="hue-alpha-wrap">' +
			'<div class="colorpicker-hue"><i></i></div>';
		if(this.options.format != 'hex'){			// alpha picker를 사용할 때
			this.template += '<div class="colorpicker-alpha"><i></i></div>';
		}
		this.template += '</div>' +
			'<div class="colorpicker-selectors"></div>' +
			'</div>';

		this.init();
	};

	colorPicker.prototype.init = function(){
		var that = this;

		that.options.value = that.getColorString(that.options.value);

		// 최근 사용 컬러
		var recentColor = localStorage.getItem('recentColor');
		var recentColorArray = [];
		if (recentColor) {
			try {
				recentColorArray = JSON.parse(recentColor);
			}catch(e){
				// localStorage에 옳지 않은 값이 있을 경우 초기화
				localStorage.removeItem('recentColor');
			}
		}
		that.options.recent_color = recentColorArray;

		that.makeColorPicker();

		if(that.options.disable == true){
			this.disable();
		}
	};


	colorPicker.prototype.getColorString = function(value){
		if(this.options.default_hex == '' && value == ''){
			return '';
		}else{
			if(value == '')
				value = this.options.default_hex;
			var color = tinycolor(value);
			var alpha = color.getAlpha();
			// 투명도 5% 단위로 조절
			alpha = Math.floor(Math.round(alpha * 20)) / 20;
			color = color.setAlpha(alpha);
			if(alpha <1){
				return color.toRgbString();
			}else{
				return color.toHexString('hex');
			}
		}
	};

	colorPicker.prototype.stop = function(data){
		var that = this;
		that.value = data;
		if(typeof that.o.stop == 'function')
			that.o.stop(data);

		if(data != that.brand_color){		// 브랜드 컬러와 동일할 경우 업데이트하지 않음
			var recentColor = localStorage.getItem('recentColor');
			var recentColorArray = [];
			if(!recentColor){		// localStorage에 최근 사용 컬러가 없을 경우 저장
				recentColorArray.unshift(data);
			}else{
				try{
					recentColorArray = JSON.parse(recentColor);
					// 기존에 중복된 컬러가 존재 시 제거
					if(recentColorArray.indexOf(data) != -1){
						recentColorArray.splice(recentColorArray.indexOf(data), 1);
					}
					recentColorArray.unshift(data);
					if(recentColorArray.length > that.MAX_RECENT_COLOR_COUNT){
						recentColorArray.pop();
					}
				}catch(e){		// localStorage에 옳지 않은 값이 있을 경우 초기화 후 최근 사용 컬러 저장
					localStorage.removeItem('recentColor');
					recentColorArray.unshift(data);
				}
			}
			var recentColorJson = JSON.stringify(recentColorArray);
			localStorage.setItem('recentColor', recentColorJson);
		}
	};


	colorPicker.prototype.change = function(data){
		this.value = data;
		if(typeof this.o.change == 'function')
			this.o.change(data);
	};

	colorPicker.prototype.get = function(){
		return this.value;
	};

	colorPicker.prototype.create = function(){
		var that = this;
		if(typeof that.o.create == 'function')
			that.o.create({
				'$input' : that.$container.find('input'),
				'$container' : that.$container
			});
	};

	colorPicker.prototype.hideContainer = function(){
		this.$container.hide();
	};

	colorPicker.prototype.makeColorPicker = function(){
		var that = this;

		that.makeInputButton();

		that.$container = $('<div />').addClass(that.options['class']).attr('id', that.id).hide();
		var $picker_wrap = $('<div class="_picker_wrap"/>');
		var $input_wrap = $('<div class="input"><input type="text" class="dz-form-control" /></div>');
		var $input = $input_wrap.find('input');
		$input.off('keypress').on('keypress',function(e){
			if(checkEnter(e)){
				var _rgba = that.getColorString($(this).val());
				$(this).val(_rgba);
				that.stop(_rgba);
				that.options.value = _rgba;
				$picker_wrap.colorpicker('setValue', _rgba);
			}
		});

		that.options.value = that.options.value==''?that.options.default_hex : that.options.value;

		$input.val(that.getColorString(that.options.value));
		$picker_wrap
			.colorpicker({
				color: that.options.value,
				container: true,
				inline: true,
				horizontal : that.options.horizontal,
				template: that.template,
				format : that.options.format,
				sliders: {
					saturation: {
						maxLeft: 200,
						maxTop: 200,
						callLeft: 'setSaturation',
						callTop: 'setBrightness'
					},
					hue: {
						maxLeft: 0,
						maxTop: 200,
						callLeft: false,
						callTop: 'setHue'
					},
					alpha: {
						maxLeft: 0,
						maxTop: 200,
						callLeft: false,
						callTop: 'setAlpha'
					}
				},
				slidersHorz: {
					saturation: {
						maxLeft: 200,
						maxTop: 200,
						callLeft: 'setSaturation',
						callTop: 'setBrightness'
					},
					hue: {
						maxLeft: 161,
						maxTop: 0,
						callLeft: 'setHue',
						callTop: false
					},
					alpha: {
						maxLeft: 161,
						maxTop: 0,
						callLeft: 'setAlpha',
						callTop: false
					}
				}
			})
			.off('changeColor.colorpicker')
			.on('changeColor.colorpicker', function(e){


				var $hue_slider = that.$container.find('.colorpicker-hue i');
				var $saturation = that.$container.find('.colorpicker-saturation');
				// hue slider가 우측 끝에 있을 떄 saturation 배경이 slider가 아니라 picker에 따라 변경되는 현상이 있어 saturation 배경 고정
				if($hue_slider.css('left)') == '161px') $saturation.css('background-color', 'rgb(255, 0, 0)');

				var _color = that.getColorString(e.color.toString());
				if(that.options.default_hex == '' && (_color == 'rgba(0, 0, 0, 0)' || _color == 'rgba(0,0,0,0)' || _color == 'transparent'))
					_color = '';
				that.change(_color);
				$input.val(_color);

				that.updateInputButton(_color);
				that.updatePreset();
			});

		$picker_wrap.append($input_wrap);
		that.$container
			.empty()
			.css('position', 'absolute')
			.append($picker_wrap);

		$(that.options.container).append(that.$container);


		var hideContainer = function(){
			var _rgba =  '';
			if(that.options.default_hex == '' && $input.val() == ''){
				_rgba =  '';
			}else{
				var _color = tinycolor($input.val());
				_rgba = _color.toString();
			}


			that.stop(_rgba);
			that.options.value = _rgba;
			$('body').data('colorpicker', 'N');
			that.$container.hide();
			$(window).off('resize.' + that.id);
			$(document).off('scroll.' + that.id);
			$('#cocoaModal, #cocoaSubModal').off('scroll.' + that.id);
			$(document).off('mousedown.' + that.id);
		};

		var setPosition = function(){
			var width = that.element.outerWidth();
			var offset = that.element.offset();

			var height = that.element.outerHeight();
			var window_height = $(window).height();
			var window_width = $(window).width();
			var window_scroll = $(window).scrollTop();
			var select_offset_t = offset.top - window_scroll; //절대적인 화면상의 좌표
			var select_offset_l = offset.left; //절대적인 화면상의 좌표
			var select_container_h = that.$container.outerHeight();
			var select_container_w = that.$container.outerWidth();

			var obj_h = Math.round(select_offset_t + height + select_container_h); //절대적 화면상의 좌표에서 설렉트박스의 높이와 옵션의 높이의 합( 옵션이 열렸을때 옵션의 맨 아래 좌표값)
			var obj_w = Math.round(select_offset_l + select_container_w); //절대적 화면상의 좌표에서 설렉트박스의 높이와 옵션의 높이의 합( 옵션이 열렸을때 옵션의 맨 아래 좌표값)
			if(window_height < obj_h){
				if(offset.top > 350){
					that.$container.css('top', select_container_h * (-1) + offset.top);
				}else{
					that.$container.css('top', offset.top + height);
				}
			}else{
				that.$container.css('top', offset.top + height);
			}

			var left = offset.left;
			if(window_width < obj_w){
				if(offset.left > 350){
					left = offset.left -(select_container_w - width);
				}
			}
			that.$container.css({
				'position' : 'absolute',
				'z-index' : 19000,
				'left' : left
			});
		};

		var showContainer = function(){
			setPosition();
			if(that.options.default_hex == '' && that.options.value ==''){

			}else
				$picker_wrap.colorpicker('setValue', that.options.value);
			$(document).off('focusin.bs.modal');
			that.$container.show();
			//$input.focus();
			$('body').data('colorpicker', 'Y');
			$(window).off('resize.' + that.id);
			$(window).on('resize.' + that.id, function(e){
				setPosition();
			});
			$('#cocoaModal, #cocoaSubModal').off('scroll.' + that.id);
			$('#cocoaModal, #cocoaSubModal').on('scroll.' + that.id, function(e){
				setPosition();
			});
			$(document).off('scroll.' + that.id);
			$(document).on('scroll.' + that.id, function(e){
				setPosition();
			});
			$(document).off('mousedown.' + that.id);
			$(document).on('mousedown.' + that.id + ' mousepress.' + that.id, function(e){
				var $target = $(e.target);
				if($target.closest(that.$container).length == 0){
					cancelPropagation(e);
					e.preventDefault();
					hideContainer();
				}
			});
		};


		if(that.options.mode == 'input'){
			that.element.find('.color_pick').off('click').on('click', function(){
				if(!$(this).prop('disabled'))
					showContainer();
			});
			that.element.find('input').off('blur').on('blur',function(){
				var _val  = $(this).val();
				if(_val == '')
					_val = that.options.default_hex;

				if(_val == ''){
					that.stop('');
					that.change('');
					that.options.value = '';
					$picker_wrap.colorpicker('setValue', 'transparent');
					$(this).val('');
				}else{
					var _rgba = that.getColorString(_val);
					$(this).val(_rgba);
					that.stop(_rgba);
					that.options.value = _rgba;
					$picker_wrap.colorpicker('setValue', _rgba);
				}
			});
			that.element.find('input').off('keypress').on('keypress',function(e){
				if(checkEnter(e)){
					var _rgba = that.getColorString($(this).val());
					$(this).val(_rgba);
					that.stop(_rgba);
					that.options.value = _rgba;
					$picker_wrap.colorpicker('setValue', _rgba);
				}
			});
		}else{
			that.element.off('click').on('click', function(){
				if(!$(this).prop('disabled'))
					showContainer();
			});
		}
		that.create();
	};

	colorPicker.prototype.setValue = function(value){
		var that = this;
		var val = that.getColorString(value);
		that.options.value = val;
	};

	colorPicker.prototype.updateInputButton = function(value){
		var that = this;
		if(that.options.mode == 'input'){
			that.element.find('input').val(value);
			that.element.find('.frame_box').css('background-color',value);
		}else if(that.options.mode == 'button' || that.options.mode == 'btn'){
			that.element.find('.frame_box').css('background-color',value);
		}
	};

	colorPicker.prototype.makeInputButton = function(){
		var that = this;

		if(that.options.mode == 'input'){
			var $color_picker_wrap = $('<div/>');
			var $color_picker_input = $('<input class="dz-form-control" type="text" maxlength="25">');
			var $color_picker_add_on = $('<div class="color_pick input-group-addon" style="left: auto; right: 0; z-index: 99"><span class="color"></span><i class="frame_box fr_20"></i></div>');
			$color_picker_input.val(that.options.value);
			$color_picker_add_on.find('i').css('background-color',that.options.value);
			$color_picker_wrap.append($color_picker_input);
			$color_picker_wrap.append($color_picker_add_on);
			that.element
				.empty()
				.css('position', 'relative')
				.append($color_picker_wrap);
		}else if(that.options.mode == 'button' || that.options.mode == 'btn'){
			var $color_picker_wrap = $('<div><span class="color"></span><i class="frame_box fr_20"></i></div>');
			$color_picker_wrap.find('.frame_box').css('background-color',that.options.value);
			that.element
				.addClass('color_pick color_pick_btn input-group-addon')
				.empty()
				.append($color_picker_wrap);
		}
	};

	colorPicker.prototype.updatePreset = function(){
		var that = this;

		// 최근 사용 컬러
		var recentColor = localStorage.getItem('recentColor');
		var recentColorArray = [];
		if (recentColor) {
			try {
				recentColorArray = JSON.parse(recentColor);
			}catch(e){
				// localStorage에 옳지 않은 값이 있을 경우 초기화
				localStorage.removeItem('recentColor');
			}
		}
		that.options.recent_color = recentColorArray;

		// 최근 추가 색상 컨테이너 추가
		that.$container.find('.recent-color-wrap').remove();
		var $_picker_wrap = that.$container.find('._picker_wrap');
		var $colorpicker = that.$container.find('.colorpicker');
		var $recent_color_wrap = $('<div class="recent-color-wrap"/>');
		var $preset_color_array = [];
		$preset_color_array.push(that.options.brand_color);			// 프리셋 컬러 첫 번째는 브랜드 컬러
		$preset_color_array = $preset_color_array.concat(that.options.recent_color);
		for(var i = 0; i < $preset_color_array.length; i++) {
			var $recent_color = $('<div class="colorpicker-preset"></div>');
			if(that.options.format == 'hex'){ // alpha picker를 사용하지 않을 때 alpha 제거
				// 선택하지 않을 경우 alpha가 제거된 상태로 보여지더라도 localStorage 상에는 alpha 포함된 상태 그대로 있도록 css 컬러만 수정
				$recent_color.css('background-color', tinycolor($preset_color_array[i]).setAlpha(1));
			}else{
				$recent_color.css('background-color', $preset_color_array[i]);
			}
			// 프리셋 색상 클릭 이벤트
			$recent_color.click(function(){
				var value = $(this).css('background-color');
				// alpha picker를 사용하지 않을 때 alpha 제거
				// alpha가 제거된 color를 선택할 경우 localStorage에 alpha가 제거된 색상이 들어감
				if(that.options.format =='hex') value = tinycolor(value).setAlpha(1).toHexString();
				var _rgba = that.getColorString(value);
				$(this).val(_rgba);
				that.change(_rgba);
				that.options.value = _rgba;
				$_picker_wrap.colorpicker('setValue', _rgba);
			});
			$recent_color_wrap.append($recent_color);
		}
		// colorpicker 안에 포함되어야 텍스트 위젯에서 인식
		$colorpicker.append($recent_color_wrap);
	};

	colorPicker.prototype.destroy = function(){
		this.element.data('setColorPicker', false);
	};
	colorPicker.prototype.disable = function(){
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
		this.element.find('input').prop("disabled", true);
		this.element.find('input').toggleClass("disabled", true);
	};
	colorPicker.prototype.enable = function(){
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
		this.element.find('input').prop("disabled", false);
		this.element.find('input').toggleClass("disabled", false);
	};

	function PLUGIN(o,v){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('setColorPicker');
			if(!data) obj.data('setColorPicker', (data = new colorPicker(obj, o)));
			return data[o](v);
		}else if(typeof o == 'object'){
			var data = obj.data('setColorPicker');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setColorPicker', (data = new colorPicker(obj, o)));
		}
		return this;
	}

	$.fn.setColorPicker = PLUGIN;

})();

(function(){
	/**
	 * o.event      - event 목록
	 * o['default']    - default value
	 * o.change     - event callback function

	 * @param el
	 * @param o
	 */
	var setSpinner = function(el, o){
		this.element = $(el);
		this.o = o;
		this.value;
		this.prefix = '';
		this.precision = 0;
		this.step = 1;
		this.min = -1000;
		this.max = 1000;
		this.first = true;

		this.init();
	};

	setSpinner.prototype.init = function(){
		var that = this;

		this.o.value = typeof this.o.value == 'undefined' ? '0' : this.o.value;
		this.o.mode = typeof this.o.mode == 'undefined' ? '' : this.o.mode;


		switch(this.o.mode){
			case 'shop_prod_thumb_width' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 10;
				this.max = 1000;
				break;
			case 'shop_prod_list_interval' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 100;
				break;
			case 'grid_gutter' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 30;
				break;
			case 'font_size' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 9;
				this.max = 144;
				break;
			case 'square_flag_size' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 5;
				this.max = 50;
				break;
			case 'circle_flag_size' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 5;
				this.max = 60;
				break;

			case 'date' :
				this.readonly = false;
				this.prefix = '일';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 365;
				break;
			case 'line_height' :
				this.readonly = false;
				this.prefix = '';
				this.precision = 1;
				this.step = 0.1;
				this.min = 1.0;
				this.max = 4.0;
				break;
			case 'effect_time' :
				this.readonly = false;
				this.prefix = '';
				this.precision = 1;
				this.step = 0.1;
				this.min = 0;
				this.max = 4.0;
				break;
			case 'effect_wait' :
				this.readonly = false;
				this.prefix = '';
				this.precision = 0;
				this.step = 1;
				this.min = 1;
				this.max = 180;
				break;
			case 'indent' :
				this.readonly = false;
				this.prefix = '';
				this.precision = 0;
				this.step = 1;
				this.min = -2;
				this.max = 3;
				break;
			case 'margin' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 1000;
				break;
			case 'border_size_pixel' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 1920;
				break;
			case 'interval' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = -30;
				this.max = 1000;
				break;
			case 'border_size' :
				this.readonly = false;
				this.prefix = '%';
				this.precision = 0;
				this.step = 1;
				this.min = 1;
				this.max = 100;
				break;
			case 'border' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 10;
				break;
			case 'document_width' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 4;
				this.min = 900;
				this.max = 1920;
				break;
			case 'map_zoom':
				this.readonly = false;
				this.prefix = '';
				this.precision = 0;
				this.step = 1;
				this.min = 1;
				this.max = 20;
				break;
			case 'radius':
			case 'round':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 20;
				break;
			case 'logo':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 10;
				this.max = 1000;
				break;
			case 'section_height':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 10;
				this.min = 40;
				this.max = 10000;
				break;
			case 'icon_height':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 10;
				this.max = 1500;
				break;
			case 'answer_suggestion':
				this.readonly = false;
				this.prefix = '';
				this.precision = 0;
				this.step = 1;
				this.min = 1;
				this.max = 1000;
				break;
			case 'text_height':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 10000;
				break;
			case 'side_width':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 100;
				this.max = 600;
				break;
			case 'letter_spacing':
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = -3;
				this.max = 5;
				break;
			case 'header_height' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 10;
				this.max = 200;
				break;
			case 'position' :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = -200;
				this.max = 200;
				break;
			default :
				this.readonly = false;
				this.prefix = 'px';
				this.precision = 0;
				this.step = 1;
				this.min = 0;
				this.max = 1000;
				break;
		}
		if(this.readonly){
			this.spinner_input = $('<input type="hidden" data-spin="spinner" data-rule="quantity" class="dz-form-control" />');
			this.spinner_text = $('<div class="dz-form-control _spinner_text" />').text(this.o.value + this.prefix);
		}else{
			this.spinner_input = $('<input type="text" data-spin="spinner" data-rule="quantity" class="dz-form-control" />');
			this.spinner_text = $('<span />');
		}

		this.spinner_input.val(this.o.value);
		this.spinner_wrap = $('<div class="spinner"/>');
		this.spinner_btn = $('<a href="javascript:;" tabindex="-1" class="spin-up" data-spin="up"><i class="zmdi zmdi-caret-up"></i></a><a href="javascript:;" tabindex="-1" class="spin-down" data-spin="down"><i class="zmdi zmdi-caret-down"></i></a>');

		this.spinner_wrap
			.append(this.spinner_input)
			.append(this.spinner_text)
			.append(this.spinner_btn);

		this.element.empty();
		this.element.append(this.spinner_wrap);

		this.spinner_wrap
			.spinner({'step' : that.step, 'min' : that.min, 'max' : that.max, 'precision' : that.precision})
			.spinner('create', function(e, newVal){
				that.set(newVal);
			})
			.spinner('changed', function(e, newVal, oldVal){
				//	if(!that.first)
				if(that.o.mode == 'text_height'){
					if(newVal == 0){
						newVal = 'auto';
					}
				}
				that.stop(newVal);
				that.first = false;
			})
			.spinner('changing', function(e, newVal, oldVal){
				if(that.o.mode == 'text_height'){
					if(newVal == 0){
						newVal = 'auto';
					}
				}
				that.change(newVal);
			})
			.spinner('notChanging', function(e, newVal){
				if(that.o.mode == 'text_height'){
					if(newVal == 0){
						newVal = 'auto';
					}
				}
				that.change(newVal);
			});

		that.set(that.o.value);


		if(typeof that.o.disable != 'undefined' && that.o.disable == true){
			this.disable();
		}else{
			this.enable();
		}

	};

	setSpinner.prototype.stop = function(data){
		this.set(data);
		if(typeof this.o.stop == 'function'){
			this.o.stop(data);
		}
	};
	setSpinner.prototype.disable = function(){
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
		this.spinner_input.prop("disabled", true);
		this.spinner_wrap.toggleClass('disabled', true);
	};
	setSpinner.prototype.enable = function(){
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
		this.spinner_input.prop("disabled", false);
		this.spinner_wrap.toggleClass('disabled', false);
	};


	setSpinner.prototype.change = function(data){
		this.set(data);
		if(typeof this.o.change == 'function'){
			this.o.change(data);
		}
	};

	setSpinner.prototype.get = function(){
		return this.value;
	};

	setSpinner.prototype.set = function(value){
		this.value = value;
		if(value == 'auto'){
			if(this.readonly)
				this.spinner_text.text(value);
			this.spinner_input.val(value);
		}else{
			if(this.readonly)
				this.spinner_text.text(value + this.prefix);
			this.spinner_input.val(value + this.prefix);
		}
	};

	setSpinner.prototype.destroy = function(){
		this.element.data('setSpinner', false);
	};

	function PLUGIN(o){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('setSpinner');
			if(!data) obj.data('setSpinner', (data = new setSpinner(obj, o)));
			return data[o]();
		}else if(typeof o == 'object'){
			var data = obj.data('setSpinner');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setSpinner', (data = new setSpinner(obj, o)));
		}
		return this;
	}

	$.fn.setSpinner = PLUGIN;

})();

(function(){
	var setResizable = function(el, o){
		this.$element = $(el);
		this.default_option = {
			css_update : true,
			handle : 'news',
			max_width : null,
			min_width : null,
			max_height : null,
			min_height : null,
			containment : null
		};
		this.o = o;
		this.width;
		this.height;
		this.res = {
			start_x : null,
			start_y : null,
			gap_x : null,
			gap_y : null,
			width : null
		};
		this.drag_start = false;
		this.event_codes = [];
		this.init();

	};

	setResizable.prototype.getHandle = function(handle, code){
		var $handle = $('<div class="doz_handle _doz_handle_'+code+' ui-resizable-handle ui-resizable-' + handle + '" style="z-index: 90;"></div>');
		return $handle;
	};

	setResizable.prototype.createHandle = function(handle){
		var uniq = makeUniq();
		this.event_codes.push(uniq);
		var that = this;
		var $handle = that.getHandle(handle,uniq);
		var $body = $('body');
		this.$element.append($handle);

		$handle.off('mousedown').on('mousedown', function(e){
			$handle.toggleClass('active', true);
			that.$element.toggleClass('disable-selection', true);
			that.$element.toggleClass('mask', true);
			that.width = that.$element.outerWidth();
			that.height = that.$element.outerHeight();
			var start_x = e.clientX;
			var start_y = e.clientY;
			that.drag_start = true;
			var current_width = that.$element.outerWidth();
			var current_height = that.$element.outerHeight();
			that.res.start_x = start_x;
			that.res.start_y = start_y;
			that.res.width = that.width;
			that.res.height = that.height;
			that.start();
			$body.off('selectstart').on('selectstart', function(e2){return false});
			$body.off('mousemove.' + uniq).on('mousemove.' + uniq, function(e2){
				if(that.drag_start){
					var current_x = e2.clientX;
					var current_y = e2.clientY;
					var width = current_width;
					var height = current_height;
					var gap_x = start_x - current_x;
					var gap_y = start_y - current_y;

					that.res.gap_x = gap_x;
					that.res.gap_y = gap_y;

					switch(handle){
						case 'n' :
							if(gap_y > 0){
								height = current_height + Math.abs(gap_y);
							}else{
								height = current_height - Math.abs(gap_y);
							}
							break;
						case 'e' :
							if(gap_x <= 0){
								width = current_width + Math.abs(gap_x);
							}else{
								width = current_width - Math.abs(gap_x);
							}
							break;
						case 'w' :
							if(gap_x > 0){
								width = current_width + Math.abs(gap_x);
							}else{
								width = current_width - Math.abs(gap_x);
							}
							break;
						case 's' :
							if(gap_y <= 0){
								height = current_height + Math.abs(gap_y);
							}else{
								height = current_height - Math.abs(gap_y);
							}
							break;

						case 'se' :

							if(gap_y <= 0){
								height = current_height + Math.abs(gap_y);
							}else{
								height = current_height - Math.abs(gap_y);
							}
							if(gap_x <= 0){
								width = current_width + Math.abs(gap_x);
							}else{
								width = current_width - Math.abs(gap_x);
							}

							break;
					}
					if(that.o.max_width != null && parseInt(that.o.max_width) > 0)
						if(width > that.o.max_width) width = that.o.max_width;
					if(that.o.min_width != null && parseInt(that.o.min_width) > 0)
						if(width < that.o.min_width) width = that.o.min_width;
					if(that.o.max_height != null && parseInt(that.o.max_height) > 0)
						if(height > that.o.max_height) height = that.o.max_height;
					if(that.o.min_height != null && parseInt(that.o.min_height) > 0)
						if(height < that.o.min_height) height = that.o.min_height;

					if(that.o.containment != null){
						switch (that.o.containment){
							case 'parent' :
								var $parent = that.$element.parent();
								var parent_width = $parent.innerWidth();
								var parent_height = $parent.innerHeight();
								var position_x = that.$element.position().left;
								var position_y = that.$element.position().top;
								if(width > parent_width - position_x) width = parent_width - position_x;
								if(height > parent_height - position_y) height = parent_height - position_y;
								break;
						}
					}

					that.res.width = width;
					that.res.height = height;
					if(that.o.css_update){
						switch(handle){
							case 'n' :
							case 's' :
								that.$element.outerHeight(height);
								break;
							case 'w' :
							case 'e' :
								that.$element.outerWidth(width);
								break;
							case 'se' :
								that.$element.outerHeight(height);
								that.$element.outerWidth(width);
								break;

						}
					}
					that.change();
				}
			});
			$body.off('mouseup.' + uniq).on('mouseup.' + uniq, function(e){

				$body.off('selectstart');
				if(!that.drag_start){
					cancelPropagation(e);
					return false;
				}
				$handle.toggleClass('active', false);
				that.$element.toggleClass('disable-selection', false);
				that.$element.toggleClass('mask', false);
				$body.off('mousemove.' + uniq);
				$body.off('mouseup.' + uniq);
				that.drag_start = false;
				that.stop();
			});
		});


	};

	setResizable.prototype.init = function(){
		var that = this;
		this.o = $.extend({}, this.default_option, this.o);

		var handle = [];
		for(var i = 0; i < that.o.handle.length; i++){
			handle.push(that.o.handle.substring(i, i + 1));
		}
		if($.inArray('e',handle) > -1 && $.inArray('s',handle) >-1){
			handle.push('se');
		}

		$.each(handle, function(e, v){
			that.createHandle(v);
		});
		that.create();


	};

	setResizable.prototype.stop = function(){
		if(typeof this.o.stop == 'function'){
			this.o.stop(this.res);
		}
	};
	setResizable.prototype.create = function(){
		if(typeof this.o.create == 'function'){
			this.o.create();
		}
	};
	setResizable.prototype.start = function(){
		if(typeof this.o.start == 'function'){
			this.o.start(this.res);
		}
	};
	setResizable.prototype.disable = function(){
	};
	setResizable.prototype.enable = function(){
	};


	setResizable.prototype.change = function(){
		if(typeof this.o.change == 'function'){
			this.o.change(this.res);
		}
	};

	setResizable.prototype.get = function(){
		return this.value;
	};

	setResizable.prototype.set = function(value){
		this.res = $.extend(this.res,value);
	};

	setResizable.prototype.destroy = function(){
		this.$element.data('setResizable', false);
		var $body = $('body');
		var that = this;
		$.each(this.event_codes,function(e,code){
			if(that.$element.length >0 )
				that.$element.find('._doz_handle_'+code).remove();
			$body.off('mousemove.' + code);
			$body.off('mouseup.' + code);
		});
	};

	function PLUGIN(o){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('setResizable');
			if(!data) obj.data('setResizable', (data = new setResizable(obj, o)));
			return data[o]();
		}else if(typeof o == 'object'){
			var data = obj.data('setResizable');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setResizable', (data = new setResizable(obj, o)));
		}
		return this;
	}

	$.fn.setResizable = PLUGIN;

})();

(function(){
	/**
	 * o.option             - select list
	 * o.option_layer        - 사용자화 레이어
	 * o['default']            - 기본 selected value
	 * o.change             - select callback function
	 * o.set                - setting option
	 * @param el
	 * @param o
	 */
	var setSelectBox = function(el, o){


		this.default_set = {
			select_custom_cls : '',
			custom_cls : 'design-dropdown',       // 셀렉트박스 가장 위 부모의 클래스
			custom_option_layer : 'N', //옵션 레이어 전체를 사용자화  this.custom_layer 에 jquery 돔 객체를 보냄
			use_custom_value : 'N',                  // Y: 기본 li에 value를 추가함
			left : 0,
			use_insert : 'Y',                        // Y: 선택된 후 value 넣을지 여부
			use_key_press : 'N',
			use_selected : 'Y',
			max_height : 230,
			item_align : 'left'
		};

		this.element = el;
		this.o = o;
		this.option_container = {};
		this.select_wrap = {};
		this.current_select_div = {};
		this.current_select_arrow = {};

		this.o.set = $.extend(this.default_set, this.o.set);
		this.init();
	};

	setSelectBox.prototype.init = function(){
		var that = this;

		if(typeof that.element.data('id') == 'undefined' || that.element.data('id') == '')
			that.element.data('id', makeUniq());
		that.makeDesignSelect();
		that.makeOptionLayer();
		that.set(that.o['default']);
		that.element.data('select', 'Y');
		that.element.off('click').on('click', function(e){
			cancelPropagation(e);
			if(that.element.data('is_show') == 'Y')
				that.close();
			else
				that.show();
		});

		if(typeof that.o.disable != 'undefined' && that.o.disable == true){
			this.disable();
		}else{
			this.enable();
		}


	};

	setSelectBox.prototype.setPosition = function(){
		var that = this;
		var width = that.o.set.width ? that.o.set.width : that.element.outerWidth();
		var offset = that.element.offset();

		var height = that.element.outerHeight();
		var window_height = $(window).height();
		var window_width = $(window).width();
		var window_scroll = $(window).scrollTop();
		var select_offset_t = offset.top - window_scroll; //절대적인 화면상의 좌표
		var select_offset_l = offset.left; //절대적인 화면상의 좌표
		var select_container_h = that.option_container.outerHeight();
		var select_container_w = that.option_container.outerWidth();

		var obj_h = Math.round(select_offset_t + height + select_container_h); //절대적 화면상의 좌표에서 설렉트박스의 높이와 옵션의 높이의 합( 옵션이 열렸을때 옵션의 맨 아래 좌표값)
		var obj_w = Math.round(select_offset_l + width); //절대적 화면상의 좌표에서 설렉트박스의 높이와 옵션의 높이의 합( 옵션이 열렸을때 옵션의 맨 아래 좌표값)

		if(window_height < obj_h){ //윈도우 크기보다 옵션 맨 아래 절대 좌표가 크다는 것은 옵션이 보이지 않는 것이 므로 위로 보이도록 설정
			if(offset.top > 350){
				that.option_container.css('top', select_container_h * (-1) + offset.top);
			}else{
				that.option_container.css('top', offset.top + height);
			}
		}else{
			that.option_container.css('top', offset.top + height);
		}
		if(window_width < obj_w){ //윈도우 크기보다 옵션 맨 아래 절대 좌표가 크다는 것은 옵션이 보이지 않는 것이 므로 위로 보이도록 설정
			if(offset.left > 350){
				var left = offset.left + that.element.outerWidth() - that.o.set.width + that.o.set.left;
			}else{
				var left = offset.left + that.o.set.left
			}
		}else{
			var left = offset.left + that.o.set.left
		}
		that.option_container.css({
			'position' : 'absolute',
			'z-index' : 19000,
			'left' : left,
			'width' : width
		});
		that.element.data('is_show', 'Y');
	};

	setSelectBox.prototype.show = function(){
		var that = this;
		$('._select_option').hide();

		that.setPosition();

		$('#' + that.element.data('id')).show();
		$('body').addClass('_selected_box');
		$('body').data('selectbox', 'Y');

		$(window).off('resize.' + that.element.data('id'));
		$(window).on('resize.' + that.element.data('id'), function(e){
			that.setPosition();
		});
		$(document).off('scroll.' + that.element.data('id'));
		$(document).on('scroll.' + that.element.data('id'), function(e){
			that.setPosition();
		});
		$(document).off('mousedown.' + that.element.data('id'));
		$(document).on('mousedown.' + that.element.data('id'), function(e){
			cancelPropagation(e);
			e.preventDefault();
			that.close();
		});


	};

	setSelectBox.prototype.close = function(){
		this.element.data('is_show', 'N');
		$('#' + this.element.data('id')).hide();
		$(document).off('scroll.' + this.element.data('id'));
		$(window).off('resize.' + this.element.data('id'));
		$(document).off('click.' + this.element.data('id'));
		$(document).off('mousedown.' + this.element.data('id'));
		$('body').removeClass('_selected_box');
		$('body').data('selectbox', 'N');
	};

	setSelectBox.prototype.makeDesignSelect = function(){
		var that = this;
		if(that.element[0].tagName == 'INPUT')
			return;
		if(that.o.set.use_insert == 'N')
			return;
		that.element.empty(false);
		if(that.o.set.select_custom_cls){
			that.select_wrap = $('<div class="div_select '+that.o.set.select_custom_cls+'">');
		}else{
			that.select_wrap = $('<div class="div_select">');
		}
		that.current_select_div = $('<div>');
		that.select_wrap.append(that.current_select_div);
		that.element.append(that.select_wrap);
	};

	setSelectBox.prototype.makeOptionLayer = function(){
		var that = this;
		that.option_container = $('<div/>').addClass(that.o.set.custom_cls + (typeof that.o.set.container_cls !== 'undefined' ? ' ' + that.o.set.container_cls : '')).addClass('_select_option').attr('id', that.element.data('id'));
		var scroll_wrap = $('<div/>').addClass('tse-scrollable');

		var scroll_contents = $('<div/>').addClass('tse-content');

		if(that.o.set.custom_option_layer == 'Y'){
			var option_ul = scroll_contents.append(that.o.option_layer);

		}else{

			var option_ul = $('<ul/>');
			$.each(that.o.option, function(k, v){
				if(v.key == 'doz_divider'){
					var item = $('<li />').addClass('divider');
				}else{
					if(k == 0 && (typeof that.o['default'] == 'undefined' || that.o['default'] == '')){
						that.o['default'] = v.key;
					}
					var select_class = (v.key == that.o['default'] && that.o.set.use_selected == 'Y') ? 'active' : '';
					var item = $(that.o.set.use_custom_value == 'Y' ? '<li>' + v.value + '</li>' : '<li><span class="txt">' + v.value + '</span></li>');
					if(v.key == that.o['default']){
						that.element.data('data', {key : v.key, value : v.value});
						that.set(v.key);
					}

					item.addClass(select_class)
						.data({'key' : v.key, 'value' : v.value})
						.on('mousedown', function(e){
							that.selected(v.key, v.value);
						});
				}
				option_ul.append(item);
			});
			option_ul = scroll_contents.append(option_ul);

		}

		scroll_wrap.append(option_ul);
		if($('body').children('#' + that.element.data('id')).length == 0){
			that.option_container.append(scroll_wrap);
			$('body').append(that.option_container);
		}

		var width = that.o.set.width ? that.o.set.width : that.element.width();
		var height = option_ul.height();
		height = that.o.set.max_height < height ? that.o.set.max_height : height;
		scroll_wrap.css({'width' : width, 'height' : height});
		scroll_wrap.TrackpadScrollEmulator();

		if(that.o.set.use_key_press == 'Y'){
			that.option_container.append(scroll_wrap);
			$('#' + that.element.data('id')).replaceWith(that.option_container);
			that.show();
		}
	};

	setSelectBox.prototype.append = function(o){
		this.option_container.find('li').removeClass('active');
		var that = this;
		var item = $(that.o.set.use_custom_value == 'Y' ? '<li>' + v.value + '</li>' : '<li><span class="txt">' + v.value + '</span></li>');
		item.data({'key' : o.key, 'value' : o.value})
			.click(function(e){
				that.selected(o.key, o.value);
			});
		this.option_container.find('ul li.doz_divider:last-child').before(item);
		this.set(o.key);
	};

	setSelectBox.prototype.findData = function(key){
		var data;
		var find = false;
		$.each(this.o.option, function(k, v){
			if(v.key == key){
				data = v;
				find = true;
				return false;
			}
		});
		if(find)
			return data;
		else
			return false;
	};


	setSelectBox.prototype.set = function(key){
		var data = this.findData(key);
		if(!data)
			data = this.findData(this.o['default']);

		this.element.data('data', {key : data.key, value : data.value});
		this.option_container.find('li').removeClass('active');

		var item = this.findItem(key);
		if(item !== false){
			if(this.o.set.use_selected == 'Y'){
				item.addClass('active');
			}
		}
		// TODO value -> object 변경
		if(this.o.set.use_insert != 'N'){
			if(this.o.set.use_custom_value == 'Y')
				var value = $(data.value).text();
			else
				var value = data.value;

			try{
				$(value);

				throw 1;
			}catch(e){
				if(e === 1){
					if(this.element[0].tagName == 'INPUT'){
						if($(value).text().length < 1)
							value = value;
						else{
							var reg = /(<([^>]+)>)/;
							if(reg.test(value)){
								value = $(value).text();
							}else{
								value = value;
							}
						}
						this.element.val(value);
					}else
						this.current_select_div.html(value);
				}else{
					if(this.element[0].tagName == 'INPUT'){
						this.element.val(value);
					}else
						this.current_select_div.text(value);
				}

			}
		}

	};

	setSelectBox.prototype.selected = function(key, value){
		this.set(key);
		this.close();
		this.change();
	};

	setSelectBox.prototype.findItem = function(key){
		var o = false;
		this.option_container.find('li').each(function(e){
			if($(this).data('key') == key){
				o = $(this);
				return false;
			}
		});
		return o;
	};

	setSelectBox.prototype.change = function(){
		if(typeof this.o.change == "function"){
			return this.o.change(this.element.data('data'));
		}
	};

	setSelectBox.prototype.modifyValue = function(data){
		var that = this;
		var o = false;
		$.each(that.o.option, function(k, v){
			if(v.key == data.key){
				v.value = data.value;
				return false;
			}
		});
		this.option_container.find('li').each(function(e){
			if($(this).data('key') == data.key){
				o = $(this);
				o.data('value', data.value);
				o.find('.txt').text(data.value);
				o.off('click')
					.on('click', function(e){
						that.selected(data.key, data.value);
					});
				var current_data = that.element.data('data');
				if(current_data.key == data.key){
					that.set(current_data.key);
				}

				return false;
			}
		});
	};

	setSelectBox.prototype.get = function(){
		return this.element.data('data');
	};

	setSelectBox.prototype.remove = function(data){
		this.option_container.find('li').each(function(e){
			if($(this).data('key') == data){
				$(this).remove();
			}
		});
	};


	setSelectBox.prototype.disable = function(){
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
	};
	setSelectBox.prototype.enable = function(){
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
	};

	setSelectBox.prototype.destroy = function(){
		this.element.data('setSelectBox', false);
		this.element.data('select', '');
		$('#' + this.element.data('id')).remove();
		this.element.data('id', '');
		this.element.data('data', '');
	};

	function PLUGIN(o, d){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('setSelectBox');
			if(!data) obj.data('setSelectBox', (data = new setSelectBox(obj, o)));
			return data[o](d);
		}else if(typeof o == 'object'){
			var data = obj.data('setSelectBox');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setSelectBox', (data = new setSelectBox(obj, o)));
		}

		return this;
	}
	$.fn.setSelectBox = PLUGIN;
})();


/**
 * 영문숫자-
 */
(function($){
	$.extend($.fn, {
		check_alnum : function(){
			var o = $(this);
			o.css('ime-mode', 'disabled');
			o.off('keypress.check_alnum').on('keypress.check_alnum',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && ((code > 47 && code < 58) || (code > 64 && code < 91) || (code > 96 && code < 123) || (event.ctrlKey == true && (code == 118 || code == 86 || code == 67)) || code == 13 || code == 8 || code == 27 || code == 45 || code == 189)){
					//숫자범위,소문자,대문자,컨트롤브이대소문자,enter,back,esc,-
					return true;
				}else if(code && (code == 37 || code == 39 || code == 38 || code == 40)){ //방향키
					return true;
				}else if(code && (code == 9 || code == 46 || code == 35 || code == 36)){ //tab , del,  홈, 엔드
					return true;
				}else{
					event.preventDefault();
				}
			});
			o.off('keyup.check_alnum').on('keyup.check_alnum',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && (code == 37 || code == 39 || code == 38 || code == 40)) //방향키
					return true;
				else if(code && (code == 9 || code == 46 || code == 35 || code == 36)) //tab , del,  홈, 엔드
					return true;
				var str = $(this).val();
				str = str.replace(/[^0-9^a-z^A-Z^-]/gi, '');
				$(this).val(str);
			});
		}
	});
})(jQuery);

/**
 * 영문숫자- 복사금지
 */
(function($){
	$.extend($.fn, {
		check_alnum_nopaste : function(){
			var o = $(this);
			o.css('ime-mode', 'disabled');
			o.off('keypress.check_alnum_nopaste').on('keypress.check_alnum_nopaste',function(event){
				var code = event.which?event.which:event.keyCode;
				if(event.ctrlKey == true)
					event.preventDefault();
				if(code && ((code > 47 && code < 58) || (code > 64 && code < 91) || (code > 96 && code < 123) || code == 13 || code == 8 || code == 27 || code == 45 || code == 189)){
					//숫자범위,소문자,대문자,enter,back,esc,-
					return true;
				}else if(code && (code == 37 || code == 39 || code == 38 || code == 40)){ //방향키
					return true;
				}else if(code && (code == 9 || code == 46 || code == 35 || code == 36)){ //tab , del,  홈, 엔드
					return true;
				}else{
					event.preventDefault();
				}
			});
			o.off('keyup.check_alnum_nopaste').on('keyup.check_alnum_nopaste',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && (code == 37 || code == 39 || code == 38 || code == 40)) //방향키
					return true;
				else if(code && (code == 9 || code == 46 || code == 35 || code == 36)) //tab , del,  홈, 엔드
					return true;
				var str = $(this).val();
				str = str.replace(/[^0-9^a-z^A-Z^-]/gi, '');
				$(this).val(str);
			});
		}
	});

})(jQuery);

/**
 * 전화번호만 입력되도록
 */
(function($){
	$.extend($.fn, {
		check_callnum : function(){
			var o = $(this);
			o.css('ime-mode', 'disabled');
			o.off('keypress.check_callnum').on('keypress.check_callnum',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && ((code > 47 && code < 58) || (event.ctrlKey == true && (code == 118 || code == 86 || code == 67)) || code == 13 || code == 8 || code == 27 || code == 45 || code == 189 || code == 43)){
					//숫자범위,컨트롤브이대소문자,enter,back,esc,-, +
					return true;
				}else if(code && (code == 37 || code == 39 || code == 38 || code == 40)){ //방향키
					return true;
				}else if(code && (code == 9 || code == 46 || code == 35 || code == 36)){ //tab , del,  홈, 엔드
					return true;
				}else{
					event.preventDefault();
				}
			});
			o.off('keyup.check_callnum').on('keyup.check_callnum',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && (code == 37 || code == 39 || code == 38 || code == 40)) //방향키
					return true;
				else if(code && (code == 9 || code == 46 || code == 35 || code == 36)) //tab , del,  홈, 엔드
					return true;
				var str = $(this).val();
				str = str.replace(/[^0-9^\-^+]/gi, '');
				$(this).val(str);
			});
		}
	});

})(jQuery);

/**
 * 숫자만 입력되도록
 */
(function($){
	$.extend($.fn, {
		check_num : function(){
			var o = $(this);
			o.css('ime-mode', 'disabled');
			o.off('keypress.check_num').on('keypress.check_num',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && ((code > 47 && code < 58) || code == 8 || code == 13)){
					//숫자범위,back,enter,esc,-
					return true;
				}else if(code && (code == 9 || code == 46 || code == 35 || code == 36)){ //tab , del,  홈, 엔드
					return true;
				}else if(code && (code == 37 || code == 39 || code == 38 || code == 40)){ //방향키
					return true;
				}else{
					event.preventDefault();
				}
			});
			o.off('keyup.check_num').on('keyup.check_num',function(event){
				var code = event.which?event.which:event.keyCode;
				if(code && (code == 37 || code == 39 || code == 38 || code == 40)) //방향키
					return true;
				else if(code && (code == 9 || code == 46 || code == 35 || code == 36)) //tab , del,  홈, 엔드
					return true;
				var str = $(this).val();
				str = str.replace(/[^0-9]/gi, '');
				$(this).val(str);
			});
		}
	});
})(jQuery);

/**
 * 이메일만 입력
 */
(function($){
	$.extend($.fn, {
		check_email : function(){
			var o = $(this);
			o.css('ime-mode', 'disabled');
			o.off('keypress.check_email').on('keypress.check_email',function(event){
				var code = event.which?event.which:event.keyCode;
				if(!code)
					event.preventDefault();
				if(code > 47 && code < 58) //숫자범위
					return true;
				if(code > 64 && code < 91) //소문자범위
					return true;
				if(code > 96 && code < 123) //대문자
					return true;
				if(event.ctrlKey == true && (code == 118 || code == 86 || code == 99 || code == 67)) //컨트롤v대소문자c
					return true;
				if(code == 45 || code == 189) //-
					return true;
				if((event.shiftKey == true && code == 50) || code == 64) //@
					return true;
				if((event.shiftKey == true && code == 189) || code == 95) //_
					return true;
				if(code == 13 || code == 8 || code == 9 || code == 27 || code == 46 || code == 35 || code == 36) //enter, back, esc, tab , del,  홈, 엔드
					return true;
				if(code == 37 || code == 39 || code == 38 || code == 40) //방향키
					return true;

				event.preventDefault();
			});
			o.off('keyup.check_email').on('keyup.check_email',function(event){
				var str = $(this).val();
				str = str.replace(/[^0-9^a-z^A-Z^.^@^_^-]/gi, '');
				$(this).val(str);
			});
		}
	});
})(jQuery);


$(function(){




	/**
	 *
	 * @type {{obj: (*|jQuery|HTMLElement), open: Function, close: Function, default_setting: Function, delete_popup: string, delete_setting: Function, widget_setting: Function}}
	 * @example * $.cocoaDialog.open({type:'', terms: ''}, callback)
	 */
	var cocoaDialog_sub_scroll_top = 0;
	$.cocoaDialog = {
		modal_type : 'main',
		obj : $('#cocoaModal'),
		open : function(o, callback){
			var that = this;
			if($('.modal:visible').length > 0)
				this.obj = $('#cocoaSubModal');
			else
				this.obj = $('#cocoaModal');
			if(typeof this.obj.find('.modal-dialog').data('uiDraggable') != 'undefined'){
				this.obj.find('.modal-dialog').draggable('destroy');
			}

			this.obj.removeAttr('class');
			this.obj.addClass('modal in');
			$('body').toggleClass('modal-open', true);
			if(this.obj.attr('id') == 'cocoaSubModal')
				this.obj.addClass('submodal');
			this.obj.toggleClass('modal_' + o.type, true);
			if(o.type == 'widget')
				this.obj.toggleClass('modal_widget_' + o.widget_type, true);
			var width = typeof o.width == "undefined" ? 320 : o.width;


			this.obj.off('show.bs.modal');
			this.obj.on('show.bs.modal', function(e){
				if($(this).attr('id') == 'cocoaSubModal')
					$(window).scrollTop(cocoaDialog_sub_scroll_top);
			});

			this.obj.off('shown.bs.modal');
			this.obj.on('shown.bs.modal', function(e){
				if(typeof o.opened == 'function')
					o.opened();
				if($(this).attr('id') == 'cocoaModal')
					cocoaDialog_sub_scroll_top = $(window).scrollTop();
				if($(this).attr('id') == 'cocoaSubModal')
					$(window).scrollTop(cocoaDialog_sub_scroll_top);
			});


			this.obj.off('hidden.bs.modal');
			this.obj.on('hidden.bs.modal', function(e){
				$('body').off('keyup.delete_setting');
				if($(this).attr('id') == 'cocoaSubModal')
					$('body').toggleClass('modal-open', true);

			});

			if(typeof o.close_block == 'undefined')
				o.close_block = false;
			if(o.close_block){
				this.obj.data('bs.modal',false);
				this.obj.attr('data-backdrop','static');
				this.obj.attr('data-keyboard','false');
				this.obj.data('backdrop','static');
				this.obj.data('keyboard','false');
			}else{
				this.obj.data('bs.modal',false);
				this.obj.attr('data-backdrop','true');
				this.obj.attr('data-keyboard','true');
				if(navigator.userAgent.match(/Trident\/7\./) || navigator.userAgent.indexOf("msie") != -1) //ie에서만 모달에 탭인덱스 적용
					this.obj.attr('tabindex','-1');//esc로 모달 닫기
				this.obj.data('backdrop','true');
				this.obj.data('keyboard','true');
			}
			switch(o.type){
				case 'delete':
					this.obj
						.find('.modal-dialog')
						.end()
						.find('.modal-content')
						.children().detach()
						.end()
						.append(that.delete_popup)
						.end()
						.modal();
					that.delete_setting(callback);
					break;
				case 'save':
					this.obj
						.find('.modal-dialog')
						.end()
						.find('.modal-content')
						.children().detach()
						.end()
						.append(that.save_popup)
						.end()
						.modal();
					that.save_setting(callback);
					break;
				case 'alert':
					this.obj
						.find('.modal-dialog')
						.end()
						.find('.modal-content')
						.children().detach()
						.end()
						.append(that.alert_popup)
						.end()
						.modal();
					that.alert_setting(callback);
					break;
				case 'page_add' :
					this.obj
						.find('.modal-dialog')
						.end()
						.find('.modal-content')
						.children().detach()
						.end()
						.append(that.page_add_popup)
						.end()
						.modal();
					that.page_add_setting(callback);
					break;
					break;
				case 'widget_add':
					this.obj
						.find('.modal-dialog')
						.end()
						.find('.modal-content')
						.children().detach()
						.end()
						.append(o.custom_popup)
						.end()
						.modal();
					break;
				case 'widget':
				default :
					this.obj
						.find('.modal-dialog')
						.end()
						.find('.modal-content')
						.children().detach()
						.end()
						.append(o.custom_popup)
						.end()
						.modal();

					this.obj.draggable({
						handle: ".top-block"
					});
					if(typeof callback == 'function')
						callback();
					break;

			}

			if(o.terms){
				this.obj.find('.modal-header').html(o.terms);
			}

		},
		hide : function(){
			if($('.submodal:visible').length > 0)
				this.obj = $('#cocoaSubModal');
			else
				this.obj = $('#cocoaModal');
			this.obj.modal('hide');
		},
		delete_popup : '<div class="modal-header">삭제하시겠습니까?</div><div class="btn-group btn-group-justified" role="group" aria-label="Justified button group"> <a href="javascript:;" id="dialog_popup_cancel"class="bt bt-default" role="button">취소</a> <a href="javascript:;" id="dialog_popup_delete" class="bt bt-default" role="button">확인</a> </div>',
		delete_setting : function(callback){
			var that = this;
			that.obj.find('#dialog_popup_delete').click(function(e){
				that.obj.modal("hide");
				callback();
			});
			that.obj.find('#dialog_popup_cancel').click(function(e){
				that.obj.modal("hide");
			});

			$('body').off('keyup.delete_setting');
			$('body').on('keyup.delete_setting', function(e){
				cancelPropagation(e);
				if(e.keyCode == 13){
					that.obj.modal("hide");
					callback();
				}
			});
		},
		page_add_popup : '<div class="input-group"> <input type="text" class="menu_name _name" placeholder="메뉴명 입력"> <span class="input-group-btn"> <button class="bt bt-default _btn" type="button">확인</button> </span> </div>',
		page_add_setting : function(callback){
			var that = this;
			var input = that.obj.find('._name');
			input.focus();
			that.obj.find('._btn').click(function(e){
				var name = input.val();
				callback(name);
				that.obj.modal("hide");
			});
			that.obj.find('#dialog_popup_cancel').click(function(e){
				that.obj.modal("hide");
			});

			$('body').off('keyup.delete_setting');
			$('body').on('keyup.delete_setting', function(e){
				cancelPropagation(e);
				var name = input.val();
				if(e.keyCode == 13){
					that.obj.modal("hide");
					callback(name);
				}
			});
		},
		save_popup : '<div class="modal-header">삭제하시겠습니까?</div><div class="modal-footer"><button class="bt bt-default" id="dialog_popup_cancel">취소</button><button class="bt bt-primary" id="dialog_popup_save">저장</button></div></div>',
		save_setting : function(callback){
			var that = this;
			that.obj.off('click', '#dialog_popup_save');
			that.obj.on('click', '#dialog_popup_save', function(e){
				that.obj.modal("hide");
				callback(true);
			});

			that.obj.off('click', '#dialog_popup_cancel');
			that.obj.on('click', '#dialog_popup_cancel', function(e){
				that.obj.modal("hide");
				callback(false);
			});

			$('body').off('keyup.delete_setting');
			$('body').on('keyup.delete_setting', function(e){
				cancelPropagation(e);
				if(e.keyCode == 13){
					that.obj.modal("hide");
					callback(true);
				}
			});
		},
		alert_popup : '<div class="modal-header design_alert_header">완료되었습니다.</div><div class="modal-footer design_alert_popup"><button id="dialog_popup_alert" class="bt bt-flat bt-primary" type="button">확인</button></div>',
		alert_setting : function(callback){
			var that = this;
			that.obj.off('click', '#dialog_popup_alert');
			that.obj.on('click', '#dialog_popup_alert', function(e){
				callback(true);
				that.obj.modal("hide");
			});
		},
		close : function(){
			$('#cocoaModal').modal("hide");
			$('#cocoaSubModal').modal("hide");
		},
		isOpen : function(){
			if($('#cocoaModal').css('display')=='block')
				return true;
			if($('#cocoaSubModal').css('display')=='block')
				return true;
			return false;
		}
	};
});


$(function(){
	/**
	 *
	 * @param o_data
	 * @param n_data
	 * @example $.cocoaDataExtend({}, {});
	 * @returns {*}
	 */
	$.cocoaDataExtend = function(o_data, n_data){
		return $.extend({}, o_data, n_data);
	}

});


(function($){
	$.extend({
		nl2br : function(str){
			var breakTag = '<br />';
			return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2');
		}
	});
})(jQuery);

/**
 * 문자열 바이트로 변환
 * @param s
 * @returns {*}
 */
function getByteLength(s,b,i,c){
	for(b=i=0;c=s.charCodeAt(i++);b+=c>>11?3:c>>7?2:1);
	return b;
}

/***
 * 스크롤의 위치가 마지막인지 체크
 * @param content
 * @param wrap
 * @param call
 */
function getScrollPositionBottom(content, wrap, call){
	content = content || $(document);
	wrap = wrap || $(window);
	wrap.off('scroll.bottomscrolling').on('scroll.bottomscrolling', function(){
		var is_bottom = false;
		var scroll_bottom = (content.outerHeight() - $(this).outerHeight());
		var scroll_top = $(this).scrollTop();
		if(scroll_top >= scroll_bottom){
			is_bottom = true;
		}
		call(is_bottom);
	});
}

function getTemplateConvert(tpl, o){
	switch(typeof o){
		case 'object' :
			for(var key in o){
				if(o.hasOwnProperty(key))
					tpl = tpl.replace('{' + key + '}', o[key]);
			}
			break;
		case 'string' :
			tpl = tpl.replace(/{.*?}/, o);
			break;
	}
	return tpl;
}

function array_intersect(arr1){
	//  discuss at: http://phpjs.org/functions/array_intersect/
	// original by: Brett Zamir (http://brett-zamir.me)
	//        note: These only output associative arrays (would need to be
	//        note: all numeric and counting from zero to be numeric)
	//   example 1: $array1 = {'a' : 'green', 0:'red', 1: 'blue'};
	//   example 1: $array2 = {'b' : 'green', 0:'yellow', 1:'red'};
	//   example 1: $array3 = ['green', 'red'];
	//   example 1: $result = array_intersect($array1, $array2, $array3);
	//   returns 1: {0: 'red', a: 'green'}

	var retArr = {},
		argl = arguments.length,
		arglm1 = argl - 1,
		k1 = '',
		arr = {},
		i = 0,
		k = '';

	arr1keys: for(k1 in arr1){
		arrs: for(i = 1; i < argl; i++){
			arr = arguments[i];
			for(k in arr){
				if(arr[k] === arr1[k1]){
					if(i === arglm1){
						retArr[k1] = arr1[k1];
					}
					// If the innermost loop always leads at least once to an equal value, continue the loop until done
					continue arrs;
				}
			}
			// If it reaches here, it wasn't found in at least one array, so try next value
			continue arr1keys;
		}
	}

	return retArr;
}

var getCaretPixelPos = function($node, offsetx, offsety){
	offsetx = offsetx || 0;
	offsety = offsety || 0;

	var nodeLeft = 0,
		nodeTop = 0;
	if($node){
		nodeLeft = $node.offsetLeft;
		nodeTop = $node.offsetTop;
	}

	var pos = {left : 0, top : 0};

	if(document.selection){
		var range = document.selection.createRange();
		pos.left = range.offsetLeft + offsetx - nodeLeft + 'px';
		pos.top = range.offsetTop + offsety - nodeTop + 'px';
	}else if(window.getSelection){
		var sel = window.getSelection();
		var range = sel.getRangeAt(0).cloneRange();
		try{
			range.setStart(range.startContainer, range.startOffset - 1);
		}catch(e){
		}
		var rect = range.getBoundingClientRect();
		if(range.endOffset == 0 || range.toString() === ''){
			// first char of line
			if(range.startContainer == $node){
				// empty div
				if(range.endOffset == 0){
					pos.top = '0px';
					pos.left = '0px';
				}else{
					// firefox need this
					var range2 = range.cloneRange();
					range2.setStart(range2.startContainer, 0);
					var rect2 = range2.getBoundingClientRect();
					pos.left = rect2.left + offsetx - nodeLeft + 'px';
					pos.top = rect2.top + rect2.height + offsety - nodeTop + 'px';
				}
			}else{
				pos.top = range.startContainer.offsetTop + 'px';
				pos.left = range.startContainer.offsetLeft + 'px';
			}
		}else{
			pos.left = rect.left + rect.width + offsetx - nodeLeft + 'px';
			pos.top = rect.top + offsety - nodeTop + 'px';
		}
	}
	return pos;
};


function deleteArrayValue(arr, value){
	if(typeof arr != 'object')
		return arr;

	var delete_key = -1;
	$.each(arr, function(k, v){
		if(v == value){
			delete_key = k;
			return false;
		}
	});
	if(delete_key !== -1){
		arr.splice(delete_key, 1);
		return arr;
	}else
		return arr;
}


(function($){
	$.fn.setBackgroundPosition = function(o, v){
		var obj = $(this);
		var item = {
			'0 0' : 'tl',
			'50% 0' : 'tc',
			'100% 0' : 'tr',
			'0 50%' : 'ml',
			'50% 50%' : 'mc',
			'100% 50%' : 'mr',
			'0 100%' : 'bl',
			'50% 100%' : 'bc',
			'100% 100%' : 'br'
		};
		var default_key = '50% 50%';
		var event_closed = false;
		var select_option = {};
		var select_container = {};
		var select_option_wrap = {};
		var select_container_h = 0;

		//	alert($(this).eq(0).className);

		//set select
		function select_item(key){
			var i = 0;
			obj.find('li').removeClass('active');
			$.each(item, function(k, v){
				if((key == '' || key == undefined) && i == 0){
					obj.find('._' + v).addClass('active');
					obj.data('current_value', v);
					obj.data('current_key', k);
					return;
				}else if(key == k){
					obj.find('._' + v).addClass('active');
					obj.data('current_value', v);
					obj.data('current_key', k);
					return;
				}
				i++;
			});
		}

		//set disabled
		function set_disabled(v){
			obj.data('is_disabled', v);
		}

		//make_selectbox_option
		function make_selectbox_option(){
			select_option = $("<div class='position_option' style='visibility:hidden'></div>");
			select_container = $("<ul class='select_container'/>");

			//var i=0;
			$.each(item, function(k, v){
				var li = $("<li class='select_item'><span class='position_" + v + "'></span></li>").off('click').on('click', function(){
					select_item(k);
					hide_selectbox();
					o.change(k);	//raise event
				}).data('key', k);
				select_container.append(li);
			});
			select_option.append(select_container);
			return select_option;
		}


		function setPosition(){
			//container_item_offset_top
			select_option.css({
				'visibility' : 'hidden',
				'display' : 'block'
			});
			select_container_h = select_option.outerHeight();

			var select_docu_h = $(window).height();
			var select_sc_t = $(window).scrollTop();
			var select_offset_t = obj.offset().top - select_sc_t;

			var obj_h = Math.round(select_offset_t + obj.outerHeight() + select_container_h);
			if(select_docu_h < obj_h){
				if(obj.offset().top > 350){
					select_option.css('top', select_container_h * (-1));
				}else{
					select_option.css('top', obj.outerHeight());
				}
			}else{
				select_option.css('top', obj.outerHeight());
			}

			select_option.css({
				'visibility' : 'visible'
			});
			select_option_wrap.css({
				'position' : 'absolute',
				'z-index' : 9999,
				'top' : obj.offset().top,
				'left' : obj.offset().left
			});
		}

		//show_selectbox
		function show_selectbox(){
			if(obj.data('is_disabled')) return;
			setPosition();
			select_option.show();

			select_container.find('li.select_item').each(function(no){
				if($(this).data('key') == obj.data('current_key')){
					$(this).addClass('current');
				}else
					$(this).removeClass('current');
			});

			$('body').addClass('_selected_box');
			$('body').data('selectbox', 'Y');

			$(window).off('resize.positionui');
			$(window).on('resize.positionui', function(e){
				setPosition();
			});
			$(document).off('scroll.positionui');
			$(document).on('scroll.positionui', function(e){
				setPosition();
			});
			$(document).off('click.positionui');
			$(document).on('click.positionui', function(e){
				cancelPropagation(e);
				e.preventDefault();
				hide_selectbox();
			});

		}

		//hide_selectbox
		function hide_selectbox(){

			$(document).off('scroll.positionui');
			$(window).off('resize.positionui');
			$(document).off('click.positionui');
			$('body').removeClass('_selected_box');
			$('body').data('selectbox', 'N');

			select_option.hide();
			if(event_closed){
				o.closed(obj.data('current_key'));
			}
		}

		switch(o){
			case 'get_key':
				return obj.data('current_key');
				break;

			case 'get_value':
				return obj.data('current_value');
				break;
			case 'get_tag':
				return obj.data('current_tag');
				break;
			case 'set_key':
				select_item(v);
				break;
			case 'set_disabled':
				set_disabled(v);
				break;
			case 'hide':
				hide_selectbox();
				break;
			case 'remove':
				$('#' + $(this).attr('id') + "_option").remove();
				$(this).empty();
				break;
			case 'destroy':
				$('#' + $(this).attr('id') + "_option").remove();
				$(this).empty();
				obj.removeData();
				break;
			default:
				obj.data('item', item);

				if(o.disabled) set_disabled(true);

				if(o.event_closed == true){
					event_closed = true;
				}

				select_option_wrap = $('<div class="position_ui_option"></div>');
				$('body').append(select_option_wrap);

				$(this).empty();
				$(this).append($("<div class='position_ui'><ul><li class='_tl'/><li class='_tc'/><li class='_tr'/><li class='_ml'/><li class='_mc'/><li class='_mr'/><li class='_bl'/><li class='_bc'/><li class='_br'/></ul></div>"));

				select_option_wrap.append(make_selectbox_option());

				$(this).off('click').on('click', function(e){
					cancelPropagation(e);
					show_selectbox();
				});

				select_item((o.default_key != '' && o.default_key != undefined) ? o.default_key : default_key);
				select_option.css({
					'visibility' : 'visible',
					'display' : 'none'
				});

		}
	};
})(jQuery);


(function($){
	var android_que = [];
	var post_image_que = [];

	$.fn.setFroala = function(option){
		var total_file_size = 0;
		var $image_list_obj = {};
		var $image_upload_input_obj = {};
		var $file_upload_btn_obj = {};
		var $file_list_obj = option.file_list_obj;
		var $froala_obj = $(this);
		if(typeof option.file_insert_key == 'undefined' || option.file_insert_key =='')
			var file_insert = "dozInsertFile";
		else
			var file_insert = option.file_insert_key;

		if(typeof option.image_align == 'undefined' || option.image_align =='')
			var image_align = 'left';
		else
			var image_align = option.image_align;

		if(typeof option.image_insert_key == 'undefined' || option.image_insert_key =='')
			var image_insert = "insertCustomImage";
		else
			var image_insert = option.image_insert_key;

		var code = option.code;
		var image_upload_url = option.image_upload_url;
		var file_upload_url = option.file_upload_url;

		if(image_upload_url == "") alert("이미지 업로드 URL이 비어있습니다");
		if(file_upload_url == "") alert("파일 업로드 URL이 비어있습니다");
		if(!isBlank(file_upload_url) && ($file_list_obj == "" || $file_list_obj.length == 0)) alert("파일 리스트 객체를 확인하세요");

		//이미지 업로드 버튼 추가
		if(!($image_upload_input_obj.length > 0)){
			var upload_html = $("<div id='image_upload_input' style='width:1px; height:2px;opacity: 0;position: absolute' ><input type='file' name='post_images[]' multiple  accept='.jpg,.jpeg,.png,.gif' class='_image_upload_btn' ></div>");
			$("body").append(upload_html);
			$image_upload_input_obj =  upload_html;
			$image_upload_input_obj.setUploadImage({
				url : image_upload_url,
				formData : {target : 'post',board_code : code}
			}, function (msg, data,data_list) {
				if (msg == 'success') {
					var html = '';
					$.each(data_list.post_images, function (index, file) {
						if(file.tmp_idx > 0) {
							switch(image_align){
								case 'center':
									html += '<p style="text-align: center"><img class="fr-dii fr-draggable" src="'+CDN_UPLOAD_URL+file.url+'"></p>';
									break;
								case 'right':
									html += '<p style="text-align: right"><img class="fr-dii fr-draggable" src="'+CDN_UPLOAD_URL+file.url+'"></p>';
									break;
								case 'left':
								default:
									html += '<p style="text-align: left"><img class="fr-dii fr-draggable" src="'+CDN_UPLOAD_URL+file.url+'"></p>';
									break;
							}
							postAddImage(file.tmp_idx,file.size);
						}else{
							alert(file.error);
						}
					});
					$froala_obj.froalaEditor('html.insert', html, true);
				}
			});
		}

		//이미지 임시저장 리스트 추가
		if(!($image_list_obj.length > 0)) {
			var image_list_html = $("<ul id='image_list' style='display: none'></ul>");
			$("body form").append(image_list_html);
			$image_list_obj = image_list_html;
		}

		//파일 업로드 버튼 추가


		var postDeleteFile = function(id){
			var obj = $('#'+id);
			var size = obj.data('size');
			total_file_size -= size;
			obj.remove();
		};
		var postAddFile = function(filename,file_code,tmp_idx,size){
			var uniq_id = makeUniq('upfile_');
			total_file_size += size;
			var clear_ico = $('<i class="zmdi zmdi-close"></i>').data({'item':uniq_id,size:size}).click(function(e){
				postDeleteFile(uniq_id);
			});
			var hidden_input = '';
			if(file_code.length>0) {
				hidden_input = $('<input name="upload_files[]" value="' + file_code + '" type="hidden" />');
			}else if(Math.round(tmp_idx) > 0){
				hidden_input = $('<input name="temp_files[]" value="' + tmp_idx + '" type="hidden" />');
			}
			var li 	= $('<li>').attr('id',uniq_id).data({'item':uniq_id,size:size});
			li.append($('<span>'+ filename +'<em> &nbsp;'+ GetFileSize(size) +'</em></span>'));
			li.append(clear_ico);
			li.append(hidden_input);
			$file_list_obj.append(li);
		};


		if(IS_ANDROID_APP != 'Y') {

			var upload_file_html = $("<div id='image_upload_input' style='width:1px; height:2px;opacity: 0;position: absolute' ><input type='file' name='post_files[]' multiple class='_file_upload_btn' />");

			$("body").append(upload_file_html);
			$file_upload_btn_obj = upload_file_html;
			$file_upload_btn_obj.setUploadFile({
				url : file_upload_url,
				formData : {target : 'post',board_code : code}
			}, function (msg, data,data_list) {
				if (msg == 'success') {
					var html = '';
					$.each(data_list.post_files,function(i,file){
						if(file.tmp_idx > 0){
							postAddFile(file.org_name,'',file.tmp_idx,file.size);
						}else{
							alert(file.error);
						}
					});
				}
			});

			$.FroalaEditor.DefineIcon(file_insert, {NAME: 'file-o'});
			$.FroalaEditor.RegisterCommand(file_insert, {
				title: '파일첨부(최대 100MB)',
				focus: false,
				undo: false,
				refreshAfterCallback: false,
				callback: function () {

					upload_file_html.find("._file_upload_btn").click();
				}
			});
		}

		$.FroalaEditor.DefineIcon(image_insert, {NAME: 'image'});
		$.FroalaEditor.RegisterCommand(image_insert, {
			title: '이미지첨부',
			focus: false,
			undo: false,
			refreshAfterCallback: false,
			callback: function () {


				upload_html.find("._image_upload_btn").click();
			}
		});



		if(IS_ANDROID_APP == 'Y') {
			$('#mobile_image_upload').off('click').on('click',function(){
				window.dozAndroidBridge.openPostAlbum();
			});
		}else{
			var upload_html2 = $("<input type='file' style='width:30px; height:30px;top:10px;left:12px;opacity: 0;position: absolute' name='post_images[]'  accept='image/jpeg, image/jpg, image/png, image/gif, image/svg+xml' id='image_upload_btn2' >");
			$('#mobile_image_upload').append(upload_html2);
			upload_html2.setUploadImage({
				url : image_upload_url,
				formData : {target : 'post',board_code : code}
			}, function (msg, data,data_list) {
				if (msg == 'success') {
					var html = '';
					$.each(data_list.post_images, function (index, file) {
						if(file.tmp_idx > 0) {
							switch(image_align){
								case 'center':
									html += '<p style="text-align: center"><img class="fr-dii fr-draggable" src="'+CDN_UPLOAD_URL+file.url+'"></p>';
									break;
								case 'right':
									html += '<p style="text-align: right"><img class="fr-dii fr-draggable" src="'+CDN_UPLOAD_URL+file.url+'"></p>';
									break;
								case 'left':
								default:
									html += '<p style="text-align: left"><img class="fr-dii fr-draggable" src="'+CDN_UPLOAD_URL+file.url+'"></p>';
									break;
							}
							postAddImage(file.tmp_idx,file.size);
						}
					});
					$froala_obj.froalaEditor('html.insert', html, true);
				}
			});
		}

		/*
		$('#mobile_image_upload').off('click').on('click',function(){
			if(IS_ANDROID_APP == 'Y') {
				window.dozAndroidBridge.openPostAlbum();
			}else{
				$("#image_upload_btn").click()
			}
		});
		*/



		$froala_obj.on('froalaEditor.image.inserted', function (e, editor, $img, response) {
			if(IS_ANDROID_APP == 'Y') {
				setTimeout(function () {
					if (android_que.length > 0) androidAppPostImageInsert(android_que[0]);
				}, 1);
			}
		});

		$froala_obj.on('froalaEditor.image.beforeUpload', function (e, editor, images) {
			alert('드래그 업로드는 지원하지 않습니다.');
			return false;
		});

		$froala_obj.on('froalaEditor.image.beforePasteUpload', function (e, editor, images) {
			alert('이미지 복사 붙여넣기 기능은 지원하지 않습니다.');
			images.remove();
			//alert('이미지 복사 붙여넣기 기능은 지원하지 않습니다.');
			//return false;
		});


		/***
		 * 안드로이드앱에서 post글쓰기시 이미지 업로드 완료시 처리
		 * @param image
		 */
		var androidAppPostImageUploadComplete = function(image){
			if(image.tmp_idx > 0){
				android_que.push(image);
				if(image.is_last == "Y") androidAppPostImageUploadAllComplete();
			}
		};

		var androidAppPostImageUploadAllComplete = function(){
			androidAppPostImageInsert(android_que[0]);
		};

		var androidAppPostImageInsert = function(image){
			$froala_obj.froalaEditor('image.insert', CDN_UPLOAD_URL+image.url, true);
			var img = $froala_obj.find('img[src="'+CDN_UPLOAD_URL+image.url+'"]');
			img.data(image);
			postAddImage(image.tmp_idx,image.size);
			android_que.splice(0,1);
		};


		var postAddImage = function(tmp_idx,size){
			var uniq_id = makeUniq('image_');
			var hidden_input = $('<input name="temp_images[]" value="' + tmp_idx + '" type="hidden" />');
			var li 	= $('<li>').attr('id',uniq_id).data({'item':uniq_id,size:size});
			li.append(hidden_input);
			$image_list_obj.append(li);
		};

		var default_option = {
			theme: 'custom',
			//initOnClick: true,
			//toolbarInline : true,
			imageDefaultWidth : 0,
			imageDefaultAlign : 'left',
			//toolbarSticky: false,
			fontSize: ['8', '9', '10', '11', '12', '13', '14', '16', '18', '24', '30', '36', '48', '64', '72', '96'],
			toolbarButtons: ["bold", "italic", "underline", "strikeThrough", "fontFamily", "fontSize",'|', "clearFormatting", "color", "align", "formatOL", "formatUL", "insertHR",'|', 'insertLink', image_insert,'insertVideo',file_insert, 'insertTable',  "html"],
			toolbarButtonsMD: ["bold", "italic", "underline", "strikeThrough", "fontFamily", "fontSize", '|',"clearFormatting", "color", "align", "formatOL", "formatUL", "insertHR", '|', 'insertLink', image_insert,'insertVideo',file_insert, 'insertTable',  "html"],
			toolbarButtonsSM: ["bold", "italic", "underline", "strikeThrough", "fontFamily", "fontSize", '|',"clearFormatting", "color", "align", "formatOL", "formatUL", "insertHR", '|', 'insertLink', image_insert,'insertVideo',file_insert, 'insertTable',  "html"],
			toolbarButtonsXS: ["bold", "italic", "underline", "strikeThrough", "fontFamily", "fontSize",'|', "clearFormatting", "color", "align", "formatOL", "formatUL", "insertHR",'|', 'insertLink', image_insert,'insertVideo',file_insert, 'insertTable',  "html"],
			language: 'ko',
			imageEditButtons: ['imageAlign', 'imageRemove', 'imageLink', 'linkOpen', 'linkEdit', 'linkRemove', '_', 'imageDisplay', 'imageStyle', 'imageAlt', 'imageSize'],
			toolbarSticky: true,
			toolbarStickyOffset: 65,
			heightMin: 150,
			placeholderText: LOCALIZE.설명_내용을_입력해주세요(),
			fileAllowedTypes : ['application/pdf', 'application/msword'],
			tableStyles : {
				tableHorizontal: '가로 구분선만',
				noBorder: '테두리 없음',
				tableStrong: '테두리 진하게',
				tableHover: 'Hover 효과(행 단위)',
				tableHeaderDarken: '테이블 헤더 음영',
				tableStriped: '줄무늬 행',
				'm-table-style' : '모바일에서 표 형식 무시',
				'table-responsive' : '반응형 테이블'
			},
			linkStyles: {
				'btn btn-default': '기본 버튼',
				'btn btn-primary': '강조 버튼'
			},
			fontFamily: {
				'Arial,Helvetica,sans-serif': 'Arial',
				'Arial Black,Arial Bold,Gadget,Helvetica,sans-serif': 'Arial Black',
				'Georgia,serif': 'Georgia',
				'Tahoma,Geneva,sans-serif': 'Tahoma',
				"'Times New Roman',Times,serif": 'Times New Roman',
				'Verdana,Geneva,sans-serif': 'Verdana'
			}
		};
		var option = $.extend(default_option, option);
		var option = $.extend(option, {'file_list_obj':''});
		if(android_version() != 4){
			var option = $.extend(option, {toolbarContainer: $('#toolbarContainer').get(0)});
		}

		$froala_obj.on('froalaEditor.initialized', function (e, editor) {
			function _refreshInsertPopup () {
				var $popup = editor.popups.get('video.insert');

				var $url_input = $popup.find('.fr-video-by-url-layer input');
				$url_input.val('').trigger('change');

				var $embed_area = $popup.find('.fr-video-embed-layer textarea');
				$embed_area.val('').trigger('change');
			}
			function _hideInsertPopup () {
			}
			function _initInsertPopup () {
				// Image buttons.
				var video_buttons = '';
				if (editor.opts.videoInsertButtons.length > 1) {
					video_buttons = '<div class="fr-buttons">' + editor.button.buildList(editor.opts.videoInsertButtons) + '</div>';
				}

				// Video by url layer.
				var by_url_layer = '';
				if (editor.opts.videoInsertButtons.indexOf('videoByURL') >= 0) {
					by_url_layer = '<div class="fr-video-by-url-layer fr-layer fr-active" id="fr-video-by-url-layer-' + editor.id + '"><div class="fr-input-line"><input type="text" placeholder="http://" tabIndex="1"></div><div class="fr-action-buttons"><button type="button" class="fr-command fr-submit" data-cmd="videoInsertByURL" tabIndex="2">' + editor.language.translate('Insert') + '</button></div></div>'
				}

				// Video embed layer.
				var embed_layer = '';
				if (editor.opts.videoInsertButtons.indexOf('videoEmbed') >= 0) {
					embed_layer = '<div class="fr-video-embed-layer fr-layer" id="fr-video-embed-layer-' + editor.id + '"><div class="fr-input-line"><textarea type="text" placeholder="' + editor.language.translate('Embedded Code') + '" tabIndex="1" rows="5"></textarea></div><div class="fr-action-buttons"><button type="button" class="fr-command fr-submit" data-cmd="videoInsertEmbed" tabIndex="2">' + editor.language.translate('Insert') + '</button></div></div>'
				}

				var template = {
					buttons: video_buttons,
					by_url_layer: by_url_layer,
					embed_layer: embed_layer
				};

				// Set the template in the popup.
				var $popup = editor.popups.create('video.insert', template);

				editor.popups.onRefresh('video.insert', _refreshInsertPopup);
				editor.popups.onHide('video.insert', _hideInsertPopup);

				return $popup;
			}
			$('#mobile_vod_upload').off('click').on('click',function(){
				var $btn = $(this);

				var $popup = editor.popups.get('video.insert');
				if (!$popup) $popup = _initInsertPopup();

				if (!$popup.hasClass('fr-active')){
					editor.popups.refresh('video.insert');
					editor.popups.setContainer('video.insert', editor.$tb);

					var scroll_top = $(window).scrollTop();
					var left = $btn.offset().left + $btn.outerWidth() / 2;
					var top = $btn.offset().top + (editor.opts.toolbarBottom ? 10 : $btn.outerHeight() - 10);
					editor.popups.show('video.insert', 1350,30, $btn.outerHeight());
					$popup.css({
						'position':'fixed',
						'top':100,
						'left':60
					});
					$popup.find('.fr-arrow').hide();
				}
			});

			if(android_version() == 4){
				editor.toolbar.hide();
			}
		});

		$froala_obj.froalaEditor(option);

	};
})(jQuery);


function isBlank(str){
	if(typeof str === 'undefined'){
		return true;
	}
	if(str === null){
		return true;
	}
	if(str === ''){
		return true;
	}
	if(str.length == 0){
		return true;
	}
	if(str === 'null'){
		return true;
	}
	return false;
}

//태그제거 (태그 관련된 문자를 엔티티코드로 변환)
function RemoveTag(s){
	var tmp = '';
	tmp = s;
	tmp = tmp.replace(/&/gi,"&amp;");
	tmp = tmp.replace(/</gi,"&lt;");
	tmp = tmp.replace(/>/gi,"&gt;");
	tmp = tmp.replace(/\"/gi,"&quot;");
	return tmp;
}

// 태그를 삭제처리.
function removeHtmlTag(s){
	s = s.replace(/<br\/>/ig, "\n");
	s = s.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");
	return s;
}

//자바스크립트 이스케이프 처리
function escape_javascript(s){
	if (s=='') return '';
	s = s.replace(/\n/gi,"\\n");
	s = s.replace(/\r/gi,"\\r");
	s = s.replace(/\'/gi,"\\'");
	s = s.replace(/\"/gi,"\\\"");
	return s;
}


function getYoutubeThumbnail(id){

	var thumbnail = [];
	thumbnail['mqdefault'] = "https://img.youtube.com/vi/"+id+"/mqdefault.jpg"; // Medium Quality Thumbnail
	thumbnail['hqdefault'] = "https://img.youtube.com/vi/"+id+"/hqdefault.jpg"; // High Quality Thumbnail
	thumbnail['sddefault'] = "https://img.youtube.com/vi/"+id+"/sddefault.jpg"; // Standard Definition Thumbnail
	thumbnail['maxresdefault'] = "https://img.youtube.com/vi/"+id+"/maxresdefault.jpg"; // Maximum Resolution Thumbnail
	var max_thumbnail = '';
	max_thumbnail = "https://img.youtube.com/vi/"+id+"/sddefault.jpg";

	return max_thumbnail;
}

function getVimeoThumbnail(src,callback){
	var vidStr = src.indexOf("video/");
	var vid = src.slice(vidStr+6);


	var url = "https://vimeo.com/api/v2/video/"+vid+".json";
	var thumb = "";

	$.getJSON(url, function( data) {
		thumb = data[0]['thumbnail_large'];
		callback(src,thumb);
	});

	// $.ajax({
	// 	type: 'GET',
	// 	url: url,
	// 	async:false,
	// 	dataType:'json',
	// 	success: function(data){
	// 		thumb =  data[0]['thumbnail_large'];
	// 		console.log(thumb);
	// 		return thumb;
	//
	// 	}
	// });


}



/**
 * 화폐 문자열로 변환
 * @param number
 * @param decimals
 * @param decPoint
 * @param thousandsSep
 * @returns {*|string}
 * @url http://locutus.io/php/strings/number_format/
 */
function money_format (number, decimals, decPoint, thousandsSep) {
	number = (number + '').replace(/[^0-9+\-Ee.]/g, '');
	var n = !isFinite(+number) ? 0 : +number;
	var prec = !isFinite(+decimals) ? 0 : Math.abs(decimals);
	var sep = (typeof thousandsSep === 'undefined') ? ',' : thousandsSep;
	var dec = (typeof decPoint === 'undefined') ? '.' : decPoint;
	var s = '';

	var toFixedFix = function (n, prec) {
		var k = Math.pow(10, prec);
		return '' + (Math.round(n * k) / k)
			.toFixed(prec)
	};

	// @todo: for IE parseFloat(0.55).toFixed(0) = 0;
	s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
	if (s[0].length > 3) {
		s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep)
	}
	if ((s[1] || '').length < prec) {
		s[1] = s[1] || '';
		s[1] += new Array(prec - s[1].length + 1).join('0')
	}

	return s.join(dec)
}

/**
 * 특정 jquery input 객체를 localize 화함
 * @param o
 */
function set_money_format(o, decimal_count, decimal_char, thousand_char){
	if (typeof decimal_count == "undefined")  decimal_count=LOCALIZE.getCurrencyDecimalCount();
	if (typeof decimal_char == "undefined")  decimal_char=LOCALIZE.getCurrencyDecimalChar();
	if (typeof thousand_char == "undefined")  thousand_char=LOCALIZE.getCurrencyThousandChar();
	o.number(true, decimal_count, decimal_char, thousand_char);
}

//현재 상황을 알수있는 토스트 표시
function toastrShow(){
	toastr.options = {
		"closeButton": false,
		"debug": false,
		"newestOnTop": false,
		"progressBar": false,
		"positionClass": "toast-top-center",
		"preventDuplicates": false,
		"onclick": null,
		"showDuration": "300",
		"hideDuration": "1000",
		"timeOut": "5000",
		"extendedTimeOut": "1000",
		"showEasing": "swing",
		"hideEasing": "linear",
		"showMethod": "fadeIn",
		"hideMethod": "fadeOut"
	};
	toastr.info('로드 중입니다...');
}


var ASIDE_RESIZE = function(){
	var stored = [];
	var add = function(c){
		stored.push(c);
	};
	var init = function(){
		$(window).on('resize.aside_height',function(){
			$.each(stored,function(e,c){
				resize(c);
			});
		});
	};

	var run = function(){
		$(window).trigger('resize.aside_height');
	};

	var resize = function(c){
		var $section = $('#'+c);
		if($section.length >0){
			if($section.attr('doz_aside')=='Y'){
				var $inside = $section.find('div[doz_type=inside]').not('div[doz_type=aside] div[doz_type=inside]');
				var $aside = $section.find('div[doz_type=aside]');
				var $aside_inside = $aside.find('div[doz_type=inside]');
				var inside_height = $inside.height();
				var aside_inside_height = $aside_inside.height();
				if(inside_height < aside_inside_height){
					$section.height(aside_inside_height);
				}else{
					$section.height('auto');
				}
			}
		}
	};

	return {
		'init' : function(){
			init();
		},
		'add' : function(c){
			add(c);
		},
		'run' : function(){
			run();
		},
		'resize' : function(k){
			resize(k);
		}
	}
}();

function parseUri (str) {
	var	o   = parseUri.options,
		m   = o.parser[o.strictMode ? "strict" : "loose"].exec(str),
		uri = {},
		i   = 14;

	while (i--) uri[o.key[i]] = m[i] || "";

	uri[o.q.name] = {};
	uri[o.key[12]].replace(o.q.parser, function ($0, $1, $2) {
		if ($1) uri[o.q.name][$1] = $2;
	});

	return uri;
}
parseUri.options = {
	strictMode: false,
	key: ["source","protocol","authority","userInfo","user","password","host","port","relative","path","directory","file","query","anchor"],
	q:   {
		name:   "queryKey",
		parser: /(?:^|&)([^&=]*)=?([^&]*)/g
	},
	parser: {
		strict: /^(?:([^:\/?#]+):)?(?:\/\/((?:(([^:@]*)(?::([^:@]*))?)?@)?([^:\/?#]*)(?::(\d*))?))?((((?:[^?#\/]*\/)*)([^?#]*))(?:\?([^#]*))?(?:#(.*))?)/,
		loose:  /^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/)?((?:(([^:@]*)(?::([^:@]*))?)?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/
	}
};

function windowOpen(win, url, width, height, scroll, method) {
	if(method == "post") {
		var newWin = window.open('', win, 'toolbar=no, channelmode=no, location=no, directories=no, menubar=no, scrollbars='+scroll+', resizable=yes, status=yes, width='+width+', height='+height);
		var urlInfo = parseUri(url);
		var $form = $("<form />");

		$form.attr("method","post");
		$form.attr("action", urlInfo.protocol+"://"+urlInfo.authority+urlInfo.path);
		$form.attr("target", win);

		for ( var i in urlInfo.queryKey ) {
			var $input = $("<input />");
			$input.attr("type", "hidden");
			$input.attr("name", i);
			$input.attr("value", urlInfo.queryKey[i]);
			$form.append($input);
		}
		var $body = $('body');

		$body.append($form);
		$form.submit();
	} else {
		return window.open(url, win, 'toolbar=no, channelmode=no, location=no, directories=no, menubar=no, scrollbars='+scroll+', resizable=yes, status=yes, width='+width+', height='+height);
	}
}


function setHeightCardType($obj){
	var height = 450;
	var $card = $obj.find('._card');
	$card.each(function(){
		var $_obj = $(this);

		var $_card_summary = $_obj.find('._card_summary');
		var $_card_head = $_obj.find('._card_head');
		var $_card_body = $_obj.find('._card_body');
		var $_card_foot = $_obj.find('._card_foot');
		var head_height = $_card_head.height();
		var summary_height = $_card_summary.height();
		if($_card_foot.length > 0)
			var foot_height = $_card_foot.height();
		else
			var foot_height = 0;
		$_card_body.height(Math.round(height- head_height-summary_height-foot_height));
	});
}

function android_version(){
	var x = navigator.userAgent;
	if(x.match(/Android/)){
		var index = x.indexOf('Android');
		var and_v = eval(x.substr(index+8,1));
		return and_v;
	}else{
		return 0;
	}
}


var dozProgress = function(){
	var run = 0;
	var end = 0;
	var init = function(){
		if(typeof NProgress == 'undefined')
			return;
		NProgress.configure({
			minimum: 0.08,
			easing: 'linear',
			positionUsing: '',
			speed: 350,
			trickle: true,
			trickleSpeed: 250,
			showSpinner: true,
			barSelector: '[role="bar"]',
			spinnerSelector: '[role="spinner"]',
			parent: 'body',
			template: '<div class="bar" role="bar"><div class="peg"></div></div><div class="spinner" role="spinner"><div class="spinner-icon"></div></div>'
		});
	};
	var start = function(){
		if(typeof NProgress == 'undefined')
			return;
		if(run===0){
			NProgress.start();
		}else{
			NProgress.inc();
		}
		run++;
	};

	var increase = function(amount){
		NProgress.inc(amount);
	};
	var done = function(){
		if(typeof NProgress == 'undefined')
			return;
		end++;
		if(run <= end){
			NProgress.done();
			run = 0;
			end = 0;
		}
	};
	$(function(){
		init();
	});
	return {
		'start' : function(){
			start();
		},
		'increase' : function(){
			increase();
		},
		'done' : function(){
			done();
		}
	}
}();
var getVideoId = function(src) {
	if(isBlank(src))
		return {};

	var youtube = src.match(/\/\/(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=|embed\/)?([a-z0-9\-\_\%]+)/i);
	var vimeo = src.match(/\/\/(?:www|player\.)?vimeo.com\/([0-9a-z\-_]+)/i);

	var dailymotion = src.match(/\/\/(?:www\.)?dai.ly\/([0-9a-z\-_]+)/i);
	var vk = src.match(/\/\/(?:www\.)?(?:vk\.com|vkontakte\.ru)\/(?:video_ext\.php\?)(.*)/i);

	if (youtube) {
		return {
			youtube: youtube
		};
	} else if (vimeo) {
		return {
			vimeo: vimeo
		};
	} else if (dailymotion) {
		return {
			dailymotion: dailymotion
		};
	} else if (vk) {
		return {
			vk: vk
		};
	}
};



(function(){
	var setImageMapBox = function(el, o){
		this.id = makeUniq();
		this.$element = $(el);
		this.default_option = {
			'window_resize' : false,
			'container'  : $('body'),
			'left' : 0,
			'top' : 0,
			'width' :100,
			'height' : 100,
			'set_width' : 530 //기준 넓이
		};

		if(typeof o == 'undefined')
			o = {};

		this.options = $.extend(this.default_option, o);
		this.$container = o.container;
		this.init();

	};


	setImageMapBox.prototype.init = function(){
		var that = this;
		this.$element.css({'position':'absolute'});
		this.set();
		if(this.options.window_resize){
			$(window).off('resize.'+this.id).on('resize.'+this.id,function(){
				that.set();
			});
		}

	};

	setImageMapBox.prototype.set = function(){
		var container_width = this.$container.width();
		var ratio = container_width/this.options.set_width;
		var top = parseInt(this.options.top) * ratio;
		var left = parseInt(this.options.left) * ratio;
		var width = parseInt(this.options.width) * ratio;
		var height = parseInt(this.options.height) * ratio;
		this.$element.css({
			'top' : top,
			'left' : left,
			'width' : width,
			'height' : height
		});

	};

	setImageMapBox.prototype.destroy = function(){

	};


	function PLUGIN(o){
		var obj = $(this);
		var data = obj.data('setImageMapBox');
		if(typeof o == 'string'){
			if(!data) obj.data('setImageMapBox', (data = new setImageMapBox(obj, o)));
			return data[o]();
		}else if(typeof o == 'object'){
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('setImageMapBox', (data = new setImageMapBox(obj, o)));
		}
		return this;
	}
	$.fn.setImageMapBox = PLUGIN;
})();


function ieScrollFix(){
	if(navigator.userAgent.match(/Trident\/7\./)){
		$('body').on("mousewheel.iescroll", function(){
			event.preventDefault ? event.preventDefault() : (event.returnValue = false);
			var wheelDelta = event.wheelDelta;
			var currentScrollPosition = window.pageYOffset;
			window.scrollTo(0, currentScrollPosition - wheelDelta);
		});

		$('body').on('keydown.iescroll', function(e){
			switch(e.which){
				case 38: // up
					if(e.target.tagName == 'BODY' || e.target.tagName == 'INPUT'){
						e.preventDefault(); // prevent the default action (scroll / move caret)
						var currentScrollPosition = window.pageYOffset;
						window.scrollTo(0, currentScrollPosition - 120);
					}
					break;

				case 40: // down
					if(e.target.tagName == 'BODY' || e.target.tagName == 'INPUT'){
						e.preventDefault(); // prevent the default action (scroll / move caret)
						var currentScrollPosition = window.pageYOffset;
						window.scrollTo(0, currentScrollPosition + 120);
					}
					break;

				default:
					return; // exit this handler for other keys
			}
		});
	}
}

/**
 * 환율 가져오기
 */
function getCurrencyExchangeRate(from_currency, target_currency, complete_handler, site_code, unit_code){
	$.ajax({
		type: 'POST',
		url: ('/ajax/get_currency_exchange_rate.cm'),
		dataType: 'json',
		data : {'site_code':site_code, 'unit_code':unit_code, 'from_currency':from_currency,'target_currency':target_currency},
		success: function(res){
			if (res.msg=='SUCCESS'){
				if (complete_handler!="undefined") complete_handler(res);
			}else{
				complete_handler({'rate':1,'user_rate':1});
			}

		}
	});
}


(function(){
	var cbjLink = function($el, o){
		var default_option = {
			'default' : '',
			'data' : {},
			'menu_list' : [],
			'input_width' : 230
		};
		this.element = $el;
		this.o = o;
		this.o = $.extend(default_option, this.o);

		this.disabled = false;

		this.init();
	};

	cbjLink.prototype.init = function(){
		this.element.empty();
		var that = this;
		var data = this.o.data;

		data.file_code = typeof data.file_code == 'undefined' ? '' : data.file_code;
		data.file_name = typeof data.file_name == 'undefined' ? '' : data.file_name;
		data.file_size = typeof data.file_size == 'undefined' ? 0 : data.file_size;
		data.callnum = typeof data.callnum == 'undefined' ? '' : data.callnum;
		data.custom = typeof data.custom == 'undefined' ? '' : data.custom;
		// 동영상 링크 사용 시에 data.custom이 JSON으로 넘어오지 않았을 경우 변환
		data.custom = data.link_type == 'video' && data.custom == '' ? {'video_url': ''} : data.custom;		// TODO url이 입력되지 않았을 때 예외처리 필요
		data.custom = data.link_type == 'video' && typeof data.custom == 'string' ? JSON.parse(data.custom) : data.custom;
		data.custom = data.link_type == 'sns_share' && data.custom == '' ? {'sns_share': 'default'} : data.custom;		// TODO url이 입력되지 않았을 때 예외처리 필요
		data.custom = data.link_type == 'sns_share' && typeof data.custom == 'string' ? JSON.parse(data.custom) : data.custom;
		data.link_email = typeof data.link_email == 'undefined' ? '' : data.link_email;


		var menu_list = this.o.menu_list;
		var input_width = this.o.input_width;
		var link_type_list = [{'key':'default','value':'링크'},{'key':'call','value':'전화걸기'},{'key':'sms','value':'문자발송'},{'key':'link_email','value':'이메일'},{'key':'file','value':'파일첨부'},{'key':'video','value':'동영상'},{'key':'sns_share','value':'소셜공유'},{'key':'bookmark','value':'즐겨찾기'},{'key':'custom','value':'코드'}];

		var $link_type = $('<input type="text" class="dz-form-control width-2" readonly="">');
		var $link_type_wrap = $('<div class="division-block form-select width-2" />');
		$link_type_wrap.append($link_type).css('display','table-cell');
		this.element.append($link_type_wrap);
		var $link_input = $('<input class="dz-form-control" type="text">');
		var $link_input_wrap = $('<div class="division-block _hide_link_input" />');
		$link_input_wrap.append($link_input).css('display','table-cell');
		var $delete_link = $('<i class="zmdi zmdi-close _delete_link"></i>');
		$link_input_wrap.append($delete_link);
		this.element.append($link_input_wrap);

		var $call_input = $('<input class="dz-form-control " type="text">');
		var $call_input_wrap = $('<div class="division-block _hide_link_input" />').css('display','table-cell');
		$call_input_wrap.append($call_input);
		this.element.append($call_input_wrap);

		var $file_input = $('<div class="bt bt-round holder"><span>파일 업로드</span><input class="dz-form-control" type="file"></div>');
		var $file_name = $('<span class="margin-left-lg text-ellipses" />');
		var $delete_file = $('<a href="javascript:;" class="margin-left-xl text-18 vertical-middle"><i class="btm bt-times-circle"></i></a>');
		var $file_input_wrap = $('<div class="division-block _hide_link_input" />').css('display','table-cell');
		$file_input_wrap.append($file_input);
		$file_input_wrap.append($file_name);
		$file_input_wrap.append($delete_file);
		this.element.append($file_input_wrap);

		var $video_input = $('<input class="dz-form-control" type="text">');
		var $video_input_wrap = $('<div class="division-block _hide_link_input" />').css('display','table-cell');
		$video_input_wrap.append($video_input);
		this.element.append($video_input_wrap);

		var $video_loop = $('<div class="checkbox checkbox-styled division-block"><label><input type="checkbox"><span>반복 재생</span></label></div>');
		var $video_hide_title = $('<div class="checkbox checkbox-styled division-block"><label><input type="checkbox"><span>제목 감추기</span></label></div>');
		var $video_setting_wrap = $('<div class="division-block _hide_link_input" />');
		$video_setting_wrap.append($video_loop);
		$video_setting_wrap.append($video_hide_title);
		this.element.append($video_setting_wrap);

		var sns_share_type_list = [{'key':'default','value':'소셜 공유창 실행'},{'key':'kakaotalk','value':'카카오톡'},{'key':'kakaostory','value':'카카오스토리'},{'key':'line','value':'라인'},{'key':'band','value':'밴드'},{'key':'facebook','value':'Facebook'},{'key':'twitter','value':'Twitter'},{'key':'googleplus','value':'Google+'}];

		var $sns_share_type = $('<input type="text" class="dz-form-control width-3" readonly="">');
		var $sns_share_type_wrap = $('<div class="division-block form-select width-3 _hide_link_input" />');
		$sns_share_type_wrap.append($sns_share_type).css('display','table-cell');
		this.element.append($sns_share_type_wrap);

		var $custom_input = $('<input class="dz-form-control" type="text">');
		var $custom_input_wrap = $('<div class="division-block _hide_link_input" />').css('display','table-cell');
		$custom_input_wrap.append($custom_input);
		this.element.append($custom_input_wrap);

		var $email_input = $('<input class="dz-form-control" type="text">');
		var $email_input_wrap = $('<div class="division-block _hide_link_input" />').css('display','table-cell');
		$email_input_wrap.append($email_input);
		this.element.append($email_input_wrap);

		//선택창을 사용하지 않는 경우 공간 맞춤을 위한 더미 남겨둠
		var $dummy_wrap = $('<div class="division-block _hide_link_input" />').css('visibility','hidden');
		this.element.append($dummy_wrap);

		var $new_window_wrap = $('<div class="checkbox checkbox-styled division-block _hide_link_input" />');
		var $new_window = $('<label><input type="checkbox" value=""><span>새창</span></label>');
		$new_window_wrap.append($new_window);
		this.element.append($new_window_wrap);

		var $hide_link_input = this.element.find('._hide_link_input');

		var changeLinkType = function(type){
			switch(type){
				case 'call' :
				case 'sms' :
					$hide_link_input.hide();
					$call_input_wrap.show();
					break;
				case 'file' :
					$hide_link_input.hide();
					$file_input_wrap.show();
					break;
				case 'link_email' :
					$hide_link_input.hide();
					$email_input_wrap.show();
					break;
				case 'video' :
					$hide_link_input.hide();
					$video_input_wrap.show();
					$video_setting_wrap.show();
					break;
				case 'sns_share' :		// sms와 혼동 방지
					$hide_link_input.hide();
					$sns_share_type_wrap.show();
					$dummy_wrap.show();
					break;
				case 'bookmark' :
					$hide_link_input.hide();
					$dummy_wrap.show();
					break;
				case 'custom' :
					$hide_link_input.hide();
					$custom_input_wrap.show();
					break;
				default :
					$hide_link_input.hide();
					$link_input_wrap.show();
					$new_window_wrap.show();
					break;
			}
		};

		changeLinkType(data.link_type);


		if(data.file_code != ''){
			$delete_file.show();
			$file_name.show();
		}else{
			$delete_file.hide();
			$file_name.hide();
		}

		var switchFile = function(data){
			if(data.file_code != ''){
				$delete_file.show();
				$file_name.show();
				$file_name.text(data.file_name);
				$file_input.find('span').text('파일 변경');
			}else{
				$delete_file.hide();
				$file_name.hide();
				$file_name.text('');
				$file_input.find('span').text('파일 업로드');
			}
		};
		switchFile(data);

		$delete_file.off('click').on('click',function(){
			var tmp = {'file_code': '','file_name':'','file_size':''};
			switchFile(tmp);
			data = $.extend(data,tmp);
			that.change(data);
		});
		var default_option = {
			dataType : 'json',
			singleFileUploads : false,
			limitMultiFileUploads : 20,
			formData : {temp : 'N'},
			dropZone : null,
			start : function(e, data){
				dozProgress.start();
				// TODO site 에서는 preloader 변수가 아직 없음
				//$preloader.show();
			},
			progress : function(e, data){
				dozProgress.increase(data.loaded);
				// Calculate the completion percentage of the upload
				var progress = parseInt(data.loaded / data.total * 100, 10);
				if(progress == 100){
					//	data.context.removeClass('working');
				}
			},
			done : function(e, data){
				dozProgress.done();
				if(typeof callback != 'undefined' && typeof callback == 'function'){
					callback('success', data.result.files, data.result);
				}else
					return data.result.files;
			},
			fail : function(e, data){
				dozProgress.done();
				if(typeof callback != 'undefined' && typeof callback == 'function'){
					callback('error');
				}else
					return 'error';
			}
		};
		$file_input.find('input').attr('accept', '*');
		$file_input.fileupload({
			url : '/admin/ajax/upload_file.cm',
			dataType : 'json',
			singleFileUploads : false,
			limitMultiFileUploads : 20,
			formData : {'target' : that.o.target, 'target_code' : that.o.target_code},
			dropZone : null,
			start : function(e, data){
				dozProgress.start();
			},
			progress : function(e, data){
				dozProgress.increase(data.loaded);
			},
			done : function(e, res){
				dozProgress.done();
				$.each(res.result.files, function(index, file){
					if(file.error != null){
						alert(file.error);
					}else{
						var tmp = {'file_code' : file.code, 'file_name' : file.org_name, 'file_size' : file.size};
						switchFile(tmp);
						data = $.extend(data, tmp);
						that.change(data);
					}
				});
			},
			fail : function(e, data){
				dozProgress.done();
				alert('error');
			}
		});


		$link_type.setSelectBox({
			'option'  : link_type_list,
			'default' : data.link_type,
			'set'     : {'width':100, 'use_custom_value':'N'},
			change  : function(res){
				if(res.key != data.link_type) {
					changeLinkType(res.key);

					var tmp = {'link_type': res.key};
					data = $.extend(data,tmp);
					that.change(data);
				}
			}
		});

		var link_code_exist = false;
		if(data.use_link_code == 'Y'){
			$.each(menu_list,function(e,_link_data){
				if(_link_data.key == data.link_code){
					link_code_exist = true;
					return false;
				}
			});
			if(!link_code_exist){
				var tmp = {'link': '','link_url': '', 'link_code': '', 'use_link_code': 'N'};
				data = $.extend(data,tmp);
				that.change(data);
			}

		}
		var link_code = data.use_link_code=='Y';
		$delete_link[data.use_link_code=='Y'?'show':'hide']();
		$delete_link.off('click').on('click',function(){
			$link_input.setSelectBox('set','');
			$link_input.setInput('set','');
			$link_input.setInput('setEnable');
			$delete_link.hide();
			$link_input.prop('readonly',false);
			link_code = false;
			var tmp = {'link': '','link_url': '', 'link_code': '', 'use_link_code': 'N'};
			data = $.extend(data,tmp);
			that.change(data);
		});

		$link_input.setSelectBox({
			'option'  : menu_list,
			'default' : data.use_link_code == 'Y' ? data.link_code : 'not',
			'set'     : {'width':input_width, 'use_custom_value':'Y'},
			change  : function(res){
				if(res.key != data.link_code) {
					link_code = true;
					$link_input.setInput('setDisable');
					$link_input.prop('readonly', true);
					$delete_link.show();
					var tmp = {'link': $(res.value).text(),'link_url': $(res.value).text(), 'link_code': res.key, 'use_link_code': 'Y'};
					data = $.extend(data,tmp);
					that.change(data);
				}
			}
		});
		if(link_code){
			$link_input.setInput('setDisable');
		}
		data.link = data.link==null?'':data.link;
		var link_text = data.use_link_code == 'Y' ? data.link.replace("/", "") : data.link;
		$link_input.setInput({
			'event' : ['blur'],
			'default' : link_text,
			'change' : function (res) {
				if(!link_code) {
					if(res != data.link) {
						$link_type.text('http://');
						$link_input.prop('readonly', false);
						$delete_link.hide();
						var tmp = {'link': res,'link_url': res, 'link_code' : '', 'use_link_code': 'N'};
						data = $.extend(data,tmp);
						that.change(data);
					}
				}
			}
		});

		$call_input.setInput({
			'event' : ['blur'],
			'default' : data.callnum,
			'change' : function (res) {
				if(res != data.callnum) {
					var tmp = {'callnum': res};
					data = $.extend(data,tmp);
					that.change(data);
				}
			}
		}).check_callnum();

		//동영상 링크일 때는 custom 필드 사용
		$video_input.setInput({
			'event' : ['blur'],
			'default' : function () {
				if(data.link_type != 'video') {		// 비디오 링크가 아닐 때 비디오 input에선 기본값을 보이지 않음
					return '';
				}
				return data.custom.video_url;
			},
			'change' : function (res) {
				if(res != data.custom.video_url) {
					var tmp = {'video_url': res};
					data.custom = $.extend(data.custom, tmp);
					that.change(data);
				}
			}
		});

		$video_loop.setCheck({
			value : function () {
				if(data.link_type != 'video') {
					return false;
				}
				return data.custom.loop=='Y';
			},
			change: function (res) {
				var tmp = {'loop': res?'Y':'N'};
				data.custom = $.extend(data.custom,tmp);
				that.change(data);
			}
		});

		$video_hide_title.setCheck({
			value : function () {
				if(data.link_type != 'video') {
					return false;
				}
				return data.custom.hide_title=='Y';
			},
			change: function (res) {
				var tmp = {'hide_title': res?'Y':'N'};
				data.custom = $.extend(data.custom,tmp);
				that.change(data);
			}
		});

		//소셜공유 링크일 때는 custom 필드 사용
		$sns_share_type.setSelectBox({
			'option'  : sns_share_type_list,
			'default' : data.link_type == 'sns_share' ? data.custom.sns_share_type : 'default',	// sns_share가 아닐 때에는 기본값(custom.sns_share_type 호출 방지)
			'set' : {'width': 150, 'use_custom_value':'N'},
			change  : function(res){
				if(res.key != data.custom.sns_share_type) {
					var tmp = {'sns_share_type': res.key};
					data.custom = $.extend(data.custom,tmp);
					that.change(data);
				}
			}
		});

		$custom_input.setInput({
			'event' : ['blur'],
			'default' : function () {
				if(data.link_type != 'custom') {		// 코드 외에 custom 필드를 사용할 때 코드 input에선 기본값을 보이지 않음
					return '';
				}
				return data.custom;
			},
			'change' : function (res) {
				if(res != data.custom) {
					var tmp = {'custom': res};
					data = $.extend(data,tmp);
					that.change(data);
				}
			}
		});

		$email_input.setInput({
			'event' : ['blur'],
			'default' : data.link_email,
			'change' : function (res) {
				if(res != data.custom) {
					var tmp = {'link_email': res};
					data = $.extend(data,tmp);
					that.change(data);
				}
			}
		}).check_email();

		$new_window.setCheck({
			value : data.new_window=='Y',
			change: function (res) {
				var tmp = {'new_window': res?'Y':'N'};
				data = $.extend(data,tmp);
				that.change(data);
			}
		});
	};

	cbjLink.prototype.change = function(data){
		this.o.change(data);
	};

	cbjLink.prototype.get = function(){
		return this.element.val();
	};

	cbjLink.prototype.set = function(value){
		return this.element.val(value);
	};

	cbjLink.prototype.setDisable = function(){
		this.disabled = true;
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
	};
	cbjLink.prototype.setEnable = function(){
		this.disabled = false;
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
	};

	cbjLink.prototype.disable = function(){
		this.disabled = true;
		this.element.prop("disabled", true);
		this.element.toggleClass('disabled', true);
	};
	cbjLink.prototype.enable = function(){
		this.disabled = false;
		this.element.prop("disabled", false);
		this.element.toggleClass('disabled', false);
	};

	cbjLink.prototype.destroy = function(){
		this.element.data('setInput',false);
	};

	function PLUGIN(o, d){
		var $obj = $(this);
		if(typeof o == 'string'){
			var data = $obj.data('setLink');
			if(!data) $obj.data('setLink', (data = new cbjLink($obj, o)));
			return data[o](d);
		}else if(typeof o == 'object'){
			var data = $obj.data('setLink');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			$obj.data('setLink', (data = new cbjLink($obj, o)));
		}
		return this;
	}

	$.fn.setLink = PLUGIN;

})();

/**
 * min (포함) 과 max (불포함) 사이의 임의 정수를 반환
 * @param min
 * @param max
 * @returns {*}
 */
function getRandomInt(min, max) {
	return Math.floor(Math.random() * (max - min)) + min;
}

/**
 * min (포함) 과 max (포함) 사이의 임의 정수를 반환
 * @param min
 * @param max
 * @returns {*}
 */
function getRandomIntInclusive(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}

(function(){
	var imageEditor = function(el, o){
		var that = this;
		var default_option = {
			'url' : '',
			'upload_option' : {
				'url' : '/admin/ajax/upload_image.cm',
				'mode' : 'extra',
				'target' : '',
				'target_code':''
			}
		};
		this.aviary = {};
		this.element = $(el);
		this.$dummy_img = {};
		this.option = o;
		this.option = $.extend(default_option, this.option);

		this.init();
		this.element.off('click.imageEditor').on('click.imageEditor',function(){
			that.open();
		});
	};
	imageEditor.prototype.open = function(){
		var that = this;

		var url = that.option.url;
		that.$dummy_img = $('<img />').attr({
			'src' : url,
			'id' : makeUniq()
		});
		that.$dummy_img.css({
			'position' : 'absolute',
			'left' : '-99999px',
		});
		$('body').append(that.$dummy_img);
		that.aviary.launch({
			'image': that.$dummy_img[0].id,
			'hiresUrl': url,
			'url': url
		});
	};

	imageEditor.prototype.destroy = function(){
		this.element.off('click.imageEditor');
		this.option = {
			'url' : ''
		};
		this.element.data('imageEditor',false);
	};


	imageEditor.prototype.set = function(url){
		this.option.url = url;
	};

	imageEditor.prototype.init = function(){
		var that = this;
		if(isBlank(that.option.url))
			return;
		console.log('ADOBE_AVIARY_KEY', ADOBE_AVIARY_KEY);

		that.aviary = new Aviary.Feather({
			'apiKey': ADOBE_AVIARY_KEY,
			'authenticationURL': '/auth/aviary_auth.cm',
			'language' : 'ko',
			'hiresWidth' : 2000,
			'hiresHeight' : 2000,
			'onSaveButtonClicked': function() {
				//  Important Signature’s must be unique for each editor.saveHiRes() call.
				//  See Authentication section.

				that.aviary.saveHiRes();
				return false;
			},
			'onSaveHiRes': function(imageID, newURL) {
				console.log('onSave',newURL);
				$.ajax({
					'type':'POST',
					'data':{
						'external_url' : newURL,
						'external' : 'Y',
						'target' : that.option.upload_option.target,
						'target_code' : that.option.upload_option.target_code
					},
					'url':(that.option.upload_option.url),
					'dataType':'json',
					'async':false,
					'cache':false,
					'success':function(result){
						console.log('result', result);
						//that.$dummy_img.remove();
						if(typeof that.option['change'] == 'function'){
							that.option['change'](result.files);
						}

						that.aviary.close();
					}
				});

			},
			'onError': function(errorObj) {
				console.log('onError');
				if(typeof that.option['error'] == 'function'){
					that.option['error'](errorObj);
				}
			}
		});
	};

	function PLUGIN(o, d){
		var obj = $(this);
		if(typeof o == 'string'){
			var data = obj.data('imageEditor');
			if(!data) obj.data('imageEditor', (data = new imageEditor(obj, o)));
			return data[o](d);
		}else if(typeof o == 'object'){
			var data = obj.data('imageEditor');
			if(typeof data != 'undefined'){
				if(data !== false){
					data.destroy();
				}
			}
			obj.data('imageEditor', (data = new imageEditor(obj, o)));
		}
		return this;
	}
	$.fn.imageEditor = PLUGIN;
})();
