<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<!-- og:tag -->
<meta property="og:title" content="스페이스클라우드 - 라이프공간 플랫폼" />
<meta property="og:type" content="article" />
<meta property="og:description" content="스터디룸, 세미나실, 오피스, 회의실, 파티룸까지 생활에 필요한 모임 & 업무 공간을 스페이스클라우드에서 예약하세요!" />

<meta property="og:image" content="https://scloud.pstatic.net/20170626_213/1498462883895nP5TK_JPEG/service_og.jpg"/>
<meta property="og:url" content="https://spacecloud.kr/introduction" />
<meta property="og:article:author" content="스페이스클라우드(SpaceCloud)" />
<meta property="og:article:author:url" content="https://spacecloud.kr" />
<!-- //og:tag -->
<meta name="description" content="스터디룸, 세미나실, 오피스, 회의실, 파티룸까지 생활에 필요한 모임 & 업무 공간을 스페이스클라우드에서 예약하세요!" />
<title>스페이스클라우드 :: SpaceCloud</title>
<link rel="icon" href="https://ssl.pstatic.net/spacecloud/static/web/20171113/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="https://ssl.pstatic.net/spacecloud/static/web/20171113/spacecloud_icon.png" type="image/x-icon">
<link rel="apple-touch-icon" href="https://ssl.pstatic.net/spacecloud/static/web/20171113/spacecloud_icon.png">

<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/web/css/deploy/20180119094222/min/guest.min.css" type="text/css">
<!--[if lt IE 10]>
	<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/web/css/deploy/20180119094222/min/guestie9fix.min.css" type="text/css">
<![endif]-->



<script type="text/javascript">_headerRef = 'spacecloud.kr';</script>
</head>
<body class="pc">
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jquery.min.js" type="text/javascript"></script>
<ul id="u_skip">
    <li><a href="#content_wraper">컨텐츠 바로가기</a></li>
</ul>
<div class="wrap main">
    
<header class="header header_sub">
    <h1><a href="javascript:void(0);" class="logo"><i class="sp_icon ico_main_logo">SpaceCloud</i></a></h1>
    <div class="page_title"><h2>서비스 소개</h2></div>
    <a href="javascript:void(0);" class="nav_prev _back"><span class="sp_icon ico_prev">이전</span></a>
    <input class="_query" maxlength=40 type="text" placeholder="검색어를 입력해주세요" autocomplete="off">
    <a href="javascript:void(0);" class="nav_search nclk" _nclk="gnb.search"> <i class="sp_icon ico_search">검색</i></a>
    <a href="javascript:void(0);" class="nav_menu"><span class="sp_icon ico_menu">확장영역 열기</span></a>
</header>
    

