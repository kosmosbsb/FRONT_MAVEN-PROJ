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
<meta property="og:title" content="연습실 검색결과 - 스페이스클라우드" />
<meta property="og:type" content="article" />
<meta property="og:description" content="스터디룸, 세미나실, 오피스, 회의실, 파티룸까지 생활에 필요한 모임 & 업무 공간을 스페이스클라우드에서 예약하세요!" />

<meta property="og:image" content="https://scloud.pstatic.net/20170626_213/1498462883895nP5TK_JPEG/service_og.jpg"/>
<meta property="og:url" content="https://spacecloud.kr/search?q=%EC%97%B0%EC%8A%B5%EC%8B%A4" />
<meta property="og:article:author" content="스페이스클라우드(SpaceCloud)" />
<meta property="og:article:author:url" content="https://spacecloud.kr" />
<!-- //og:tag -->
<meta name="description" content="스터디룸, 세미나실, 오피스, 회의실, 파티룸까지 생활에 필요한 모임 & 업무 공간을 스페이스클라우드에서 예약하세요!" />
<title>연습실 검색결과 - SpaceCloud</title>
<link rel="icon" href="https://ssl.pstatic.net/spacecloud/static/web/20171113/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="https://ssl.pstatic.net/spacecloud/static/web/20171113/spacecloud_icon.png" type="image/x-icon">
<link rel="apple-touch-icon" href="https://ssl.pstatic.net/spacecloud/static/web/20171113/spacecloud_icon.png">

<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/web/css/deploy/20180119094222/min/guest.min.css" type="text/css">
<!--[if lt IE 10]>
	<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/web/css/deploy/20180119094222/min/guestie9fix.min.css" type="text/css">
<![endif]-->



<script type="text/javascript">_headerRef = '';</script>
</head>

<style>
	*{margin:0;padding:0;}
	html,body{height:100%;width:100%;}
	#_container {/*display:table;*/}
	._layer{top:0;left:0;}
	._layerItem{display:none;position:fixed;z-index:9999;}
	._page {width:100%;height:100%;float:left;position:relative;}
	
	a#MOVE_TOP_BTN {
    position: fixed;
    right: 2%;
    bottom: 50px;
    display: none;
    z-index: 999;
	}
	
</style>
<body class="pc">
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jquery.min.js" type="text/javascript"></script>
<ul id="u_skip">
	<li><a href="#content_wraper">컨텐츠 바로가기</a></li>
</ul>
<div class="wrap main">



	
		
		
			<div class="banner _enableEl" style="display:none;"></div>
		
	
	<header class="header header_main _enableEl bar_close">
		<h1><a href="javascript:void(0);" class="logo _innerLink" direction="home"><i class="sp_icon ico_main_logo">SpaceCloud</i></a></h1>
		<input class="_query" maxlength=40 type="text" placeholder="검색어를 입력해주세요" autocomplete="off">
		<a href="http://partner.spacecloud.kr" class="btn_link_host">공간 등록하기</a>
		<a href="javascript:void(0);" class="nav_search nclk" _nclk="gnb.search"> <i class="sp_icon ico_search">검색</i></a>
		<a href="javascript:void(0);" class="nav_menu"> <i class="sp_icon ico_menu">전체메뉴</i></a>
	</header>
	<header class="header header_sub _enableEl bar_close" style="display:none;">
		<h1><a href="javascript:void(0);" class="logo _innerLink" direction="home"><i class="sp_icon ico_main_logo">SpaceCloud</i></a></h1>
		<div class="page_title"><h2></h2></div>
		<a href="javascript:void(0);" class="nav_prev"><span class="sp_icon ico_prev">이전</span></a>
		<input class="_query" maxlength=40 type="text" placeholder="검색어를 입력해주세요" autocomplete="off">
		<a href="javascript:void(0);" class="nav_search nclk" _nclk="gnb.search"><i class="sp_icon ico_search">검색</i></a>
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
	<div id="_root" style="overflow:hidden;width:100%;height:100%;"> 
		<div id="_container">
			<div id="home" _path="/index" _position="0" _fit="false" _firstPosition="[0, 0]" _reload="false" class="_page"></div>
			<div id="search" _path="/search" _position="1" _fit="false" _firstPosition="[0, 0]" _reload="true" class="_page">
			





