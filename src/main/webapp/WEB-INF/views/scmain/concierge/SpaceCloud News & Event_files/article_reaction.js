var ARTICLE_REACTION = function(){
	var $btn,$num;
	var target_type, target_code;
	var like_token, like_token_key;
	var recommend_token, recommend_token_key;
	var init = function(type,code,$b,$n){
		$btn = $b;
		$num = $n;
		target_type = type;
		target_code = code;
	};

	var setLikeToken = function(key, token){
		like_token = token;
		like_token_key = key;
	};

	var setRecommendToken = function(key, token){
		recommend_token = token;
		recommend_token_key = key;
	};

	var toggleLike = function(){
		toggleReaction('like');
	};

	var toggleReaction = function(type){
		$.ajax({
			type        : 'POST',
			data        : {'target_type':target_type, 'target_code' : target_code,'token':like_token, 'key' : like_token_key, 'type' : type},
			url         : ('/ajax/article_reaction.cm'),
			dataType    : 'json',
			async       : true,
			cache       : false,
			success     : function (result) {
				if(result.msg == 'SUCCESS'){
					if(result.mode == 'add'){
						$btn.toggleClass('on', true);
						$num.text(parseInt($num.text()) + 1);
					}else if(result.mode == 'delete'){
						$btn.toggleClass('on',false);
						$num.text(parseInt($num.text())-1);
						like_token = result.token;
						like_token_key = result.key;
					}
				}
			}
		});
	};

	var mapToggleLike = function(idx,list_type){
		mapToggleReaction('like',idx,list_type);
	};

	var mapToggleReaction = function(type,idx,list_type){
		$.ajax({
			type        : 'POST',
			data        : {'target_type':target_type, 'target_code' : target_code,'token':like_token, 'key' : like_token_key, 'type' : type},
			url         : ('/ajax/article_reaction.cm'),
			dataType    : 'json',
			async       : true,
			cache       : false,
			success     : function (result) {
				if(result.msg == 'SUCCESS'){
					if(list_type == 'map'){
						if(result.mode == 'add'){
							$btn.toggleClass('on', true);
							$num.text(parseInt($num.text()) + 1);
							$('#list_'+idx).find('#like_count').text(parseInt($num.text()));
							$('#list_pop_'+idx).find('#like_count').text(parseInt($num.text()));
						}else if(result.mode == 'delete'){
							$btn.toggleClass('on',false);
							$num.text(parseInt($num.text())-1);
							$('#list_'+idx).find('#like_count').text(parseInt($num.text()));
							$('#list_pop_'+idx).find('#like_count').text(parseInt($num.text()));
							like_token = result.token;
							like_token_key = result.key;
						}
					}else{
						if(result.mode == 'add'){
							$btn.toggleClass('on', true);
							$num.text(parseInt($num.text()) + 1);
						}else if(result.mode == 'delete'){
							$btn.toggleClass('on',false);
							$num.text(parseInt($num.text())-1);
							like_token = result.token;
							like_token_key = result.key;
						}
					}
				}
			}
		});
	};

	return {
		'init' : function(type,code,$btn,$num){
			init(type,code,$btn,$num);
		},
		'setLikeToken' : function(key, token){
			setLikeToken(key, token);
		},
		'setRecommendToken' : function(key, token){
			setRecommendToken(key, token);
		},
		'toggleLike' : function(){
			toggleLike();
		},
		'mapToggleLike' : function(idx,list_type){
			mapToggleLike(idx,list_type);
		}
	}
};