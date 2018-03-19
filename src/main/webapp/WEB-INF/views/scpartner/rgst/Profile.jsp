<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>




<html lang="ko">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta http-equiv="cache-control" content="no-store, no-cache, must-revalidate" />
<meta http-equiv="Pragma" content="no-store, no-cache" />
<meta http-equiv="Expires" content="0" />


<!-- og:tag -->
<meta property="og:title" content="스페이스클라우드 호스트센터" />
<meta property="og:type" content="article" />
<meta property="og:description" content="라이프공간 플랫폼 스페이스클라우드에 호스트님의 공간을 쉽게 등록하고 편리하게 관리하세요!" />
<meta property="og:image" content="https://scloud.pstatic.net/20170626_228/1498462882633tBEV6_JPEG/center_og.jpg"/>
<meta property="og:url" content="" />
<meta property="og:article:author" content="스페이스클라우드 호스트센터" />
<meta property="og:article:author:url" content="https://partner.spacecloud.kr" />
<!-- //og:tag -->
<meta name="description" content="라이프공간 플랫폼 스페이스클라우드에 호스트님의 공간을 쉽게 등록하고 편리하게 관리하세요!" />

<title>SpaceCloud</title>
<link rel="icon" href="https://ssl.pstatic.net/spacecloud/static/center/20171113/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="https://ssl.pstatic.net/spacecloud/static/center/20171113/spacecloud_icon.png" type="image/x-icon">
<link rel="apple-touch-icon" href="https://ssl.pstatic.net/spacecloud/static/center/20171113/spacecloud_icon.png">



<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/center/css/deploy/20180129075647/min/host.min.css" type="text/css">
<!--[if lt IE 10]>
<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/center/css/deploy/20180129075647/min/ie9.min.css" type="text/css">
<![endif]-->

</head>
<body>
	<!-- u_skip -->
	<ul id="u_skip">
		<li><a href="#contents">컨텐츠 바로가기</a></li>
		<li><a href="#all_menu">주메뉴 바로가기</a></li>
	</ul>
	<!-- //u_skip -->
	<!-- wrap -->
	<div class="wrap">
	<header class="header">
		<div class="page_title">
			<h2>HOST 프로필</h2>
		</div>
		<a href="javascript:void(0);" class="nav_prev except">
			<span class="sp_icon ico_prev">이전</span>
		</a>
		
<a href="javascript:void(0);" class="nav_menu">
    <span class="sp_icon ico_menu">확장영역 열기</span>
    <i class="sp_icon ico_new" style="display:none;">NEW</i>
</a>
	</header>
	