<aside id="all_menu" class="drawer" role="navigation">
		<h2 class="blind">메뉴 영역</h2>
		<div class="scroll_wrap">
			<div class="scroll_inner">
				<article class="profile" id="_drawerProfile" style="">
					<!-- [D] ie8인 경우 img 태그로 대체 -->
					<div class="profile_ie">
						<img alt="프로필 이미지" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display:none;" />
					</div>
					<dl>
						<!-- <dt><strong>관리자명이요</strong></dt> -->
						<!-- [D]로그인 전일 경우 class="require_login" 추가 -->
						<dt class="require_login" id="_profileText">
							<strong>로그인이 필요합니다.</strong>
						</dt>
						<!-- [D] 프로필 사진이 없는 경우 -->
						<!-- <dd class="profile_img"><a href="javascript:void(0);" title="사진등록">프로필사진등록</a></dd> -->
						<!-- [D] 프로필 사진이 있는 경우 -->
						<dd class="profile_img">
							<a href="javascript:void(0);" title="프로필 페이지로 이동">프로필사진</a>
						</dd>
						<!--<dd class="profile_txt">파티하우스 루이파티하우스 루이의 관리자 입니다. 톡톡하기나 전화하기로 연락주세요연락주세요연락주세요</dd>-->
					</dl>
					<span class="profile_dim"></span>
				</article>
				<div class="scroll">
					<div class="menu_top">
						<a href="/reserve/list" class="link_reservationlist">
	 						<i class="sp_icon ico_reservationlist"></i>예약 내역 리스트<i class="sp_icon ico_gnb_arrow"></i>
	 					</a>
	 					
	 					
						<a href="/mycredit" class="credit_wrap">
	 						<div class="title">
	 							보유 크레딧
	 							<span class="link_more">자세히 보기</span>
	 						</div>
	 						<em class="total_credit"><i class="sp_icon ico_credit_small"></i><span id="_totalCrdAmt"></span></em>
	 					</a>
					</div>
					<!-- [D] gnb 높이 스크립트 필요( 길경우 스크롤생기도록 css처리)-->
					<nav id="gnb">
						<h3 class="blind">주메뉴 리스트</h3>
						<ul>
							<li><a href="/" class="depth_1 nclk" _nclk="mym.home">스페이스클라우드 홈</a></li>
							<li><a href="/space/zzim" class="depth_1 nclk" _nclk="mym.zzim">내가 가고 싶은 공간</a></li>
							<li><a href="https://talk.naver.com/" target="_blank" class="depth_1 nclk" _nclk="mym.talktalk">네이버 톡톡 대화 내역</a></li>
							<li><a href="/board/notice" class="depth_1 nclk" _nclk="mym.notice">공지사항</a></li>
							<li><a href="/board/event" class="depth_1 nclk" _nclk="mym.notice">이벤트</a></li>
							<li><a href="/board/help" class="depth_1 nclk" _nclk="mym.help">도움말</a></li>
							<li><a href="https://talk.naver.com/ct/wc89we" target="_blank" class="depth_1 nclk" _nclk="mym.sctalk">1:1문의</a></li>
							<li><a href="javascript:void(0);" class="depth_1 folded nclk" _nclk="mym.info">서비스 정보</a>
								<div>
									<ul class="depth_2">
										<li><a href="/introduction" class="nclk" _nclk="mym.introduction">서비스 소개</a></li>
										<li><a href="/agreement" class="nclk" _nclk="mym.agreement">이용약관</a></li>
										<li><a href="/policyPerson" class="nclk" _nclk="mym.privacy">개인정보처리방침</a></li>
										<li><a href="/policyOperate" class="nclk" _nclk="mym.policy">운영정책</a></li>
										
										<li><a href="/member/marketingAgree">마케팅 수신 동의 관리</a></li>
										<li><a href="/member/leave" class="nclk" _nclk="mym.withdraw">서비스 탈퇴</a></li>
										

									</ul>
								</div>
							</li>
						</ul>
						<div class="service_menu">
							
							
								<a href="javascript:void(0);" id="_logout" class="nclk" _nclk="mym.flogout">로그아웃</a>
							
							<p class="copyright">
								Powered by NAVER © NSPACE Corp.
							</p>
						</div>
					</nav>
				</div>
				<a href="javascript:void(0);" class="nav_menu_close"><i class="sp_icon ico_nav_close">메뉴 닫기</i></a>
			</div>
			<a href="http://partner.spacecloud.kr" class="btn_fixed_guest nclk" _nclk="mym.submit">호스트센터로 이동<i class="sp_icon ico_go"></i></a>
			<div class="scroll_out"></div>
		</div>
	</aside>
    <!-- //gnb -->
    <div id="content_wraper" role="main">
        <div class="section_cover intro">
            <div class="inner_width">
                <p>모임공간 필요할땐</p>
                <div class="logo_intro sp_icon"></div>
                <a href="/" class="btn btn_rounded_line nclk" _nclk="int.tsearch">공간 찾아보기</a>
            </div>
            <div class="spot_wrap">
                <!-- [D] background-image inline style -->
                <span class="spot_img" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//img_intro_cover.jpg);"></span>
            </div>
        </div>
        <div class="section_cont">
            <div class="box btn_share_area">
                <!-- TODO GUHYUNK 스페이스클라우드 소개 페이지 IMG URL 처리-->
                


<a class="naver-splugin spi_sns_share btn_share_detail nclk" _nclk="int.share"
     data-url="https://spacecloud.kr/introduction"
     data-title="스페이스클라우드"
     data-prevent-short-url="on"
     
         
         
             data-style="unity"
             data-me-feed-info="스페이스클라우드가"
         
     
     title="보내기">
