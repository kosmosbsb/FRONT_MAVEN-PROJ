var SNS = function(){
	var snsObjList = [];
	var main_url, site_name, subject, content, image_url, link_url, security_link_url;
	var api_url;
	var ace_counter_plus_switch = false; //에이스 카운터 추적 사용 여부

	function SnsObjects(){
		this.name = "";
		this.show = true;
		this.order = 0;
		this.iconClass = "";
		this.type = "";
	}

	var init = function(d){

		try{
			if(Kakao) Kakao.init('63e1a2ee956b3aa85ca51663ce4caccb');
		}catch(e){

		}
		var data = d;
		main_url = data._main_url;
		site_name = data._site_name;
		subject = data._subject;
		content = removeHtmlTag(data._body);
		image_url = data._img;
		link_url = data._post_url;
		security_link_url = data._security_post_url;
		api_url = "https://sns.imweb.me/?url=";
		ace_counter_plus_switch = d.ace_counter_plus_switch;
	};

	//SNS공유 초기설정
	//var snsInit = function(_main_url, _site_name, _subject, _content, _link_url, _security_link_url, _image){
	//
	//	try{
	//		if(Kakao) Kakao.init('63e1a2ee956b3aa85ca51663ce4caccb');
	//	}catch(e){
	//
	//	}
	//
	//
	//	main_url = _main_url;
	//	site_name = _site_name != "" ? "[" + _site_name + "]" : "";
	//	api_url = "https://sns.imweb.me/?url=";
	//	subject = _subject;
	//	content = _content;
	//	image_url = _image;
	//	link_url = _link_url;
	//	security_link_url = _security_link_url;
	//};


	var setSnsObj = function(){
		snsObjList = [];
		var snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_카카오톡();
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "kakao";
		snsObj.type = "kakaotalk";
		snsObjList.push(snsObj);

		snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_카카오스토리();
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "story";
		snsObj.type = "kakaostory";
		snsObjList.push(snsObj);

		snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_라인();
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "line";
		snsObj.type = "line";
		snsObjList.push(snsObj);

		snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_밴드();
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "band";
		snsObj.type = "band";
		snsObjList.push(snsObj);

		if(TEST_SERVER){
			snsObj = new SnsObjects();
			snsObj.name = LOCALIZE.버튼_네이버();
			snsObj.show = true;
			snsObj.order = 1;
			snsObj.iconClass = "naver";
			snsObj.type = 'naver';
			snsObjList.push(snsObj);
		}

		snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_페이스북();
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "face";
		snsObj.type = "facebook";
		snsObjList.push(snsObj);

		snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_트위터();
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "twitter";
		snsObj.type = "twitter";
		snsObjList.push(snsObj);

		snsObj = new SnsObjects();
		snsObj.name = LOCALIZE.버튼_인스타그램();
		snsObj.show = false;
		snsObj.order = 1;
		snsObj.iconClass = "instagram";
		snsObj.type = "instagram";
		snsObjList.push(snsObj);

		snsObj = new SnsObjects();
		snsObj.name = "Google+";
		snsObj.show = true;
		snsObj.order = 1;
		snsObj.iconClass = "googleplus";
		snsObj.type = "googleplus";
		snsObjList.push(snsObj);
	};

	var getDefaultHtml = function(){
		var html = "";
		html += "<div class='text-basic'>";
		html += "<div class='social-btn'>";
		html += "<ul>";
		for(var index in snsObjList){
			var snsObj = snsObjList[index];
			if(!snsObj.show) continue;
			html += "<li role='' class='" + snsObj.iconClass + "'>";
			html += "<a href='javascript:;' onclick=\"SNS.setSnsApi('" + snsObj.type + "')\">" + snsObj.name + "</a>";
			html += "</li>";
		}
		html += "</ul>";
		html += "</div>";
		html += "<div class='url-copy holder'>";

		html += "<input type='text' id='sns_copy_url' class='_sns_copy_url form-control' value='" + link_url + "'>";
		html += "<div class='form-control-line'></div>";
		// todo 아이폰은 copyToClipboard에 구현되어 있는 방식이 지원되지 않아서 다른 방식이 필요함 우선 예외처리.
		// html += "<button type='button' class='_sns_copy_btn sns_copy_btn btn btn-default' onclick=\"SNS.copyToClipboard()\" data-clipboard-target='._sns_copy_url'>복사</button>";
		html += "</div>";

		html += "<div id='copy_complete' class='text-center'>";
		html += "</div>";

		html += "</div>";
		return html;
	};

	var copyToClipboard = function(){
		var copyText = document.getElementById("sns_copy_url");
		copyText.select();
		document.execCommand("Copy");
		$('#copy_complete').text("URL이 복사되었습니다.");
	};

	var showDefalutSnsShareList = function(){
		//snsInit(_main_domain, _site_name, _subject, _content, _link_url, _security_link_url, _image);
		setSnsObj();
		var html = $(getDefaultHtml());
		$.cocoaDialog.open({type : 'post_social', custom_popup : html});
	};


	var setSnsApi = function(type){
		switch(type){
			case 'kakaotalk':
				shareKakaoTalk();
				break;
			case 'kakaostory':
				shareKakaoStory();
				break;
			case 'line':
				shareLine();
				break;
			case 'band':
				shareBand();
				break;
			case 'facebook':
				shareFacebook();
				break;
			case 'twitter':
				shareTwitter();
				break;
			case 'instagram':
				shareInstagram();
				break;
			case 'googleplus':
				shareGoogleplus();
				break;
		}

	};


	/***
	 * 카카오톡 공유하기
	 */
	var shareKakaoTalk = function(){
		if(IS_MOBILE){
			Kakao.Link.sendTalkLink({
				label : site_name + "\n" + subject,
				image : {
					src : image_url,
					width : '300',
					height : '200'
				},
				webButton : {
					text : "공유하기",
					url : api_url + security_link_url
				},
				installTalk : true
			});

		}else{
			alert(LOCALIZE.설명_카카오톡공유는모바일에서만지원합니다());
		}
	};

	/***
	 * 카카오스토리 공유하기
	 */
	var shareKakaoStory = function(){
		if(IS_MOBILE){
			Kakao.Story.open({
				url : link_url,
				text : LOCALIZE.버튼_공유하기(),
				urlInfo : {
					title : site_name,
					desc : content,
					name : subject,
					images : [image_url]
				}

			});
		}else{
			Kakao.Story.share({
				url : link_url,
				text : site_name + "\n" + subject
			});
		}
	};

	/***
	 * 카카오스토리 소식받기 버튼 추가하기
	 */
	var crateKakaoStoryNewsBtn = function(){
		Kakao.Story.createFollowButton({
			container : '#kakaostory-follow-button',
			id : kakao_id
		});
	};


	/***
	 * 라인 공유하기
	 */
	var shareLine = function(){
		if(IS_MOBILE){
			window.open("http://line.naver.jp/R/msg/text/?" + fixedEncodeURIComponent(subject) + " " + fixedEncodeURIComponent(link_url));
		}else{
			alert(LOCALIZE.설명_라인공유는모바일에서만지원합니다());
		}
	};

	/***
	 * 밴드 공유하기
	 */
	var shareBand = function(){
		var tmp_subject = encodeURIComponent(subject + "\n");
		var body = tmp_subject + fixedEncodeURIComponent(link_url);
		window.open("http://band.us/plugin/share?body=" + body + "&route=" + fixedEncodeURIComponent(link_url));
	};

	function fixedEncodeURIComponent(str) {
		return encodeURIComponent(str).replace(/[\.]/g, function(c) {     return '%' + c.charCodeAt(0).toString(16);   });
	}

	/***
	 * 페이스북 공유하기
	 */
	var shareFacebook = function(){
		shareSnsMetatag('facebook');
	};

	/***
	 * 트위터 공유하기
	 */
	var shareTwitter = function(){
		shareSnsMetatag('twitter');
	};

	/***
	 * 인스타그램 공유하기
	 */
	var shareInstagram = function(){
		if(IS_MOBILE){

		}else{

		}
	};

	/***
	 * 구글플러스 공유하기
	 */
	var shareGoogleplus = function(){
		shareSnsMetatag('googleplus');
	};

	var shareSnsMetatag = function(type){

		if(type == "facebook"){
			window.open("http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(link_url));
		}else if(type == "twitter"){
			window.open("https://twitter.com/intent/tweet?text=" + encodeURIComponent(subject) + "&url=" + encodeURIComponent(link_url));
		}else if(type == "googleplus"){
			window.open("https://plus.google.com/share?url=" + encodeURIComponent(link_url));
		}else{
			alert("sns share error")
		}
	};

	return {
		showDefalutSnsShareList : function(_main_url, _site_name, _subject, _content, _link_url, _security_link_url, _image){
			return showDefalutSnsShareList(_main_url, _site_name, _subject, _content, _link_url, _security_link_url, _image);
		},
		setSnsApi : function(_type){
			if(ace_counter_plus_switch) ACE_COUNTER_PLUS.ShareSns(_type);
			return setSnsApi(_type);
		},
		shareKakaoTalk : function(_main_url, _site_name, _subject, _content, _link_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, _link_url, "", _image);
			return shareKakaoTalk();
		},
		shareKakaoStory : function(_main_url, _site_name, _subject, _content, _link_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, _link_url, "", _image);
			return shareKakaoStory();
		},
		shareLine : function(_main_url, _site_name, _subject, _content, _link_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, _link_url, "", _image);
			return shareLine();
		},
		shareBand : function(_main_url, _site_name, _subject, _content, _link_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, _link_url, "", _image);
			return shareBand();
		},
		shareFacebook : function(_main_url, _site_name, _subject, _content, _security_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, "", _security_url, _image);
			return shareFacebook();
		},
		shareTwitter : function(_main_url, _site_name, _subject, _content, _link_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, _link_url, "", _image);
			return shareTwitter();
		},
		shareGoogleplus : function(_main_url, _site_name, _subject, _content, _link_url, _image){
	//		snsInit(_main_url, _site_name, _subject, _content, _link_url, "", _image);
			return shareGoogleplus();
		},
		copyToClipboard : function(text){
			return copyToClipboard(text);
		},
		init : function(d){
			return init(d);
		}
	};

}();