var SITE_MEMBER = function(){
	var member_profile_id = 'member_profile';
	var $member_profile;

	var terms_agree = false;

	var policyConfirm = function(){
	};

	var openFindPassword = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {d: 'd'},
			url: ('/dialog/find_password.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_find_password', custom_popup: $html});
			}
		});
	};


	var findToken ='';
	var findSubmit  = function(step,val){
		var that = this;
		if(step=='find'){
			$.ajax({
				type:'POST',
				data:{uid:val,step:1},
				url:('/backpg/find_pass.cm'),
				dataType:'json',
				async:false,
				cache:false,
				success:function(res){
					if(res.msg =='SUCCESS'){
						that.findToken = res.tokn;
						$('#find_step_1').hide();
						$('#find_step_3').hide();
						$('#find_step_2').show();
						$('#find_email, #find_email_2').text(res.email);
					}else if(res.msg == 'not_validate_email' && res.use_email != 'Y'){
						$('#find_step_1').hide();
						$('#find_step_3').hide();
						$('#find_step_2').show();
						$('#find_uid').text(res.uid);
						$('#find_step2_info_1').css({'display':'none'});
						$('#find_step2_info_2').css({'display':'block'});
					}else{
						alert(LOCALIZE.설명_가입되어있지않습니다());
					}
				}
			});
		}else if(step=='send'){
			$.ajax({
				type:'POST',
				data:{tokn:that.findToken,step:2},
				url:('/backpg/find_pass.cm'),
				dataType:'json',
				async:false,
				cache:false,
				success:function(res){
					if(res.msg =='SUCCESS'){
						$('#find_step_1').hide();
						$('#find_step_2').hide();
						$('#find_step_3').show();
						$('#find_email, #find_email_2').text(res.email);
					}else{
						alert(LOCALIZE.설명_이미신청중입니다잠시후다시시도하여주시기바랍니다());
					}
				}
			});
		}

	};

	var openChangePassword = function(c,r,s){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {c: c, r : r, s : s},
			url: ('/dialog/change_password.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_change_password', custom_popup: $html});
			}
		});

	};

	var changePassword = function(){
		var data = $('#find_password_form').serializeObject();
		$.ajax({
			type:'POST',
			data:data,
			url:('/backpg/change_password.cm'),
			dataType:'json',
			async:false,
			cache:false,
			success:function(res){
				if(res.msg =='SUCCESS'){
					alert(LOCALIZE.설명_비밀번호변경이완료되었습니다());
					location.href="/?mode=login";
				}else{
					if(res.error ==-2){
						alert(LOCALIZE.설명_동일한암호로입력하시기바랍니다());
					}else if(res.error ==-3){
						alert(LOCALIZE.설명_정상적인암호로입력하시기바랍니다());
					}else if(res.error ==-4){
						alert(LOCALIZE.설명_변경가능시간을초과하였습니다());
					}else{
						alert(LOCALIZE.설명_잘못된접근입니다());
					}
				}
			}
		});

	};

	var editProfile = function(back_url){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {'back_url': back_url},
			url: ('/dialog/join.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				var $join_btn = $html.find('._join_btn');

				$join_btn.off('click').on('click', function(e){
					joinSubmit();
					e.preventDefault();
					return false;
				});

				$.cocoaDialog.open({type: 'site_join', custom_popup: $html});
			}
		});
	};

	var openLogin = function(back_url,type,callback){
		var back_url = typeof back_url == 'undefined' ? '':back_url;
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {back_url:back_url,'type':type },
			url: ('/dialog/login.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$html.find('._guest_payment').on('click',function(){
					if(typeof callback == 'function')
						callback();
				});
				$.cocoaDialog.open({type: 'site_login', custom_popup: $html});
			}
		});
	};
	var openGuestLogin = function(back_url){
		var back_url = typeof back_url == 'undefined' ? '':back_url;
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {back_url:back_url },
			url: ('/dialog/guest_login.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_login', custom_popup: $html});
			}
		});
	};

	var joinSubmit = function(){
		var $form = $('#join_form');
		var data = $form.serializeObject();
		$.ajax({
			type:'POST',
			data:data,
			url:('/backpg/join.cm'),
			dataType:'json',
			async:false,
			cache:false,
			success:function(res){
				if(res.msg =='SUCCESS'){
					NP_LOG.CompleteJoin();
					DAUM_CTS.CompleteJoin();
					ACE_COUNTER.CompleteJoin(res.join_id);
					if(res.ace_counter_plus_switch){
						ACE_COUNTER_PLUS.CompleteJoin(res.join_id);
					}
					terms_agree = true;
					if(res.is_popup)
						location.reload(true);
					else{
						location.href = res.back_url;
					}
				}else{
					terms_agree = false;
					var $obj = $form.find('._'+res.flag);
					$form.find('._item').toggleClass('active',false);
					$form.find('._item').toggleClass('triangle',false);
					$.each(res.accept,function(e,v){
						var $acc_obj = $form.find('._'+v);
						$acc_obj.toggleClass('active',true);

					});
					switch(res.flag){
						case 'name'	:
						case 'uid'	:
						case 'passwd'	:
						case 'home_page' :
						case 'addr' :
						default :
							$obj.toggleClass('triangle',true);
							$obj.find('input').focus();
							$obj.find('._msg').text(res.msg);
							break;

					}
				}
			}
		});
	};

	var openJoin = function(){
		$.cocoaDialog.close();
		if(!terms_agree){
			$.ajax({
				type: 'POST',
				data: {d: 'd'},
				url: ('/dialog/join_policy.cm'),
				dataType: 'html',
				async: true,
				cache: false,
				success: function(html){
					var $html = $(html);
					var $policy_check_all = $html.find('._check_all');
					var $policy_agree = $html.find('._policy_agree');
					var $privacy_agree = $html.find('._privacy_agree');
					var $join_btn = $html.find('._join_btn');

					$policy_check_all.off('click').on('click', function(){
						$policy_agree.prop('checked',$(this).prop('checked'));
						$privacy_agree.prop('checked',$(this).prop('checked'));
					});

					$join_btn.off('click').on('click', function(){
						if($policy_agree.prop('checked') && $privacy_agree.prop('checked')){
							terms_agree = true;
							openJoin();

						}else{
							alert(LOCALIZE.설명_동의해주세요());
						}
						event.stopPropagation(); return false;
					});

					$.cocoaDialog.open({type: 'site_join_policy', custom_popup: $html});
				}
			});
		}else{
			terms_agree = false;
			$.ajax({
				type: 'POST',
				data: {d: 'd'},
				url: ('/dialog/join.cm'),
				dataType: 'html',
				async: true,
				cache: false,
				success: function(html){
					var $html = $(html);
					var $join_btn = $html.find('._join_btn');

					$join_btn.off('click').on('click', function(e){
						joinSubmit();
						e.preventDefault();
						return false;
					});

					$.cocoaDialog.open({type: 'site_join', custom_popup: $html});
				}
			});
		}

	};
	/**
	 * 앱에서 프로필 호출할때 로그인여부 체크해서 분기처리
	 * [DATE] 2016 11 29
	 * @param isLogin
	 */
	var openAppAction = function (isLogin) {
		if(!isLogin) openLogin();
		else editProfile();

	};

	/***
	 * 현재 로그인상태를 확인해서 로그인 창 또는 정보수정 다이얼로그를 뛰움
	 */
	var openLoginOrModifyDialogByLoginStatus = function(){
		$.ajax({
			type: 'POST',
			url: ('/ajax/check_login.cm'),
			dataType: 'json',
			async: true,
			cache: false,
			success: function(res){
				if(res.is_login == "Y"){
					//쇼핑/예약 사이트인경우 마이페이지로
					if(res.is_shop == "Y"){
						location.href="/shop_mypage";
					}else{
						editProfile();
					}

				}else{
					openLogin();
				}
			}
		});
	};

    /**
     * 다이얼로그가 실행되어있는지 체크해서 분기처리
     * [DATE] 2016 11 29
     */
	var isDialogOpen = function () {
		if($.cocoaDialog.isOpen())
			$.cocoaDialog.close();
		else
			window.dozAndroidBridge.dialogClose();
	};

	var positionMemberProfile = function($obj){
		var $window = $(window);
		var $body = $('body');
		var fixed = $body.hasClass('fixed_menu');
		if(fixed){
			$obj = $('#doz_header_wrap .fixed_header').find('.profile');
		}
		var body_width = $('body').width();
		var body_height = $('body').height();
		var window_height = $window.height();

		var top = $obj.offset().top;
		var left = $obj.offset().left;
		var width = $obj.outerWidth();
		var height = $obj.outerHeight();

		var layer_width = $member_profile.outerWidth();
		var layer_height = $member_profile.outerHeight();

		var result_top = 0;
		var result_left = 0;

		result_left = left+width-layer_width;
//TODO 아래의 경우에만 처리된 이유가 있는것인지..
//아래와 같이 처리뢰면 메뉴바 확장을 사용안할 경우 프로필 레이아웃 위치 계산이 안됨
//			if(body_width < left+layer_width){
//				result_left = left+width-layer_width;
//			}

		//if(window_height < top+layer_height){
		//	result_top = top-height-layer_height;
		//}else{
			result_top = top+height+10;
		//}
		$member_profile.css({
			left : result_left,
			top : result_top
		});
		if(left <= layer_width){
			$member_profile.css({
				left : left,
				top : result_top
			});
		}

	};

	var showMemberProfile = function($obj){
		if(typeof $member_profile == 'undefined') return false;
		positionMemberProfile($obj);
		$member_profile.show();
		var is_click = true;
		$('body').off('click.show_member_profile').on('click.show_member_profile',function(e){
			var $target = $(e.target);
			var is_profile = $target.closest('#'+member_profile_id).length>0;
			if(!is_profile && !is_click) {
				closeMemberProfile();
			}
			is_click = false;
		});
		$(window).off('scroll.show_member_profile').on('scroll.show_member_profile',function(e){
			positionMemberProfile($obj);
		});

	};
	var closeMemberProfile = function($obj){
		$member_profile.hide();
		$('body').off('click.show_member_profile');
		$(window).off('scroll.show_member_profile');
	};


	var openDRMOKWindow = function(req_info,rtn_url,cpid,type){ // 성인/본인 인증 팝업창
		if(IS_APP){

			var url = "https://www.mobile-ok.com/popup/hscert.jsp?req_info="+req_info+"&rtn_url="+rtn_url+"&cpid="+cpid+"";
			var urlInfo = parseUri(url);
			var $form = $("<form />");

			$form.attr("method","post");
			$form.attr("action", urlInfo.protocol+"://"+urlInfo.authority+urlInfo.path);

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

			event.returnValue = false;
			event.cancelBubble = true


		}else{
			windowOpen('DRMOKWindow','https://www.mobile-ok.com/popup/hscert.jsp?req_info='+req_info+'&rtn_url='+rtn_url+'&cpid='+cpid,425,550,'no','post');
		}




	};


	var openOAuthEmail = function(){
		$.cocoaDialog.close();
		$.ajax({
			type: 'POST',
			data: {},
			url: ('/dialog/oauth_email.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				var $join_btn = $html.find('._join_btn');
				$join_btn.off('click').on('click', function(){
					oAuthJoinSubmit();
					return false;
				});
				$.cocoaDialog.open({type: 'oauth_email', custom_popup: $html});
			}
		});
	};
	
	var oAuthJoinSubmit = function(){
		var $form = $('#join_form');
		var data = $form.serializeObject();
		$.ajax({
			type:'POST',
			data:data,
			url:('/backpg/oauth_join.cm'),
			dataType:'json',
			async:false,
			cache:false,
			success:function(res){
				if(res.msg =='SUCCESS'){
					terms_agree = true;
					location.reload(true);
				}else{
					terms_agree = false;
					var $obj = $form.find('._'+res.flag);
					$form.find('._item').toggleClass('active',false);
					$form.find('._item').toggleClass('triangle',false);
					$.each(res.accept,function(e,v){
						var $acc_obj = $form.find('._'+v);
						$acc_obj.toggleClass('active',true);

					});
					switch(res.flag){
						case 'uid'	:
						default :
							$obj.toggleClass('triangle',true);
							$obj.find('input').focus();
							$obj.find('._msg').text(res.msg);
							break;

					}
				}
			}
		});
	};
	
	var disconnectOAuth = function(type,back_url){
		var $join_form = $('#join_form');
		$.ajax({
			type:'POST',
			data:{'type' : type},
			url:('/ajax/disconnect_oauth.cm'),
			dataType:'json',
			async:false,
			cache:false,
			success:function(res){
				if(res.msg =='SUCCESS'){
					$join_form.find('._'+type+'_disconnect').hide();
					$join_form.find('._'+type+'_connect').show();
				}else{
					alert(res.msg);
				}
			}
		});
	};
	
	var openGoodbye = function(){
		$.ajax({
			type: 'POST',
			data: {d: 'd'},
			url: ('/dialog/goodbye.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_goodbye', custom_popup: $html});
			}
		});
	};
	
	var goodbye = function(rand){
		$.ajax({
			type: 'POST',
			data: {'rand': rand},
			url: ('/ajax/goodbye.cm'),
			dataType: 'json',
			async: true,
			cache: false,
			success: function(res){
				if(res.msg == 'SUCCESS'){
					if(res.ace_counter_plus_switch){
						ACE_COUNTER_PLUS.CompleteWithdraw(res.uid);
					}
					window.location.href='/logout.cm';
				}else
					alert(res.msg);
			}
		});
	};

	var changeCountry = function(standard_country, compare_country){
		var $form = $('#join_form');
		var $kr_addr_form_wrap = $form.find('#kr_addr_form_wrap');
		var $jp_addr_form_wrap = $form.find('#jp_addr_form_wrap');
		var $en_addr_form_wrap = $form.find('#en_addr_form_wrap');

		if(standard_country == 'KR' && compare_country == 'KR'){
			$kr_addr_form_wrap.show();
			$jp_addr_form_wrap.hide();
			$en_addr_form_wrap.hide();
		}else if(standard_country == 'JP' && compare_country == 'JP'){
			$kr_addr_form_wrap.hide();
			$jp_addr_form_wrap.show();
			$en_addr_form_wrap.hide();
		}else if(compare_country == ''){
			$kr_addr_form_wrap.hide();
			$jp_addr_form_wrap.hide();
			$en_addr_form_wrap.hide();
		}else{
			$kr_addr_form_wrap.hide();
			$jp_addr_form_wrap.hide();
			$en_addr_form_wrap.show();
		}
	};

	var itemFileUpload = function($obj, code){

		$obj.fileupload({
			url : '/ajax/member_join_file_upload.cm',
			dataType : 'json',
			limitMultiFileUploads : 1,
			dropZone : null,
			maxFileSize : 20000000, //20mb
			limitMultiFileUploadSize : 100000000, //110 mb
			formData : {'code' : code},
			start : function(e, data){
			},
			progress : function(e, data){
			},
			done : function(e, data){
				var form_file = '';
				form_file = 'form_file_' + code;
				if(data.result[form_file][0].size > 52428800){
					alert(LOCALIZE.설명_최대업로드용량안내());
					return;
				}
				if(data.result[form_file][0].error){
					alert(data.result[form_file][0].error);
				}else{
					if(data.result[form_file][0].tmp_idx > 0){
						$obj.find('._form_file_list').show();
						$obj.find('._holder').hide();
						$obj.find('._filename').text(data.result[form_file][0].org_name);
						$obj.find('._filesize').text('(' + GetFileSize(data.result[form_file][0].size) + ')');
						$obj.find('._temp_file').val(data.result[form_file][0].tmp_idx);
						$obj.find('._upload_file').val('');
						$obj.find('._download_link').removeAttr("href");
						if(data.result[form_file][0].type.substring(0 ,5) === "image"){
							$obj.find('._image').show();
							$obj.find('._image_src').attr('src', CDN_UPLOAD_URL+data.result[form_file][0].url);
						}
					}
				}
			},
			fail : function(e, data){
			}
		})
			.find('._fileremove').click(function(){
			$obj.find('._form_file_list').hide();
			$obj.find('._holder').show();
			$obj.find('._temp_file').val('');
			$obj.find('._upload_file').val('');
			$obj.find('._image').hide();
		});
	};

	var openAuthConfirmDialog = function(){
		$.ajax({
			type: 'POST',
			data: {d: 'd'},
			url: ('/dialog/join_auth_confirm_dialog.cm'),
			dataType: 'html',
			async: true,
			cache: false,
			success: function(html){
				var $html = $(html);
				$.cocoaDialog.open({type: 'site_join', custom_popup: $html, 'close_block':true});
			}
		});
	};

	var init = function(){
		$member_profile = $('#'+member_profile_id);
	};
	return {
		init : function(){
			init();
		},
		showMemberProfile : function(o){
			showMemberProfile(o);
		},
		openLogin : function(back_url,type,callback){
			openLogin(back_url,type,callback);
		},
		openGuestLogin : function(back_url){
			openGuestLogin(back_url);
		},
		openJoin : function(){
			openJoin();
		},
		joinSubmit : function(){
			joinSubmit();
		},
		editProfile : function(backurl){
			editProfile(backurl);
		},
		openFindPassword : function(){
			openFindPassword();
		},
		findSubmit : function(s,v){
			findSubmit(s,v);
		},
		openChangePassword : function(c,r,s){
			openChangePassword(c,r,s);
		},
		changePassword : function(){
			changePassword();
		},
		openDRMOKWindow : function(req_info,rtn_url,cpid){
			openDRMOKWindow(req_info,rtn_url,cpid);
		},
		openAppAction : function (isLogin) {
			openAppAction(isLogin);
		},
		openLoginOrModifyDialogByLoginStatus : function(){
			openLoginOrModifyDialogByLoginStatus();
		},
		isDialogOpen : function () {
			isDialogOpen();
		},
		'openOAuthEmail' : function(){
			openOAuthEmail();
		},
		'disconnectOAuth' : function(type,back_url){
			disconnectOAuth(type,back_url);
		},
		'openGoodbye' : function(){
			openGoodbye();
		},
		'goodbye' : function(rand){
			goodbye(rand);
		},
		'changeCountry' : function(standard_country, compare_country){
			changeCountry(standard_country, compare_country);
		},
		itemFileUpload : function($obj, code){
			itemFileUpload($obj, code);
		},
		'openAuthConfirmDialog' : function(){
			openAuthConfirmDialog();
		}
	};
}();

$(function() {
	SITE_MEMBER.init();
});