<aside id="all_menu" role="navigation">
    <h2 class="blind">주메뉴</h2>
    <div class="scroll_wrap">
        <div class="scroll_inner">
           <!-- [D] 이미지 없는 경우 class="no_img" 추가 있는경우, background-image: url(http://dev.ui.naver.com/tmp/?480x380_woman2_y_FFFFFF_100); -->
            <article id="drawerProfile" class="profile no_img" _type="nologin">
                <!-- [D] ie8인 경우 img 태그로 대체 --> 
    			<div class="profile_ie">
        			<img alt="프로필 이미지">
        		</div>
                <dl>
                    <dt id="_ProfileText" class="require_login"><strong id="_drawer_profile_name">로그인이 필요합니다.</strong></dt>
                    <!-- style="background-image:url(http://dev.ui.naver.com/tmp/?480x380_woman2_y_FFFFFF_100)" -->
                    <dd class="profile_img"><a href="javascript:void(0);" id="_profile_img_circle" title="프로필 이미지">프로필 이미지</a></dd>
                    <dd class="profile_txt" id="_drawer_profile_desc"></dd>
                </dl>
                <span class="profile_dim"></span>
            </article>
            <div class="menu_top">
                <ul>
                    <li>
                        <a href="/reserve/list">
                            <i class="sp_icon ico_reservationlist"></i>
                            <span class="tit">예약 리스트</span>
                            <span class="case">
                                <span class="count" id="_reserveRequireCount"></span>
                                <span><em>목록보기</em></span>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="/reply/reviews">
                            <i class="sp_icon ico_review"></i>
                            <span class="tit">이용후기 /<br>Q&amp;A관리</span>
                            <span class="case">
                                <span><em>목록보기</em></span>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="/spacemanage/smanage">
                            <i class="sp_icon current_state"></i>
                            <span class="tit">전체 운영관리</span>
                            <span class="case">
                                <span><em>목록보기</em></span>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- [D] gnb 높이 스크립트 필요( 길경우 스크롤생기도록 css처리)-->
            <nav id="gnb">
                <ul>
                    <li>
                        <a href="/index" class="depth_1">호스트센터 홈</a>
                    </li>
                    <li>
                        <a href="/manage/space" class="depth_1">내 공간정보 관리<!--  <em class="num">(7)</em> --></a>
                    </li>
                    
                    <li id="_ntalkMenu">
                        <a href="/ntalk" class="depth_1">네이버 톡톡</a>
                    </li>
                    
                    
                    <li>
                        <a href="javascript:void(0);" class="depth_1 folded">보고서</a>
                        <div>
                            <ul class="depth_2">
                                <li>
                                    <a href="javascript:space.center.common.fnShowToast('운영보고서 개선 준비 중 입니다.');">운영보고서<span class="ico_ready">준비중</span></a>
                                </li>
                                <li>
                                    <a href="/report/settlement/current/all">정산</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="/board/notice" class="depth_1">공지사항</a>
                    </li>
                    <li>
                        <a href="/board/help" class="depth_1">도움말</a>
                    </li>
                    <li>
                        <a href="https://talk.naver.com/ct/wc89we" class="depth_1" target="_blank">
                            1:1문의
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="depth_1 folded">서비스 정보</a>
                        <div>
                            <ul class="depth_2">
                                <li><a href="/agreement">이용약관</a></li>
                                <li><a href="/policyPerson">개인정보처리방침</a></li>
                                <li><a href="/policySettlement">정산 및 환불 정책</a></li>
                                <li><a href="/policyOperate">공간 관리 정책</a></li>
                                
		                        <li><a href="/member/leave">서비스 탈퇴</a></li>
		                        
                                
                                
                            </ul>
                        </div>
                    </li>
                </ul>
                <div class="service_menu">
                    
                    
                        <a href="javascript:void(0);" id="_logout">로그아웃</a>
                    
                    <p class="copyright">Powered by <strong>NAVER</strong> © NSPACE Corp.</p>
                </div>
            </nav>
            <a href="javascript:void(0);" class="nav_menu_close"><i class="sp_icon ico_nav_close">메뉴 닫기</i></a>
        </div>
    </div>
    <a href="javascript:void(0);" class="btn_fixed_guest">스페이스클라우드로 이동<i class="sp_icon ico_go"></i></a>
</aside>
	<form id="profileForm">
	<section id="contents" class="contents profile" role="main">
		<div class="heading">
			<h3>HOST 정보를 입력해 주세요.</h3>
			<span class="option">
				<span class="txt_required">
					<span class="ico_required">*</span>
					필수입력
				</span>
			</span>
		</div>
		<div class="flex_wrap column2 profile">
			<div class="box_form">
				<div class="tit">
					프로필 이미지
				</div>
			   
				<div class="box_profile">
					<!-- [D] 프로필 이미지 style="background-image:url();" 형식으로 넣어주세요. -->
					<span class="profile_img"  >
						프로필사진
					</span>
					<p class="placeholder"> 파일유형 jpg, jpeg, png, gif  <br> 
					최대파일크기 10MB</p>
					<div class="btn_box">
						<label class="btn" for="pfImg">
							<span>파일첨부</span>
							<input type="file" class="_fileRel" name="uploadFile" id="pfImg" style="display:none;" _single="true" accept="image/*">
						</label>
						<input type="hidden" name="prflImgPath" id="prflImgPath" value="">
					</div>
				</div>
				<p class="p_guide warn">
					<i class="sp_icon ico_alert"></i>
					프로필 사진은 필수 입력입니다.
				</p>
			</div>
			<div class="box_form">
				<div class="tit">
					<label for="prflNmError">
						프로필명
						<span class="ico_required">*</span>
					</label>
				</div>
				<span class="option">
					<span class="txt_count">
						<em id="prflNmCnt">0</em>자/<em>10</em>자
					</span>
				</span>
				<div class="input" id="prflNmError">
					<input type="text" id="prflNm" name="prflNm" maxLength="10" _lcount="prflNmCnt" placeholder="HOST의 프로필명을 입력해 주세요." value="" required>
				</div>
				<p class="p_guide warn">
				<i class="sp_icon ico_alert"></i>
				프로필명은 필수 입력입니다.
				</p>
			</div>
		</div>
		<div class="box_form">
			<div class="tit">
				<label for="prflMsgError">
					소개말
					<span class="ico_required">*</span>
				</label>
			</div>
			<span class="option">
				<span class="txt_count">
					<em id="prflMsgCnt">0</em>자/<em>30</em>자
				</span>
			</span>
			<div class="input" id="prflMsgError">
				<textarea id="prflMsg" name="prflMsg" maxLength="30" _lcount="prflMsgCnt" placeholder="프로필에 노출될 소개말을 입력해주세요." style="height:108px" required></textarea>
			</div>
			<p class="p_guide warn">
				<i class="sp_icon ico_alert"></i>
				소개말(0~30자)은 필수 입력입니다.
			</p>
		</div>
		
		
		
		<div class="box_form">
			<div class="tit">
				마케팅 정보 수신 동의
			</div>
			<ul class="check_list_full">
				<li class="check_item">
					<input type="checkbox" name="smsAgree" id="reception_sms" class="checkbox" value="Y" checked>
					<label for="reception_sms">이벤트 등 프로모션 알림 SMS 수신</label>
				</li>
				<li class="check_item">
					<input type="checkbox" name="emailAgree" id="reception_email" class="checkbox" value="Y" checked>
					<label for="reception_email">이벤트 등 프로모션 알림 E-MAIL 수신</label>
				</li>
			</ul>
			<p class="p_guide normal">
				<i class="sp_icon ico_alert"></i>
				동의하지 않을 경우 호스트데이, 제휴사 모집 정보 등 다양한 혜택 정보를 받아보실 수 없습니다.
			</p>
			<p class="p_guide normal">
				<i class="sp_icon ico_alert"></i>
				마케팅 정보 수신에 동의하지 않더라도 예약 관련 안내 문자 및 필수 공지사항은 받아보실 수 있습니다.
			</p>
		</div>
		
	</section>
	</form>
	<div class="fixed_bar full _block_fixed">
		<span class="btn_wrap"><a href="javascript:void(0);" id="profileCmpl" class="fix_btn_next">완료</a></span>
	</div>
</div>

<div class="layer_popup" id="_noProfileCheckLayout" style="display:none;position:fixed;">
	<div class="popup_wrap alert">
		<div class="pop_container">
			<p class="pop_guide_txt">
				프로필 등록 후 공간을 등록할 수 있습니다.<br>
				<span class="accent">등록을 취소하시겠습니까?</span>
			</p>
			<div class="btns">
				<a href="javascript:void(0);" class="btn btn_full btn_negative" _popCls="_noProfileCheckLayout">닫기</a>
				<a href="javascript:history.back();" class="btn btn_full btn_default">등록 취소</a>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var alreadyProfileExist = false;
</script>
	<div class="dimmed"></div>
</body>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_upload_min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/my_page_min.js" type="text/javascript"></script>
<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';
var jsonPageData = {
	userTpCd : '',			// host / LCR / LCM
	hostId : 'swwt12',	// host Id managed by LC
	maxPossbleStep : ''	// step2~cmpl
	
};
</script>
</html>