<div id="content_wraper" role="main">
	<div class="header header_map" style="display:none;">
		<h1 class="p_keyword _ttl"></h1>
		<a href="javascript:void(0);" class="nav_delete _mapClose">
			<i class="sp_icon ico_delete">검색닫기</i>
		</a>
	</div>
	<div class="map mapWrap" style="display:none;position:absolute;background:#ebebeb;overflow:hidden;">
		<div class="inner _map" id="_searchMap">
		</div>
		<div class="fixed_area _clusterList" style="display:block;">
			<div class="fixed_list" style="overflow:hidden;">
				<ul class="map_sp_list _clusterData"></ul>
			</div>
		</div>
		<div class="nav_wrap">
			<a href="javascript:void(0);" class="btn_nav btn_prev _move _prev">
				<i class="ico_prev sp_icon">이전목록으로</i>
			</a>
			<a href="javascript:void(0);" class="btn_nav btn_next _move _next">
				<i class="ico_next sp_icon">다음목록으로</i>
			</a>
		</div>
	</div>
	<section class="notice_area keyword" data-search-option-wrap>
		<div class="inner_width">
		
		
		
					
					
			<h2 class="blind">검색조건</h2>
			<div class="center_wrap">
				<div class="center">
					<h3 class="blind">키워드</h3>
					<div class="result_wrap">
						<!-- [D] txt_keyword 클릭 시 상단 바의 검색창 활성화해주세요. -->
						<a href="javascript:void(0);" class="txt_keyword _search_query" title="검색창 열림">연습실</a>(으)로
						<span class="txt_result"> 검색한 결과입니다.</span>
						<h3 class="keyword _dym"></h3>
						<input type="hidden" data-search-param="q" value="연습실">
						
						
					</div>
				</div>
			</div>
			<div class="btn_area">
				<a href="javascript:void(0);" class="btn_location type_color _showMap" role="button">
					<span class="txt_location">지도</span>
				</a>
				<!-- [D] 필터 링크 클릭 시,
					1. aria-expanded 속성 값을 true로 바꿔주세요.
					2. 하단의 .layer_select.type_filter 레이어가 나타나게 해주세요.
					3. (width 1258px 미만) 스크롤을 상단으로 이동해주시고, wrap 높잇값을 레이어 높이만큼 설정해주세요. -->
				<!-- [D] 선택된 필터가 있을 경우, selected 클래스를 추가해주세요. -->
				<a href="#" class="btn_filter type_color _flink _filter_option" role="button" aria-haspopup="true" aria-expanded="false" data-style-filter-count>
					<span class="count" data-filter-count>9+<span class="blind">개 선택됨</span></span>
					<span class="txt_filter">필터</span>
				</a>
			</div>
		</div>
	</section>
	<section class="filter_area">
		<div class="layer_select type_filter" id="select8">
			<div class="layer_header">
				<div class="header header_select">
					<a href="javascript:void(0)" class="logo">
						<i class="sp_icon ico_main_logo">SpaceCloud</i>
					</a>
					<a href="#" class="nav_delete" data-close-btn>
						<i class="sp_icon ico_delete">필터 닫기</i>
					</a>
				</div>
				<div class="header_text">
					<strong>필터</strong>를 적용하세요.
				</div>
			</div>
			<div class="layer_body">
			
			
			
				
				
				<div class="category_row">
					<!-- [D] 결제유형 -->
					<div class="category_wrap">
						<div class="category_title">
							<strong>결제유형</strong>을 선택하세요.
							<span class="option_check">
								<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
								<input type="checkbox" name="payment_all" id="no_care3" class="checkbox" data-sync-checked="[name=payment]">
								<label for="no_care3">전체 유형</label>
							</span>
						</div>
						<ul class="check_list">
							<!-- [D] 선택된 단위에 checked 클래스 추가 -->
							<li>
								<input type="radio" name="payment" id="payment1" value="NOWPY" data-sync-checked="[name=payment_all]" data-parent-checked>
								<label for="payment1">바로결제</label>
							</li>
							<li>
								<input type="radio" name="payment" id="payment2" value="FIXPY" data-sync-checked="[name=payment_all]" data-parent-checked>
								<label for="payment2">승인결제</label>
							</li>
						</ul>
					</div>
					<!-- [D] 가격범위 -->
					<div class="category_wrap">
						<div class="category_title">
							<strong>가격범위</strong>를 선택하세요.
							<span class="option_check">
								<input type="checkbox" name="price_all" id="no_care5" class="checkbox" data-sync-disabled="[name=price_min], [name=price_max], [data-price-wrap]">
								<label for="no_care5">전체 범위</label>
							</span>
						</div>
						<!-- [D] 전체 범위 체크시, disabled 클래스를 추가해주세요. (input에도 disbled 속성 추가)-->
						<div class="input_wrap" data-price-wrap>
							<div class="input guide price">
								<input type="tel" name="price_min" class="number_set _number" value="0" maxlength="8">
							</div>
							<div class="input guide price">
								<input type="tel" name="price_max" class="number_set _number" value="0" maxlength="8">
							</div>
						</div>
					</div>
				</div>
				<!-- [D] 편의시설-->
				<div class="category_wrap">
					<div class="category_title">
						<strong class="category">편의시설</strong>을 선택하세요.
						<span class="option_check">
							<input type="checkbox" name="facility_all" id="no_care6" class="checkbox" data-sync-checked="[name=facility]">
							<label for="no_care6">전체 선택</label>
						</span>
					</div>
					<ul class="check_list space">
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility1" value="TVBM" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility1">TV/프로젝터</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility2" value="WIFI" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility2">인터넷/WIFI</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility3" value="CPY" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility3">복사/인쇄기</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility4" value="WBD" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility4">화이트보드</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility5" value="AMP" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility5">음향/마이크</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility6" value="COOK" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility6">취사시설</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility7" value="FOOD" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility7">음식물반입가능</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility8" value="ACL" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility8">주류반입가능</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility9" value="SWR" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility9">샤워시설</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility10" value="PARK" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility10">주차</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility11" value="NSMK" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility11">금연</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility12" value="FET" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility12">반려동물 동반가능</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility13" value="PCLAP" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility13">PC/노트북</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility14" value="CHTBL" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility14">의자/테이블</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility15" value="EPLUG" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility15">콘센트</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility16" value="H24" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility16">24시 운영</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility17" value="NOBRK" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility17">연중무휴</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility18" value="CAFE" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility18">카페/레스토랑</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility19" value="SNACK" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility19">간단한 다과/음료</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility20" value="STASH" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility20">개인락커</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility21" value="MAIL" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility21">메일 서비스</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility22" value="PBPTY" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility22">공용 주방</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility23" value="PRFR" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility23">정수기</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility24" value="CATR" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility24">케이터링</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility25" value="HEATR" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility25">난방기</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility26" value="AIRCN" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility26">에어컨</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility27" value="FAX" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility27">팩스</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility28" value="BIZRG" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility28">주소지 서비스</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility29" value="WRHUS" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility29">창고서비스</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility30" value="DLVRY" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility30">택배발송서비스</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility31" value="INTLT" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility31">내부화장실</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility32" value="FITRM" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility32">탈의실</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility33" value="RFTOP" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility33">테라스/루프탑</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility34" value="PBLUG" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility34">공용라운지</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility35" value="FLMIR" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility35">전신거울</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility36" value="BABEQ" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility36">바베큐시설</label>
						</li>
						
						<li>
							<!-- [D] label, input id 맞춰주세요 (웹접근성 관련)-->
							<input type="checkbox" name="facility" id="facility37" value="DRLOK" data-sync-checked="[name=facility_all]" data-parent-checked>
								<label for="facility37">도어락</label>
						</li>
						
					</ul>
				</div>
			</div>
			<div class="layer_footer">
				<div class="btn_area">
					<div class="btn_wrap">
						<a href="#" class="btn btn_negative" role="button" data-reset-btn>초기화</a>
					</div>
					<div class="btn_wrap">
						<a href="#" class="btn btn_default" role="button" data-submit-btn>필터 적용하기 <span class="count" data-filter-count>6</span>
						</a>
					</div>
				</div>
			</div>
				<input type="hidden" data-search-param="rsvMthCd" value="">
				<input type="hidden" data-search-param="minPrc" value="">
				<input type="hidden" data-search-param="maxPrc" value="">
				<input type="hidden" data-search-param="cnvenFctsCds" value="">
		</div>
		<div class="inner_width">
			<ul class="unit_filter" data-select-for="#selected_unit_type">
				<!-- [D] 단위 선택 시, aria-selected 속성 값을 true로 변경해주세요. -->
				<li class="unit_item" aria-selected="true">
					<a href="#" class="unit_link" data-value="">전체</a>
				</li>
				<li class="unit_item" aria-selected="false">
					<a href="#" class="unit_link" data-value="TIME">시간단위</a>
				</li>
				<li class="unit_item" aria-selected="false">
					<a href="#" class="unit_link" data-value="DAY">일단위</a>
				</li>
				<li class="unit_item" aria-selected="false">
					<a href="#" class="unit_link" data-value="MONTH">월단위</a>
				</li>
			</ul>
			<input type="hidden" id="selected_unit_type" data-search-param="rsvTpCd" value="">
			<!-- [D] label 클릭 시 sorting_filter에 on클래스를 추가해주세요. (아이콘)-->
			<div class="sorting_filter">
				<!-- [D] 선택된 option의 텍스트를 label에 넣어주세요 -->
				<label for="sorting"></label>
				<select name="" id="sorting" data-search-param="order">
					<option value="BEST_DESC" selected>베스트 공간 순</option>
					<option value="PRC_ASC">가격 낮은 순</option>
					<option value="PRC_DESC">가격 높은 순</option>
					<option value="CMNT_DESC">이용후기 많은 순</option>
					
					
				</select>
			</div>
		</div>
	</section>
	<section class="result_area" data-hide-for-filter>
		




	<div class="inner_width">
		<h2 class="blind">검색결과</h2>
		




		
		<div class="space_list swiper-container">
			<div class="flex_wrap column3 fluid _articles">
		
			
				
					
					
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/11022" _spaceId="11022" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20180208_107/1518017218700A4dYw_JPEG/1.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">이수역1분 2018NEW [킹덤]</h3>
									<div class="tags"><span class='tag_area_name'>서울시 동작구</span><span>#연습실대관</span><span>#사당역연습실</span><span>#이수역연습실</span><span>#이수연습실</span><span>#사당연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>3,000</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>5</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>54</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/9630" _spaceId="9630" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20180110_107/15155596021577eY6D_JPEG/KakaoTalk_20180110_131108665.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">홍대연습실 2018NEW-레드블랙</h3>
									<div class="tags"><span class='tag_area_name'>홍대합정</span><span>#합정연습실</span><span>#홍대입구역</span><span>#연습실대관</span><span>#홍대연습실</span><span>#연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>5,000</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>5</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>61</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/6898" _spaceId="6898" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20170825_21/1503656194690ogI0U_JPEG/DSC_1325.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">이야호 연습실 건대역점</h3>
									<div class="tags"><span class='tag_area_name'>건대세종대</span><span>#연기연습실</span><span>#건대연습실</span><span>#댄스연습실</span><span>#연습실대여</span><span>#연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>3,500~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>70</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>184</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/4356" _spaceId="4356" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20170209_296/1486598179863M3XN5_JPEG/IMG_0658.JPG?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">[큰홀할인]이룸이야호 연습실 홍대</h3>
									<div class="tags"><span class='tag_area_name'>홍대합정</span><span>#홍대댄스연습실</span><span>#홍대무용연습실</span><span>#홍대연기연습실</span><span>#댄스연습실</span><span>#홍대연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>5,000~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>88</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>295</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/4265" _spaceId="4265" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20170322_254/1490111855655FjYnM_JPEG/DSC_5101.JPG?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">사당.이수 [ 핑크트리 연습실 ]</h3>
									<div class="tags"><span class='tag_area_name'>서울시 동작구</span><span>#사당연습실</span><span>#이수연습실</span><span>#댄스연습실</span><span>#연습실</span><span>#연습실대관</span></div>
									<div class="info_price_hour">
										<strong class='price'>5,000</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>15</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>189</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/4181" _spaceId="4181" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20170506_117/1494001963333jvPNq_JPEG/KakaoTalk_20170428_234723575.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">댄스플 신촌 댄스 스튜디오</h3>
									<div class="tags"><span class='tag_area_name'>신촌</span><span>#신촌역</span><span>#신촌연습실</span><span>#연습실대여</span><span>#이대연습실</span><span>#홍대연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>8,000</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>91</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>212</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/4099" _spaceId="4099" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20171110_97/15103159975753ANGn_JPEG/204.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">SMA 안양범계 댄스음악 연습실</h3>
									<div class="tags"><span class='tag_area_name'>경기도 안양시 동안구</span><span>#산본연습실</span><span>#피아노연습실</span><span>#안양연습실</span><span>#범계연습실</span><span>#댄스연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>2,800~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>61</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>130</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/3194" _spaceId="3194" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20161124_272/1479968388595NtpXl_JPEG/DSC_8096.JPG?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">B1댄스스튜디오 사당 1호점</h3>
									<div class="tags"><span class='tag_area_name'>서울시 서초구</span><span>#연습실</span><span>#연습실대여</span><span>#사당연습실</span><span>#댄스연습실</span><span>#이수연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>4,000~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>120</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>498</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/2707" _spaceId="2707" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20161003_239/14754848744450JyNu_JPEG/1S%C8%A6_%B8%DE%C0%CE.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">연습실 성장(이수역점)</h3>
									<div class="tags"><span class='tag_area_name'>서울시 서초구</span><span>#이수연습실</span><span>#사당연습실</span><span>#댄스연습실</span><span>#이수역연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>3,000~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>119</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>509</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/1870" _spaceId="1870" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20160901_94/1472735887716DBeG0_JPEG/KakaoTalk_Photo_2016-09-01-20-40-36_55.jpeg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">댄스플 이대점 (큰홀 할인이벤트)</h3>
									<div class="tags"><span class='tag_area_name'>신촌</span><span>#댄스연습실</span><span>#홍대연습실</span><span>#연습실대여</span><span>#신촌연습실</span><span>#이대연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>5,000~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>313</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>437</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/1869" _spaceId="1869" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20160729_75/1469768547441DyxtJ_JPEG/DSC05227.JPG?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">댄스플 서초 방배 연습실 스튜디오</h3>
									<div class="tags"><span class='tag_area_name'>서울시 서초구</span><span>#무용</span><span>#연습실대여</span><span>#사당연습실</span><span>#이수연습실</span><span>#방배연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>5,000~</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>135</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>409</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
				
					<article class="box box_space">
						<div class="inner">
							<a href="/space/9631" _spaceId="9631" class="_innerLink" direction="spaceDetail"
							   params="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
								<div class="img_box">
									<span style="background-image: url(https://scloud.pstatic.net/20180110_117/1515561712406nOPjh_JPEG/KakaoTalk_20180110_131028549.jpg?type=f369_208);" class="img"></span>
								</div>
								
								<span class="btns_reserv">
								<span href="javascript:void(0);" class="btn_reserv_now">바로<br>결제</span>
								
								
								</span>
								
								
								
								<div class="info_area">
									<h3 class="tit_space">홍대.합정연습실 [옐로우골드 ]</h3>
									<div class="tags"><span class='tag_area_name'>홍대합정</span><span>#홍대연습실</span><span>#저렴한연습실</span><span>#합정연습실</span><span>#연습실대관</span><span>#서울연습실</span></div>
									<div class="info_price_hour">
										<strong class='price'>3,000</strong><span class='txt_unit'>원/시간</span>
										<i class="sp_icon ico_npay">네이버페이 사용가능</i>
									</div>
									<div class="info_number_love">
										<span class="txt_number_review">
											<i class="sp_icon ico_review">리뷰수</i><em>4</em>
										</span>
										<span class="txt_number_love">
											<i class="sp_icon ico_love">좋아요</i> <em>60</em>
										</span>
									</div>
								</div>
							</a>
						</div>
					</article>
				
		
				<div id="spaceDetailVar" style="display:none;">
					<div id="spaceId"></div>
				</div>
			</div>
		</div>
		


		<span class="loading" style="display:none;"> <i class="ico_loading sp_icon"></i></span>
	</div>