</a>
<script type="text/javascript">
if (typeof (spacecloud) === 'undefined') {spacecloud = {};};
if (typeof (spacecloud.socialplugin) === 'undefined') {spacecloud.socialplugin = {};};
spacecloud.socialplugin = {
    init : function() {
        this.initEvent();
        this.loadScript();
    },
    initEvent : function() {
    },
    loadScript : function(){
        var js = ent.isMobile ? 'splugin.m.js' : 'splugin.js',
                id = 'naver-splugin-sdk',
                time = new Date(),
                yyyy = time.getFullYear(),
                mm = time.getMonth()+ 1,
                dd = time.getDate();

        document.domain = "spacecloud.kr";
        // jquery getScript cache default : false --> add &_timestamp
        // so. add cache to true;
        $.ajaxSetup({cache: true});
        jQuery.getScript("https://ssl.pstatic.net/spi/js/release/ko_KR/" + js + "?" + yyyy + (mm < 10 ? '0' + mm : mm) + (dd < 10 ? '0' + dd : dd))
                .done($.proxy(this.initSocialPlugin, this))
                .fail(function(){

                });
    },
    initSocialPlugin : function(){
        document.domain = "spacecloud.kr";
        window.__splugin = SocialPlugIn_Core({
            "evKey"       : "scloud",
            "serviceName" : "스페이스클라우드",
            "sourceName"  : "",
            "source"      : "",
            "dimmed"      : "fixed",
            "onClick"     : function(button) {},
            "onShow"      : function() {},
            "onHide"      : function() {},
            "onResize"    : function(event) {},
            "onRotate"    : function(event) {},
            "initView"    : function(){}
        });
    },
    dispose : function(){
    },

};

