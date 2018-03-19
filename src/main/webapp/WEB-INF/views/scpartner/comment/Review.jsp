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
		<div class="page_title"><h2>이용 후기 관리</h2></div>
		<a href="javascript:void(0);" class="nav_prev">
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
	<!-- contents -->
	<section id="contents" class="contents review" role="main">
		<div class="reservation_list">
			<div class="review_tab">
				<ul class="tab_search divide2">
					<li class="active"><a href="javascript:void(0);">이용후기</a></li>
					<li><a href="Qnas.jsp">Q&amp;A</a></li>
				</ul>
			</div>
			
			<div class="box_search">
				<div class="box_inner">
					<div class="one_search">
						<div class="flex_wrap">
							<div class="flex_box">
								<div class="flex">예약 정보 검색</div>
								<div class="flex">
									<div class="input">
										<input type="text" name="keyword" id="" placeholder="예약번호 또는 예약자명" value="" data-ui-sync-param="reviewList" data-ui-enter-click="#search_reserve">
									</div>
								</div>
								<div class="flex">
									<a href="javascript:void(0)" id="search_reserve" class="btn btn_default" data-ui-param-link="reviewList"><i class="sp_icon ico_search_primary"></i><i class="sp_icon ico_btn_search"></i>검색</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="filter_area">
					<div class="inner_width">
						<!-- [D] label 클릭 시 sorting_filter에 on클래스를 추가해주세요. (아이콘)-->
						<div class="sorting_filter">
							<!-- [D] 선택된 option의 텍스트를 label에 넣어주세요 -->
							<label for="sorting">전체상태</label>
							<select name="replyYN" id="sorting" data-ui-param-link="reviewList" data-ui-sync-label>
								<option value="all" selected>전체상태</option>
								<option value="y" >답글있음</option>
								<option value="n" >답글없음</option>
							</select>
						</div>
					</div>
				</div>
		</div>
		<div class="flex_wrap column3 fluid product_list">
		
		
			<!-- 리스트 없을시 노출 -->
			<article class="no_data">
				<p>이용후기가 없습니다.</p>
			</article>
			<!-- //리스트 없을시 노출 -->
		
		
		
		</div>
		
	</section>
</div>
<!-- layer popup  : top: 50%적용위해 margin-top직접입력함 -->
<div class="layer_popup _popup1" id="_deleteReviewReplyLayer" style="display:none;" data-reserve-id data-cment-id>
	<div class="popup_wrap">
		<div class="pop_header">이용후기삭제</div>
		<div class="pop_container">
			<p class="pop_txt">이용후기 삭제시 복구<br>또는 재등록이 불가합니다.</p>
			<div class="btns">
				<a href="javascript:void(0)" class="btn btn_full btn_negative" _popcls="_deleteReviewReplyLayer">취소</a>
				<a href="javascript:void(0)" class="btn btn_full btn_default" id="_deleteReviewReply">삭제</a>
			</div>
		</div>
		<a href="javascript:void(0)" _popcls="_deleteReviewReplyLayer" class="btn_pop_close" title="레이어팝업 닫힘"><i class="sp_icon ico_pop_close">레이어팝업닫기</i></a>
	</div>
</div>
<!-- //layer popup -->
<!-- //wrap -->
<div class="p_notification"></div>
<div class="dimmed"></div>
</body>

<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/reply_min.js" type="text/javascript"></script>


<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';
</script>
</html>