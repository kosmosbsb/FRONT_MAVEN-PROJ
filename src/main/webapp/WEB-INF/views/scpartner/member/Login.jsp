
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>네이버 : 로그인</title>
	<link rel="stylesheet" type="text/css" href="/login/css/global/desktop/w_20161104.css?dt=20170718">
	<link rel="stylesheet" type="text/css" href="/login/css/global/desktop/e_20161104.css?dt=20161214">
</head>
<body class="chrome">

<div id="wrap">
	<!-- 스킵네비게이션 : 웹접근성대응-->
	<div id="u_skip">
		<a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문으로 바로가기</span></a>
	</div>
	<!-- //스킵네비게이션 -->
	<!-- header -->
	<div id="header">
		<h1><a href="http://www.naver.com" class="sp h_logo" tabindex="1" onclick="nclks('log.naver',this,event)">NAVER</a></h1>
		<div class="theme_setting" style="display:none" onmouseover="LoginTheme.openLayer()" onmouseout="LoginTheme.closeLayer()">
			<a href="javascript:LoginTheme.redirectConfigWindow()" onclick="nclks('ltg.setting',this,event)" class="sp btn_setting"><span class="blind">로그인 테마 설정</span></a>
			<div id="theme_set" class="ly_v3">
				<div class="ly_box">
					<strong>나만의 개성을 담아, 더 안전한 로그인!</strong>
					<p>간단한 설정으로 나만의 로그인 페이지를 만들어, 피싱 페이지로부터 안전하게 개인정보를 지킬 수 있습니다. <a href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=11001" target="_blank" class=""><span class="sp btn_help">도움말</span></a></p>
					<a href="javascript:LoginTheme.redirectConfigWindow()" class="sp link" onclick="nclks('ltg.setting',this,event)">설정하기</a>
				</div>
				<span class="sp ly_point"></span>
			</div>
		</div>
 
		<div class="lang">
			<select id="locale_switch" name="locale_switch" title="언어선택" tabindex="2" class="sel" onchange="switchlocale();nclks_select(this.value,'',{'ko_KR':'log.lankr','en_US':'log.lanen','zh-Hans_CN':'log.lancn','zh-Hant_TW':'log.lantw'},this,event);">
				<option value="ko_KR" selected>한국어</option>
				<option value="en_US" >English</option>
				<option value="zh-Hans_CN" >中文(简体)</option>
				<option value="zh-Hant_TW" >中文(台灣)</option>
			</select>
		</div>
	</div>
	<!-- //header -->
	<!-- container -->
	<div id="container">
		<!-- content -->
		<div id="content">
			<div class="title">
				<p>네이버 로그인으로 <em class="sevice">SpaceCloud</em> 서비스를 이용하실 수 있습니다.</p>
			</div>
        <form id="frmNIDLogin" name="frmNIDLogin" target="_top" AUTOCOMPLETE="off" action="https://nid.naver.com/nidlogin.login" method="post" onsubmit="return confirmSubmit();">
        <input type="hidden" name="enctp" id="enctp" value="1">
        <input type="hidden" name="encpw" id="encpw" value="">
        <input type="hidden" name="encnm" id="encnm" value="">
        <input type="hidden" name="svctype" id="svctype" value="0">
        <input type="hidden" name="svc" id="svc" value="">
        <input type="hidden" name="viewtype" id="viewtype" value="0">
        <input type="hidden" name="locale" id="locale" value="ko_KR">
        <input type="hidden" name="postDataKey" id="postDataKey" value="">
        <input type="hidden" name="smart_LEVEL" id="smart_LEVEL" value="-1">
        <input type="hidden" name="logintp" id="logintp" value="oauth2">
        <input type="hidden" name="url" id="url" value="https://nid.naver.com/oauth2.0/authorize?response_type=code&oauth_token=1rE9b5qGylKT8MG0&state=38idfdua499p08rqgepdsb3nap&client_id=lPR__5BfBwGq_sYIqGoL&redirect_uri=https%3A%2F%2Fspacecloud.kr%2Fauth%2FaccessNaverAuth&locale=&inapp_view=&oauth_os=(null)">
        <input type="hidden" name="localechange" id="localechange" value="">
        <input type="hidden" name="theme_mode" id="theme_mode" value="">
        <input type="hidden" name="ls" id="ls" value="">
        <input type="hidden" name="xid" id="xid" value="">
        <input type="hidden" name="oauth_target" id="oauth_target" value="SpaceCloud">
        <input type="hidden" name="oauth_token" id="oauth_token" value="1rE9b5qGylKT8MG0">
        <input type="hidden" name="with_pin" id="with_pin" value="">
        <input type="hidden" name="resp" id="resp" value="">
        <input type="hidden" name="inapp_view" id="inapp_view" value="">
        <input type="hidden" name="is_naver_id_login" id="is_naver_id_login" value="lPR__5BfBwGq_sYIqGoL">
				<fieldset class="login_form">
					<legend class="blind">로그인</legend>
					<div class="input_row" id="id_area">
						<span class="input_box">
							<label for="id" id="label_id_area" class="lbl"   >아이디</label>
							<input type="text" id="id" name="id" tabindex="7" accesskey="L" placeholder="아이디" class="int" maxlength="41" value="">
						</span>
						<button type="button" disabled="" title="delete" id="id_clear" class="wrg">삭제</button>
					</div>
					<div id="err_empty_id" class="error" style="display:none;">아이디를 입력해주세요.</div>
					<div class="input_row" id="pw_area">
						<span class="input_box">
							<label for="pw" id="label_pw_area"  class="lbl">비밀번호</label>
							<input type="password" id="pw" name="pw" tabindex="8" placeholder="비밀번호" class="int" maxlength="16" onkeypress="capslockevt(event);getKeysv2();" onkeyup="checkShiftUp(event);" onkeydown="checkShiftDown(event);" >
						</span>
						<button type="button" disabled="" title="delete" id="pw_clear" class="wrg">삭제</button>
						<div class="ly_v2" id="err_capslock" style="display:none;">
							<div class="ly_box">
								<p><strong>Caps Lock</strong>이 켜져 있습니다.</p>							</div>
							<span class="sp ly_point"></span>
						</div>
					</div>
					<div class="error" id="err_empty_pw" style="display:none;">비밀번호를 입력해주세요.</div>
					<input type="submit" title="로그인" alt="로그인" tabindex="12" value="로그인" class="btn_global" onclick="nclks('log.login',this,event)">
					<div class="check_info" >
						<div class="login_check">
							<span class="login_check_box">
								<input type="checkbox" id="login_chk" name="nvlong" class="" tabindex="9"  value="off"  onchange="savedLong(this);nclks_chk('login_chk', 'log.keepon', 'log.keepoff',this,event)" />
								<label for="login_chk" id="label_login_chk" class="sp">로그인 상태 유지</label>
							</span>
							<div class="ly_v2" id="persist_usage" style="display:none;">
								<div class="ly_box">
									<p>개인정보 보호를 위해 <strong>개인 PC에서만 사용하세요.</strong>&nbsp;&nbsp;<a href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=1523" target="_blank" class="sp btn_check_help">도움말보기</a></p>
								</div>
								<span class="sp ly_point"></span>
							</div>
						</div>
						<div class="pc_check">
							<span class="ip_check">
								<a href="/login/ext/help_ip3.html" target="_blank" onclick="window.open(this.href, 'IPGUIDE', 'titlebar=1, resizable=1, scrollbars=yes, width=537, height=750'); return false;" title="" tabindex="10">IP보안</a>
								<span class="ip_ch">
									<input type="checkbox" id="ip_on" checked="checked" tabindex="11" onchange="ipCheck(this,event);nclks_chk('ip_on', 'log.iponset', 'log.ipoffset',this,event)" class=""/>
									<label for="ip_on" id="label_ip_on" class="sp">on</label>
								</span>
							</span>
							<span class="bar">|</span>
							<span class="dis_di">
								<a href="#" onclick="onetime(); nclks('log.otn',this,event); return false;" title="일회용 로그인">일회용 로그인</a><a href="javascript:viewOnetime();" onclick="nclks('log.otnhelp',this,event)" title="도움말" class="sp btn_help">도움말</a>
								<div class="ly" id="onetime_usage" style="display:none;" onclick="javascript:viewOnetime()">
									<div class="ly_box">
										<p>네이버앱에서 생성된 일회용 로그인 번호를 입력하면, 앱에 로그인된 계정으로 PC에서 로그인할 수 있어요. 아이디/비밀번호를 입력하지 않아 간편하고 더욱 안전합니다.</p>									</div>
									<span class="sp ly_point"></span>
								</div>
							</span>
						</div>
					</div>
				</fieldset>
			</form>
			<div class="position_a">
				<div class="find_info">
					<a target="_blank" href="https://nid.naver.com/user/help.nhn?todo=idinquiry" onclick="try{nclks('log.searchid',this,event)}catch(e){}">아이디 찾기</a> <span class="bar">|</span> <a target="_blank" href="https://nid.naver.com/nidreminder.form" onclick="try{nclks('log.searchpass',this,event)}catch(e){}">비밀번호 찾기</a> <span class="bar">|</span> <a target="_blank" href="https://nid.naver.com/user/join.html?lang=ko_KR&oauth_os=(null)" onclick="try{nclks('log.registration',this,event)}catch(e){}">회원가입</a>				</div>
			</div>
			
			<div class="phishing_banner bw_crome">
				<div class="sp">
					<span class="blind">
					<strong>지금 로그인 하는 사이트가 어디인지 알고 계신가요?</strong>
					고객님의 소중한 정보를 위해 로그인 전에 <em>주소표시줄</em>을 확인해 주세요.
					</span>
				</div>
			</div>
			<!-- tg-lang -->
		</div>
		<!-- //content -->
	</div>
	<!-- //container -->
	<!-- footer -->
	<div id="footer">
		<ul>
		<li><a target="_blank" href="http://www.naver.com/rules/service.html" onclick="nclks('fot.agreement',this,event)">이용약관</a></li>
		<li><strong><a target="_blank" href="http://www.naver.com/rules/privacy.html" onclick="nclks('fot.privacy',this,event)">개인정보처리방침</a></strong></li>
		<li><a target="_blank" href="http://www.naver.com/rules/disclaimer.html" onclick="nclks('fot.disclaimer',this,event)">책임의 한계와 법적고지</a></li>
		<li><a target="_blank" href="https://help.naver.com/support/service/main.nhn?serviceNo=532" onclick="nclks('fot.help',this,event)">회원정보 고객센터</a></li>
		</ul>
	
		<address><em><a target="_blank" href="http://www.navercorp.com" class="logo" onclick="nclks('fot.naver',this,event)"><span class="blind">naver</span></a></em><em class="copy">Copyright</em> <em class="u_cri">&copy;</em> <a target="_blank" href="http://www.navercorp.com" class="u_cra"  onclick="nclks('fot.navercorp',this,event)">NAVER Corp.</a> <span class="all_r">All Rights Reserved.</span></address>	</div>
	<!-- //footer -->
	
