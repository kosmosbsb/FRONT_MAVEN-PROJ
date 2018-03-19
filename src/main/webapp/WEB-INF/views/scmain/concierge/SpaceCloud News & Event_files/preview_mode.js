var PREVIEW_MODE = function(){
	var $preview_bar;
	var $window;
	//var show = false;
	//var hide = true;
	//var hide_timeout = {};
	//var auto_hide_timeout = {};
	var init = function(){
		$preview_bar = $('#preview_mode_bar');
		$window = $(window);
	//	mouseTrigger();
	//	showBar();
	};

	var publishDesignTemp = function(){
		$.ajax({
			type: 'POST',
			data: {'mode':'publish'},
			url: ('/admin/ajax/publish_design_temp.cm'),
			dataType: 'json',
			async: true,
			cache: false,
			success: function (result) {
				if (result.msg == 'SUCCESS') {
					$preview_bar.find('._temp').hide();
					$preview_bar.find('._published').show();
				}else{
					alert(result.msg );
				}
			}
		});
	};

	var closePreviewMode = function(back_url){
		window.location.href='/backpg/close_preview_mode.cm?back_url='+back_url;
	};
	return {
		'init' : function(){
			init();
		},
		'publishDesignTemp' : function(){
			publishDesignTemp();
		},
		'closePreviewMode' : function(back_url){
			closePreviewMode(back_url);
		}
	}
}();