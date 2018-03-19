var SITE = function(){
	var openPolicy = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {},
			url: ('/dialog/policy.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_policy', custom_popup: $html});
			}
		});
	};
	var openPrivacy = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {},
			url: ('/dialog/privacy.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_privacy', custom_popup: $html});
			}
		});
	};
	var openDomestic = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {},
			url: ('/dialog/tour_policy_domestic.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_domestic', custom_popup: $html});
			}
		});
	};
	var openOverseas = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {},
			url: ('/dialog/tour_policy_overseas.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_overseas', custom_popup: $html});
			}
		});
	};
	var openDomesticOverseas = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {},
			url: ('/dialog/tour_policy.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_domesticoverseas', custom_popup: $html});
			}
		});
	};

	var changeAlarmCheckbox = function(obj, is_mobile){
		if(is_mobile == 'Y'){
			$('#alarm_popup').find("input:checkbox").prop("checked", false);
			var $alarm_popup = $('#alarm_popup_mobile');
		}else{
			$('#alarm_popup_mobile').find("input:checkbox").prop("checked", false);
			var $alarm_popup = $('#alarm_popup');
		}

		if($(obj).hasClass("_all")){
			$alarm_popup.find("input:checkbox").prop("checked", obj.checked);
			toggleAlarmActive(is_mobile);
		}else{
			var count_total = $alarm_popup.find("._alarm_list li").length;
			var count_check = $alarm_popup.find("input:checkbox:checked").length;
			if($alarm_popup.find("._all").prop("checked")){
				count_check = count_check - 1;
			}
			if(count_total == count_check && (count_check != 0 && count_total != 0)){
				$alarm_popup.find("._all").prop("checked", true);
			}else{
				$alarm_popup.find("._all").prop("checked", false);
			}
			toggleAlarmActive(is_mobile);
		}
	};

	var toggleAlarmPopup = function(is_mobile){
		if(is_mobile == 'Y'){
			var $alarm_popup = $('#alarm_popup_mobile');
			var $dLabel = $('#dLabel_mobile');
			var $id = 'alarm_popup_mobile';
			var $clos_id = 'alarm_popup';
			var $layer = '_alarm_layer_mobile';
		}else{
			var $alarm_popup = $('#alarm_popup');
			var $dLabel = $('#dLabel');
			var $id = 'alarm_popup';
			var $clos_id = 'alarm_popup_mobile';
			var $layer = '_alarm_layer';
		}
		$alarm_popup.toggleClass('open');
		if($alarm_popup.hasClass('open')){
			$(window).off('mousedown.'+$clos_id);
			$(window).on('mousedown.'+$id,function(event){
				if($(event.target).closest('.'+$layer).length == 0){
					$alarm_popup.removeClass('open');
					$(window).off('mousedown.'+$id);
				}
			});
		}
	};

	var toggleAlarmActive = function(is_mobile){
		if(is_mobile == 'Y'){
			var $alarm_popup = $('#alarm_popup_mobile');
			var $dLabel = $('#dLabel_mobile');
		}else{
			var $alarm_popup = $('#alarm_popup');
			var $dLabel = $('#dLabel');
		}
		var count_check = $alarm_popup.find("li input:checkbox:checked").length; 
		if(count_check == 0){ 
			$dLabel.removeClass('active'); 
		}else{ 
			$dLabel.addClass('active'); 
		}
	};
	var androidUpdateAlert = function (package) {
		$.ajax({
			type : 'POST',
			data: {'package':package},
			url : ('dialog/android_update_form.cm'),
			dataType : 'html',
			async : false,
			cache : false,
			success : function(html){
				$.cocoaDialog.open({type : 'site_alert', custom_popup : $(html)});
			}
		});
	};

	var firstScrollFixed = function(id){
		var stop_fixed = {};
		clearInterval(stop_fixed);
		var setCss = function(id){
			var top = $(window).scrollTop();
			clearInterval(stop_fixed);
			if(top > 0){
				$('#'+id).toggleClass('first_scroll_fixed',false);
				$('#' + id).find('div[data-type="section-wrap"].scroll-to-fixed-fixed2').toggleClass('scroll-to-fixed-fixed',true).toggleClass('scroll-to-fixed-fixed2',false);
				$('#' + id).find('div[data-type="carousel_menu"].scroll-to-fixed-fixed2').toggleClass('scroll-to-fixed-fixed',true).toggleClass('scroll-to-fixed-fixed2',false);
			}else{
				$('#'+id).toggleClass('first_scroll_fixed',true);
				stop_fixed = setInterval(function(){
					var $fixed = $('#' + id).find('div[data-type="section-wrap"].scroll-to-fixed-fixed');
					var $fixed2 = $('#' + id).find('div[data-type="carousel_menu"].scroll-to-fixed-fixed');
					if($fixed.length > 0 || $fixed2.length >0){
						clearInterval(stop_fixed);
						$('#' + id).find('div[data-type="section-wrap"].scroll-to-fixed-fixed').toggleClass('scroll-to-fixed-fixed', false).toggleClass('scroll-to-fixed-fixed2', true);
						$('#' + id).find('div[data-type="carousel_menu"].scroll-to-fixed-fixed').toggleClass('scroll-to-fixed-fixed', false).toggleClass('scroll-to-fixed-fixed2', true);
					}
				},200);
				$('#' + id).find('div[data-type="section-wrap"].scroll-to-fixed-fixed').toggleClass('scroll-to-fixed-fixed',false).toggleClass('scroll-to-fixed-fixed2',true);
				$('#' + id).find('div[data-type="carousel_menu"].scroll-to-fixed-fixed').toggleClass('scroll-to-fixed-fixed',false).toggleClass('scroll-to-fixed-fixed2',true);
			}
		};
		$(window).bind('scroll.firstScrollFixed',function(){
			setCss(id);
		});

		$(window).bind('resize.firstScrollFixed',function(){
			setCss(id);
		});

		setCss(id);
	};

	/**
	 *
	 * @returns {boolean}
	 */

	var setBookMark = function(){
		var bookmarkURL = window.location.href;
		var bookmarkTitle = document.title;
		var triggerDefault = false;

		if (window.sidebar && window.sidebar.addPanel) {
			// Firefox version < 23
			window.sidebar.addPanel(bookmarkTitle, bookmarkURL, '');
		} else if ((window.sidebar && (navigator.userAgent.toLowerCase().indexOf('firefox') > -1)) || (window.opera && window.print)) {
			// Firefox version >= 23 and Opera Hotlist
			var $this = $(this);
			$this.attr('href', bookmarkURL);
			$this.attr('title', bookmarkTitle);
			$this.attr('rel', 'sidebar');
			$this.off(e);
			triggerDefault = true;
		} else if (window.external && ('AddFavorite' in window.external)) {
			// IE Favorite
			window.external.AddFavorite(bookmarkURL, bookmarkTitle);
		} else {
			// WebKit - Safari/Chrome
			alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
		}

		return triggerDefault;
	};

	var setSnsShare = function(_type){
		SNS.init(MENU_SNS_INIT_DATA);
		switch(_type){
			case 'kakaotalk':
				SNS.shareKakaoTalk();
				break;
			case 'kakaostory':
				SNS.shareKakaoStory();
				break;
			case 'line':
				SNS.shareLine();
				break;
			case 'band':
				SNS.shareBand();
				break;
			case 'facebook':
				SNS.shareFacebook();
				break;
			case 'twitter':
				SNS.shareTwitter();
				break;
			case 'googleplus':
				SNS.shareGoogleplus();
				break;
			case 'default':
			default:
				SNS.showDefalutSnsShareList();
				break;
		}
	};

	/**
	 * 대상 없이 단일 라이트갤러리를 띄움
	 * @param d
	 */

	var showLightGallery = function(d){
		var _data = d;
		var _type = _data.type;

		if(_type == 'gallery'){
			var img_url = _data.img_url;
			var $_body = $("body");
			if($("#lg-temp-gallery").length > 0){		// 이전에 사용된 라이트갤러리 제거
				$("#lg-temp-gallery").remove();
			}
			var $_html = '<div id="lg-temp-gallery">' +
				'<a href="' + img_url + '"></a>' +
				'</div>';
			$_body.append($_html);

			$("#lg-temp-gallery").lightGallery();

			$("#lg-temp-gallery a").trigger('click');

		}else if(_type == 'video'){
			var video_url = _data.video_url;		// 바른 주소가 아닐 경우 예외처리 필요
			var loop = _data.loop;
			var hide_title = _data.hide_title;

			var youtube_id = '';
			var video_id = getVideoId(video_url);
			if(typeof video_id != 'undefined'){
				if (typeof video_id['youtube'] != 'undefined' && video_id['youtube'][1] != ''){
					youtube_id = video_id['youtube'][1];
				}
			}

			var $_body = $("body");
			if($("#lg-temp-gallery").length > 0){
				$("#lg-temp-gallery").remove();
			}
			var $_html = '<div id="lg-temp-gallery">' +
				'<a href="' + video_url + '"></a>' +
				'</div>';
			$_body.append($_html);

			// vimeo의 경우 자동재생 시에는 타이틀 노출이 되지 않으므로 자동재생이 되지 않는 모바일에서 타이틀 확인 가능
			$("#lg-temp-gallery").lightGallery({
				youtubePlayerParams: {
					loop: 1,
					playlist: loop=='Y'?youtube_id:'',
					autoplay : 1,
					rel : 0,
					showinfo: hide_title=='Y'?0:''
				},
				vimeoPlayerParams : {
					loop: loop=='Y'?1:0,
					autoplay : 1,
					rel : 0,
					title: hide_title=='Y'?0:1
				},
				controls: 0,
				zoom: false,
				fullScreen: false,
				download: false,
				counter: false,
				hash: false,
				videoMaxWidth:1140
			});

			$("#lg-temp-gallery a").trigger('click');

		}
	};


	return {
		'openPolicy' : function(){
			openPolicy();
		},
		'openPrivacy' : function(){
			openPrivacy();
		},
		'openDomestic' : function(){
			openDomestic();
		},
		'openOverseas' : function(){
			openOverseas();
		},
		'openDomesticOverseas' : function(){
			openDomesticOverseas();
		},
		'changeAlarmCheckbox' : function(obj, is_mobile){
			changeAlarmCheckbox(obj,is_mobile);
		},
		'toggleAlarmPopup' : function(is_mobile){
			toggleAlarmPopup(is_mobile);
		},
		'androidUpdateAlert' : function (package) {
			androidUpdateAlert(package);
		},
		'firstScrollFixed' : function(id){
			firstScrollFixed(id);
		},
		'setBookMark' : function(){
			setBookMark();
		},
		'setSnsShare' : function(d, type){
			setSnsShare(d, type);
		},
		'showLightGallery' : function(d){
			showLightGallery(d);
		}
	}

}();