</div>
<div class="theme_setting_message" id="themeCampaignLayer" style="display:none">
	<div class="setting_message">
		<h3 class="blind">로그인 테마 설정 안내</h3>
		<a href="javascript:LoginTheme.closeThemeCampaign()" onclick="nclks('ltg.close',this,event)" class="btn_closed"><span class="blind">로그인 테마 설정 안내창 닫기</span></a>
		<p class="blind"><strong><span>나만의 개성을 담아,</span><br>더 안전한 로그인!</strong></p>
		<p class="blind">늘 보는 밋밋한 로그인 페이지는 이제 그만! 개성 넘치는 나만의 로그인 페이지 설정하고, 안전하게 로그인 하세요. 가짜 로그인 화면과 구별되어 피싱으로부터 안전해집니다.</p>
		<a href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=11001" onclick="javascript:nclks('ltg.help',this,event)" target="_blank" class="btn_view"><span class="blind">자세히 보기</span></a>
		<p class="setting_message_txt">이제 내가 설정한 이미지가 나오는지 꼭 확인하고 로그인 하세요!<strong><span class="sp ico_error"></span>안보인다면? 피싱페이지일 수 있습니다!</strong></p>
		<a href="javascript:LoginTheme.redirectConfigWindow()" onclick="nclks('ltg.setting',this,event)" class="btn_theme_setting">지금 설정하기</a>
	</div>