<script type="text/javascript">
var nomorsearch = false;
var pagingParam = {"originalQuery":"연습실","refinedQuery":"연습실 ","seperatedQueries":["연습실"],"attendyMin":"","ttlMatched":"","localities":{"strategicalCortarInfo":[],"cityCortarInfo":[],"dvsnCortarInfo":[],"secCortarInfo":[]},"cateogories":[{"catNm":"연습실","catSeq":8}],"terms":[],"pageCount":12,"totalCount":863,"page":1,"skipCount":0};


var dym = eval();
if(dym && dym!=undefined) {
	var link="javascript:void(0);", cls = "";
	if(dym&& dym.length &&dym.length==1){
		var q = encodeURI("연습실".replace(dym[0][0].trim().replace(/[시,군,구,읍,면,동]/ig, ""), dym[0][1]));
		link="/search?q="+q;
	}else{
		if(dym && dym.length&& dym.length>1) {
			cls = "_addDup";
		}
	}
	$("._dym").html('<p class="txt_confirm">찾으시는 공간이 지역명 &ldquo;<a href="'+link+'" class="'+cls+'">'+dym[0][0]+'</a>&rdquo;인가요?</p>');
}

var _sparam = {
	q: "연습실",
	page : 1,
	tcnt : 863,
	
	rsvMthCd : "",
	rsvTpCd : "",
	minPrc : "",
	maxPrc : "",
	cnvenFctsCds : "",
	order : "BEST_DESC",
	
	lat :37.48503500,
	lng : 126.97961000
	
	
};




