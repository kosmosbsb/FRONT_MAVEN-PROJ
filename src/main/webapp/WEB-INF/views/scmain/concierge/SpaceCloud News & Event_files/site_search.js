var SITE_SEARCH = function(){
	var openSearch = function(data){
		$.cocoaDialog.close();
		var $s_form = $('#s_form');
		var keyword = '';
		var type = '';
		if($s_form.length >0 ){
			keyword = $s_form.find('input[name=keyword]').val();
			type = $s_form.find('input[name=type]').val();
		}
		$.ajax({
			type: 'POST',
			data: {'keyword':keyword, 'type': type,'data':data},
			url: ('/dialog/search.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'widget_search', custom_popup: $html});
				$html.find('input[name=keyword]').off("focus").on("focus", function (e) {
					// IE
					if (this.createTextRange) {
						var range = this.createTextRange();
						range.move('character', this.value.length);    // input box 의 글자 수 만큼 커서를 뒤로 옮김
						range.select();
					}
					else if (this.selectionStart || this.selectionStart== '0')
						this.selectionStart = this.value.length;
				});

				$html.find('input').focus();
			}
		});
	};

	var search = function(){
		var $s_form = $('#s_form');
		var keyword = $s_form.serializeObject().keyword; //에이스 카운터
		ACE_COUNTER_PLUS.CompleteSearch(keyword);
		$s_form.submit();
	};

	var inlineSearch = function(code){
		var $s_form = $('#inline_s_form_' + code);
		$s_form.submit();
	};

	var searchDialog = function(){
		var $sd_form = $('#sd_form');
		$sd_form.submit();
	};
	var changeType = function(type){
		var $s_form = $('#s_form');
		var $type = $s_form.find('._type');
		$type.val(type);
		$s_form.submit();
	};

	return {
		'inlineSearch' : function(code){
			inlineSearch(code);
		},
		'openSearch' : function(data){
			openSearch(data);
		},
		'search' : function(){
			search();
		},
		'searchDialog' : function(){
			searchDialog();
		},
		'changeType' : function(type){
			changeType(type)
		}
	}

}();
