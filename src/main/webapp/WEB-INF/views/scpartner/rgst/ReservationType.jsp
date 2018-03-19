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



	
	
		<div class="nav_progress">
			<span class="bar_progress"><em></em></span>
			
				
					<div class="tab_steps divide7">
						<a href="javascript:void(0);" _step="step1"><em>01.</em>공간 유형
							선택</a> <a href="javascript:void(0);" _step="step2"><em>02.</em>공간정보</a>
						<a href="javascript:void(0);" _step="step3"><em>03.</em>사업자정보</a>
						<a href="javascript:void(0);" _step="step4"><em>04.</em>예약운영</a> <a
							href="javascript:void(0);" _step="step5"><em>05.</em>세부 공간 추가</a>
						<a href="javascript:void(0);" _step="step6"><em>06.</em>일정/가격</a>
						<a href="javascript:void(0);" _step="step7"><em>07.</em>옵션</a>
					</div>
				
				
				
			
		</div>
	






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
	<form name="step1" id="step1">
		<input type="hidden" name="spaceId" value=""/>
		<section id="contents" class="contents" role="main">
		        <div class="heading">
		            <h3>어떤 공간을 공유하세요?</h3>
                    <span class="option">
                        <span class="txt_guide">
                            최대 5개 선택가능
                        </span>
						<span class="txt_required">
							필수선택
						</span>
                    </span>
		        </div>
		        <div class="row" id="categoryError">
		            <ul class="check_list space" id="categoryListEl" _max="5">
		                
		                    <li>
		                        <input type="checkbox" name="category" id="1" value="1" checked _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="1" class="ellip">회의실</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="2" value="2" checked _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="2" class="ellip">세미나실</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="3" value="3"  _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="3" class="ellip">다목적홀</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="4" value="4"  _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="4" class="ellip">작업실</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="5" value="5" checked _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="5" class="ellip">레저시설</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="6" value="6" checked _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="6" class="ellip">파티룸</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="7" value="7"  _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="7" class="ellip">공연장</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="8" value="8"  _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="8" class="ellip">연습실</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="9" value="9" checked _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="9" class="ellip">카페</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="10" value="10"  _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="10" class="ellip">스터디룸</label>
		                    </li>
		                
		                    <li>
		                        <input type="checkbox" name="category" id="11" value="11"  _errorEl="categoryError" required><!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
		                        <label for="11" class="ellip">엠티장소</label>
		                    </li>
		                
		            </ul>
		        </div>
		        <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간유형은 필수 선택입니다.</p>
		        </article>
		        <article>
		            <div class="heading">
		                <h3>예약 유형을 선택해 주세요. </h3>
		            </div>
		            <div class="col_wrap saved_data">
		                <div class="col col6">
		                    <input type="radio" name="rsvTpCd" id="rsvTpCd_time" class="radio" value="TIME" checked >
		                    <label for="rsvTpCd_time">시간단위</label>
		                </div>
		                <div class="col col6">
		                    <input type="radio" name="rsvTpCd" id="rsvTpCd_day" class="radio" value="DAY" >
		                    <label for="rsvTpCd_day">일단위</label>
		                </div>
		            </div>
		            <p class="p_guide normal"><i class="sp_icon ico_alert"></i>시간 단위 또는 1일 대관을 하는 공간은 "시간단위", 일 단위로만 대관을 하는 공간은 "일단위"를 선택해주세요.</p>
		        </article>
		</section>
	</form>
	<div class="fixed_bar">
	    <span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_prev" id="_preStep">이전</a></span>
    	<span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_next" id="_nextStep">다음</a></span>
	</div>
</div>
	<div class="p_notification"></div>
	<div class="dimmed"></div>
    <input type="hidden" id="_dirty_" value/>
</body>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_upload_min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/rgst_page_min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/space_manage_page_min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/maps3.js?_v20151103"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/search_address_map_min.js" type="text/javascript"></script>

<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';
var jsonPageData = {
	userTpCd : '',			// host / LCR / LCM
	hostId : '',	// host Id managed by LC
	maxPossbleStep : '',	// step2~cmpl
	spaceId : '', 
	productId : '', 
	currentStep : 'step1',	// step1~cmpl
	rgstTpCd : 'rgst'	// rgst / mod
	
	
};
</script>
</html>