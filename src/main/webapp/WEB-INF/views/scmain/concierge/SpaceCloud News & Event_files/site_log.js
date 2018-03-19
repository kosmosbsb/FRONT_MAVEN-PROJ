var SITE_VISIT_LOG = function(){

	var addVisitLog = function(referer, token, token_key, menu_code){
		$.ajax({
			type : 'POST',
			data : {'referer' : referer, 'token' : token, 'token_key':token_key, 'menu_code':menu_code},
			url : ('/backpg/add_visit_log.cm'),
			dataType : 'json',
			success : function(res){
			}
		});
	};

	return {
		'addVisitLog' : function(referer, token, token_key, menu_code){
			addVisitLog(referer, token, token_key, menu_code);
		}
	}
}();