if (typeof ($) !== 'undefined') {
    $(document).ready(function() {
        spacecloud.socialplugin.init();
    });
}
</script>
            </div>
            <div class="inner_width">
                <div class="h_area">
                    <div class="h_space">
                        <h2 class="space_name">모임공간을 시간단위로<br> 예약하세요.</h2>
                    </div>
                    <p class="sub_desc"><em>다양한 유형의 공간들이 스페이스클라우드를</em> 통해 공유되고 있습니다. </p>
                </div>
                <div class="intro_slide_wrap pc" id="scroller_pc">
                    <!-- [D] pc일 경우 노출 -->
                    <ul class="slides">
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type1" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro1.jpg)">
                                    <div class="center_wrap">
                                        <div class="center">머리에 쏙쏙! 아늑한 스터디룸</div>
                                    </div>
                                </div>
                                <div class="intro_box type2">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro2.jpg)">
                                        <div class="center">특별한 추억을 남기는 파티룸</div>
                                    </div>
                                    <div class="center_wrap" style="background-color:#704de4">
                                        <div class="center">도심 속의 엠티 장소</div>
                                    </div>
                                </div>
                                <div class="intro_box type3" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro3.jpg)">
                                    <div class="center_wrap">
                                        <div class="center">영감이 샘솟는 작업실</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type2">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro4.jpg)">
                                        <div class="center">분위기 좋은 회의실</div>
                                    </div>
                                    <div class="center_wrap" style="background-color:#fdc913;">
                                        <div class="center">분위기가 생명, <br>각양각색 이색카페</div>
                                    </div>
                                </div>

                                <div class="intro_box type3">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro5.jpg)">
                                        <div class="center">강연이 빛나는 세미나실</div>
                                    </div>
                                </div>

                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro6.jpg)">
                                        <div class="center">함께해서 더 즐거운 우리만의 연습실</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type3">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro7.jpg)">
                                        <div class="center">스트레스 해방구! <br>신나는 레저시설</div>
                                    </div>
                                </div>
                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro8.jpg)">
                                        <div class="center">워크샵부터 전시까지 만능 다목적홀</div>
                                    </div>
                                </div>
                                <div class="intro_box type2">
                                    <div class="center_wrap" style="background-color:#704de4">
                                        <div class="center">마음을 담아서 요리를, 쿠킹스튜디오</div>
                                    </div>
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro9.jpg)">
                                        <div class="center">색다른 무대, 취양저격 공연장</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="nav_slide">
                        <a href="javascript:void(0)" class="btn_slide_prev _banPrev">
                            <i class="sp_icon ico_slide_prev">이전으로 이동</i>
                        </a>
                        <a href="javascript:void(0)" class="btn_slide_next _banNext">
                            <i class="sp_icon ico_slide_next">다음으로 이동</i>
                        </a>
                    </div>
                </div>
                <div class="intro_slide_wrap mobile" id="scroller_mobile">
                    <!-- [D] mobile일 경우 노출 -->
                    <ul class="slides">
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type1" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro1.jpg)">
                                    <div class="center_wrap">
                                        <div class="center">머리에 쏙쏙!<br> 아늑한 스터디룸</div>
                                    </div>
                                </div>
                                <div class="intro_box type2">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro2.jpg)">
                                        <div class="center">특별한 추억을 남기는 파티룸</div>
                                    </div>
                                    <div class="center_wrap" style="background-color:#704de4">
                                        <div class="center">도심 속의 엠티 장소</div>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type1" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro3.jpg)">
                                    <div class="center_wrap">
                                        <div class="center">영감이 샘솟는 작업실</div>
                                    </div>
                                </div>
                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro4.jpg)">
                                        <div class="center">분위기 좋은 회의실</div>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type2">
                                    <div class="center_wrap" style="background-color:#fdc913;">
                                        <div class="center">분위기가 생명, <br>각양각색 이색카페</div>
                                    </div>
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro5.jpg)">
                                        <div class="center">강연이 빛나는 세미나실</div>
                                    </div>
                                </div>

                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro6.jpg)">
                                        <div class="center">함께해서 더 즐거운<br> 우리만의 연습실</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro7.jpg)">
                                        <div class="center">스트레스 해방구! <br>신나는 레저시설</div>
                                    </div>
                                </div>
                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro8.jpg)">
                                        <div class="center">워크샵부터 전시까지<br> 만능 다목적홀</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="slide">
                            <div class="intro_box_wrap">
                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-color:#704de4">
                                        <div class="center">마음을 담아서 요리를,<br> 쿠킹스튜디오</div>
                                    </div>
                                </div>
                                <div class="intro_box type1">
                                    <div class="center_wrap" style="background-image:url(https://ssl.pstatic.net/spacecloud/static/web/20171113//intro9.jpg)">
                                        <div class="center">색다른 무대, <br>취양저격 공연장</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="nav_slide">
                        <a href="javascript:void(0)" class="btn_slide_prev">
                            <i class="sp_icon ico_slide_prev">이전으로 이동</i>
                        </a>
                        <a href="javascript:void(0)" class="btn_slide_next">
                            <i class="sp_icon ico_slide_next">다음으로 이동</i>
                        </a>
                    </div>
                </div>
                <ul class="feature_list">
                    <li class="feature1">
                        <i class="sp_icon ico_feature1"></i>
                        <h3 class="tit">간편한 공간예약</h3>
                        <p class="desc">시간, 일 단위로 공간을 예약해보세요.<br>검색부터 예약, 결제까지 한 번에 가능합니다.</p>
                    </li>
                    <li class="feature2">
                        <i class="sp_icon ico_feature2"></i>
                        <h3 class="tit">맞춤형 공간추천</h3>
                        <p class="desc">시즌별로 공간을 추천해드려요.<br>매주 새로운 테마공간을 소개합니다.</p>
                    </li>
                    <li class="feature3">
                        <i class="sp_icon ico_feature3"></i>
                        <h3 class="tit">다양한 모임장소</h3>
                        <p class="desc">10가지 유형의 다양한 공간을 만나보세요.<br>새로운 라이프스타일을 경험할 수 있습니다.</p>
                    </li>
                </ul>
            </div>
            <div class="link_area">
                <div class="inner_width">
                    스터디룸, 세미나실, 파티룸, 연습실까지! <br>
                    <strong class="txt_primary">우리에게 꼭 맞는 모임장소가 필요할 땐,</strong><br>
                    스페이스클라우드에서 공간을 예약해보세요.
                    <div class="btns">
                        <span><a href="/" class="btn btn_rounded_line primary nclk" _nclk="int.bsearch">공간 찾아보기</a></span>
                        <span><a href="http://partner.spacecloud.kr" class="btn btn_rounded_line primary nclk" _nclk="int.submit">내 공간 등록하기</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="app_area">
        <div class="inner_width">
            <ul class="app_list">
                <li class="mobile_app"><a href="/qr" target="_blank"><span>모바일 앱 다운로드</span></a></li>
                <li class="android"><a href="https://play.google.com/store/apps/details?id=com.hustay.swing.p3cfded673ced4983b0db9399638730cb" target="_blank" class="nclk" _nclk="int.google"><span>Google play</span></a></li>
                <li class="ios"><a href="https://itunes.apple.com/kr/app/seupeiseukeullaudeu/id1025620281?l=en&mt=8" target="_blank" class="nclk" _nclk="int.appstore"><span>App Store</span></a></li>
                <li class="qrcode"><a href="javascript:void(0)" class="nclk" _nclk="int.qr"><span>QR 코드</span></a></li>
            </ul>
        </div>
    </div>
    