$("._showMap").show();


</script>
	</section>
</div>

<jsp:include page="Footer.jsp"/>

<script type="text/javascript">
var imgUrl = "https://ssl.pstatic.net/spacecloud/static/web/20171113/"; 
var pinfra = "https://scloud.pstatic.net";
var isPick = false;
var _iniFunc = function() { 
	var _id = 'search';
	if(spacecloud.jpage) {
		if(spacecloud.jpage._pages[_id]) {
			spacecloud.search.jsonPageData = {};
			spacecloud.jpage.appendOO(spacecloud.search,_id);
		}
	}
	$(document).off("jPageReady", _iniFunc); 
	$(document).off("_pushStateChanged", _iniFunc); 
	$(document).off("_popStateChanged", _iniFunc); 
	$(document).off("customMainInit", _iniFunc); 
}; 
$(document).on("jPageReady", _iniFunc); 
$(document).on("_pushStateChanged", _iniFunc); 
$(document).on("_popStateChanged", _iniFunc); 
$(document).on("customMainInit", _iniFunc); 

// 20180219 페이지 상단이동 함수 추가
$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            $('.btn_fixed_top').fadeIn();
        } else {
            $('.btn_fixed_top').fadeOut();
        }
    });
    
    $(".btn_fixed_top").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});

</script>

			</div>
			<div id="spaceDetail" _path="/space" _position="2" _fit="false" _firstPosition="[0, 0]" _reload="true" class="_page"></div>
		</div>
	</div>

<!-- 20180219 페이지 상단이동 코드 추가 -->
<a class="btn_fixed_top" href="#">
		<span class="sp_icon ico_top">페이지 상단으로 이동</span>
</a>

<div class="dimmed"></div>
</div>
</body>
</html>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jqueryScrollPlugins.min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/flow.min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/search.min.js" type="text/javascript"></script>
<script type="text/javascript">
var today = "20180210";
</script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/maps3.js?_v20180210"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/map.min.js" type="text/javascript"></script>