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
		<h2></h2>
	</div>
	<a href="javascript:void(0);" class="nav_prev"> <span
		class="sp_icon ico_prev">이전</span></a>
	
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
	<!-- contents -->
        <form name="modifyHome" id="modifyHome">
	    <input type="hidden" name="spaceId" value="12228"/>
		<section id="contents" class="contents contents_register contents_register_menu" role="main">
			<div class="box_form public_option">
				<div class="tit">
					<label for="btn_public">공개설정</label>
					<div class="option">
						<div class="box_switch">
							<input type="checkbox" class="_spcExpsYn _workspace" _rgstStatCd='cmpl' _inspStatCd="NEO" _hostMbrId="dkelrk1" _spaceId="12228" id="btn_public" >
							<label for="btn_public" class="btn_switch">
								<span class="left">공개</span>
								<span class="right">비공개</span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="register_menu space_name">
				<strong class="title">공간 이름</strong>
				
				<strong class="desc">수련의 공간</strong>
			</div>
			<ul class="register_box">
				<li class="register_menu">
					
					<a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/BasicInfo.jsp" class="menu_link completed"><!-- 원본 href : /wsmod/step2?h=dkelrk1&spaceId=12228 -->
						<strong class="title">기본 정보</strong>
						<p class="desc">공간에 대한 기본 정보를 입력하세요.</p>
						
						
							<span class="blind">입력 완료</span>
						
					</a>
				</li>
				<li class="register_menu">
					<a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/ContactInfo.jsp" class="menu_link completed"> <!-- 원본 href : /wsmod/step3?h=dkelrk1&spaceId=12228 -->
						<strong class="title">연락처 정보</strong>
						<p class="desc">문의 및 알림을 받을 연락처를 입력하세요.</p>
						
							<span class="blind">입력 완료</span>
						
					</a>
				</li>
				<li class="register_menu">
					<a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/Convinience.jsp" class="menu_link completed"> <!-- 원본 href : /wsmod/step4?h=dkelrk1&spaceId=12228 -->
						<strong class="title">이용 안내</strong>
						<p class="desc">운영시간 및 주의사항을 입력하세요.</p>
						
							<span class="blind">입력 완료</span>
						
					</a>
				</li>
				<li class="register_menu">
					<a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/Fee.jsp" class="menu_link completed"> <!-- 원본 href : /wsmod/step5?h=dkelrk1&spaceId=12228 -->
						<strong class="title">편의 시설</strong>
						<p class="desc">제공할 수 있는 편의시설과 서비스를 입력하세요.</p>
						
							<span class="blind">입력 완료</span>
						
					</a>
				</li>
				<li class="register_menu">
					<a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/ServiceTime.jsp" class="menu_link completed"> <!-- 원본 href : /wsmod/step6?h=dkelrk1&spaceId=12228 -->
						<strong class="title">가격 정보</strong>
						<p class="desc">가격 정책과 환불 기준을 입력하세요.</p>
						
							<span class="blind">입력 완료</span>
						
					</a>
				</li>
				<li class="register_menu">
					<a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/Transaction.jsp" class="menu_link completed"> <!-- 원본 href : /wsmod/step7?h=dkelrk1&spaceId=12228 -->
						<strong class="title">정산 정보</strong>
						<p class="desc">사업자정보와 계좌정보를 입력하세요.</p>
						
							<span class="blind">입력 완료</span>
						
					</a>
				</li>
			</ul>
		</section>
		</form>
		<!-- [D] 미리보기 또는 검수신청을 할 수 없는 상태 -->
		<div class="fixed_bar full_fixed">
			<span class="btn_wrap"><a href="/FrontEnd_SC/scpartner/manageinfo/detail/finerdetails/Preview.jsp" class="fix_btn_prev disabled">미리보기</a></span>
			<span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_next inspection disabled">검수신청</a></span>
		</div>
	</div>
	<!-- //wrap -->

<!-- layer popup  -->

		<!-- [D] layerpopup 검수신청 확인  -->
		<div class="layer_popup workspace mid_type" id="inspectionRequest" style="display:none;">
			<div class="popup_wrap">
				<div class="pop_header">
					검수 신청
				</div>
				<div class="pop_container">
					<p class="pop_guide_txt small">
						검수가 통과되면, <br>공간이 즉시 공개되어 사이트에 노출됩니다.<br>
						<strong class="accent request">공간 정보를 다시 한번 확인해주세요.</strong>
					</p>
					<div class="btns">
						<a href="javascript:void(0);" class="btn btn_full btn_negative" _popCls="inspectionRequest">수정하기</a>
						<a href="javascript:void(0);" class="btn btn_full btn_default" _popCls="inspectionRequest" id="inspectionRequestEnter">검수신청하기</a>
					</div>
				</div>
				<a href="javascript:void(0);" class="btn_pop_close" title="레이어팝업 닫힘" _popCls='inspectionRequest'><i class="sp_icon ico_pop_close">레이어팝업닫기</i></a>
			</div>
		</div>
		<!-- // [D] layerpopup 검수신청 확인 -->

		<!-- [D] layerpopup 검수반려 안내 -->
		<div class="layer_popup workspace inspection_type mid_type" id="inspectionRejectInfo" style="display:none;">
			<div class="popup_wrap">
				<div class="pop_header">
					검수 반려
				</div>
				<div class="pop_container">
					<p class="pop_tit border">
						아래와 같은 사유로 <br>검수가 반려 되었습니다.
					</p>
					<p class="pop_desc">
						<span class="subtitle">
							반려 사유 :
						</span>
                        <span class="desc"></span>
					</p>
					<div class="btns">
						<a href="https://talk.naver.com/ct/wc89we" target="_blank" class="btn btn_full btn_negative">문의하기</a>
						<a href="javascript:void(0);" class="btn btn_full btn_default" _popCls='inspectionRejectInfo' id='inspectionRejectInfoEnter'>재검수 신청</a>
					</div>
				</div>
				<a href="javascript:void(0);" class="btn_pop_close" title="레이어팝업 닫힘" _popCls='inspectionRejectInfo'><i class="sp_icon ico_pop_close">레이어팝업닫기</i></a>
			</div>
		</div>
		<!-- // [D] layerpopup 검수반려 안내 -->

<!-- //layer popup -->
	<div class="p_notification"></div>
	<div class="dimmed"></div>
    <input type="hidden" id="_dirty_" value/>
</body>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_upload_min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/wsrgst_page_min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/space_manage_page_min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/maps3.js?_v20151103"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/search_address_map_min.js" type="text/javascript"></script>

<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';
var jsonPageData = {
	userTpCd : '',			// host / LCR / LCM
	hostId : 'dkelrk1',	// host Id managed by LC
	maxPossbleStep : '',	// step2~cmpl
	spaceId : '12228', 
	productId : '', 
	currentStep : 'cmpl',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	
};
</script>
</html>