<footer class="footer">
    <div class="inner_width">
        <div class="inner_wrap">
            <div class="top_area">
                <a href="/" class="footer_logo nclk" _nclk="fot.logo"><span class="sp_icon logo_footer">spaceCloud</span></a>
                <ul class="bar_list link_info">
                    <li><a href="http://blog.naver.com/spacecloud" target="_blank" class="nclk" _nclk="fot.blog">블로그</a></li>
                    <li><a href="/agreement" class="nclk" _nclk="fot.agreement">이용약관</a></li>
                    <li><a href="/policyPerson" class="nclk" _nclk="fot.privacy">개인정보처리방침</a></li>
                    <li><a href="/policyOperate" class="nclk" _nclk="fot.policy">운영정책</a></li>
                    <li><a href="https://talk.naver.com/ct/wc89we" target="_blank" title="새창열림" class="nclk" _nclk="fot.adtalk">고객 문의</a></li>
                </ul>
                <a href="javascript:void(0);" class="btn_toggle">
                    <span class="btn_inner">(주)NSPACE 사업자정보 및 통신판매업자 신원정보</span>
                </a>
            </div>
            <div class="bottom_area">
                <ul class="bar_list company_info">
                    <li class="first">상호명: 주식회사 앤스페이스</li>
                    <li>대표: 정수현</li>
                    <li>사업자등록번호: 230-81-03117</li>
                    <li>통신판매업신고번호: 2015-서울성동-0027</li>
                    <li class="business_info"><a href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2015303010330200027&area1=&area2=&currpage=1&searchKey=04&searchVal=2308103117&stdate=&enddate=" target="_blank" title="새창열림" class="nclk" _nclk="fot.info">사업자등록정보</a></li>
                    <li>영업소재지: 서울시 성동구 왕십리로 2길 20 CND빌딩 3층</li>
	 				<li class="email_info">이메일: <a href="mailto:office@spacecloud.kr">office@spacecloud.kr</a></li>
	 				<li class="call_info">대표전화: 1599-4312(평일 오후 2시 ~ 오후 6시 30분)</li>
	 				<li><a href="https://talk.naver.com/ct/wc89we" class="link" target="_blank" title="새창열림">온라인 1:1 문의 바로가기</a>(평일 오전 10시 ~ 오후 6시 30분)</li>
                    <li class="first">* 공간에 대한 문의사항은 해당 공간 호스트에게 직접 문의해주세요.</li>
                </ul>
                <p class="p_caution">스페이스클라우드는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 스페이스클라우드는 공간 거래정보 및 거래에 대해 책임지지 않습니다.</p>
            </div>
            <div class="policy_area">
                <div class="sns_list">
                    <a href="http://blog.naver.com/spacecloud" class="sp_icon ico_blog" title="새창열림" target="_blank">블로그</a>
                    <a href="http://post.naver.com/spacecloud" class="sp_icon ico_post" title="새창열림" target="_blank">포스트</a>
                    <a href="https://www.facebook.com/spaceclouding" class="sp_icon ico_facebook" title="새창열림" target="_blank">페이스북</a>
                    <a href="https://twitter.com/spacecloud_kr" class="sp_icon ico_tweeter" title="새창열림" target="_blank">트위터</a>
                    <a href="https://www.pholar.co/my/762749/profile" class="sp_icon ico_polar" title="새창열림" target="_blank">폴라</a>
                    <a href="https://www.instagram.com/spacecloud.kr" class="sp_icon ico_instagram" title="새창열림" target="_blank">인스타그램</a>
                </div>
                <ul class="bar_list">
                    <li><a href="/agreement">이용약관</a></li>
                    <li><a href="/policyPerson">개인정보처리방침</a></li>
                    <li><a href="/policyOperate">운영정책</a></li>
                </ul>
            </div>
            <p class="copyright">
                <a href="http://www.nspace.co/" target="_blank" class="copy_mobile nclk" _nclk="fot.nspace" title="새창열림">ⓒNSPACE Corp.</a>
                <span class="copy_pc">Copyright <a href="http://www.nspace.co/" target="_blank" title="새창열림" class="nclk" _nclk="fot.nspace">NSPACE Corp.</a> All Rights Reserved.</span>
            </p>
        </div>
    </div>
</footer>
    
<div class="btn_order_area detail_contact_footer _enableEl"  style="display:none;">
	<a href="javascript:void(0);" class="btn btn_default _connect_talk nclk" _spaceId='' _nclk="res.talk">
		<span class="txt_talk"><i class="sp_icon ico_talk"></i>톡톡하기</span>
	</a>
	<a href="javascript:void(0);" class="btn btn_default _gotoReservation">예약신청하기</a>
</div>
<a href="javascript:void(0);" class="btn_fixed_top">
	<span class="sp_icon ico_top">페이지 상단으로 이동</span>
</a>
<div class="dimmed"></div>
</div>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jqueryScrollPlugins.min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/spacecloud.intro.min.js" type="text/javascript"></script>
</body>
</html>
<script type="text/javascript">
    var today = "20180212";
    $(document).ready(function() {
        spacecloud.intro.init();
    });

</script>