</div>
<script type="text/javascript" src="https://nid.naver.com/login/js/common.all.js?141216"> </script>
<script type="text/javascript" src="https://nid.naver.com/login/js/logintheme.js?150109"> </script>
<script type="text/javascript">
var disp_stat = "";
var session_keys = "";
var pc_keyboard_close="<span class=\"sp\">PC 키보드 닫기</span>";
var pc_keyboard_open="<span class=\"sp\">PC 키보드 보기</span>";
var view_char="한글 보기";
var view_symbol="특수기호 보기";

addInputEvent('id', 'id_area');
addInputEvent('pw', 'pw_area');

initSmartLevel();
var login_chk = $('login_chk');
if(login_chk.attachEvent) {
	login_chk.attachEvent("onchange", function(){persist_usage();});
} else if (login_chk.addEventListener) {
	login_chk.addEventListener("change", function(){persist_usage();}, false);
}
function persist_usage()
{
	var login_chk = $("login_chk");
	if (login_chk.checked==true)
	{
		show("persist_usage");
		hide('onetime_usage');
		view_onetimeusage = false;
	}
	else
	{
		hide("persist_usage");
	}
}
var view_onetimeusage = false;
function viewOnetime()
{
	if (view_onetimeusage)
	{
		hide('onetime_usage');
		view_onetimeusage = false;
	}
	else
	{
		hide("persist_usage");
		show('onetime_usage');
		view_onetimeusage = true;
	}
}
try{
	if (navigator.appVersion.toLowerCase().indexOf("win") != -1) {
		$('id').style.imeMode = "disabled";
		document.msCapsLockWarningOff = true;
	}
}catch(e) {}
try{
	if ( $('id').value.length == 0 )
	{
		$('id').focus();
	}
	else
	{
		$('pw').focus();
	}
}catch (e){}

</script>
<script type="text/javascript" src="https://nid.naver.com/login/js/common.util.js"></script>
<script type="text/javascript"> lcs_do(); </script>
<script type="text/javascript">
var nsc = "nid.login_kr";
</script>
<div id="nv_stat" style="display:none;"></div>
</body>
</html>