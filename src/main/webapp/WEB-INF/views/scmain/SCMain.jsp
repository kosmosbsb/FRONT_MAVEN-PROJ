<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<meta property="og:url" content="https://spacecloud.kr/index.nhn?NaPm=ct%3Djdeguz64%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3D7be3569e81c41404231a577501c9baa9ccce2373" />
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

<script src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script> 
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jqueryScrollPlugins.min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/flow.min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/search.min.js" type="text/javascript"></script>
<script type="text/javascript">
var today = "20180208";
</script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/maps3.js?_v20180208"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/map.min.js" type="text/javascript"></script>


<script type="text/javascript">
	var imgUrl = "https://ssl.pstatic.net/spacecloud/static/web/20171113/";
	var pinfra = "https://scloud.pstatic.net";
	var _iniFunc = function() {
		var _id = 'home';
		if (spacecloud.jpage) {
			if (spacecloud.jpage._pages[_id]
					&& !spacecloud.jpage._pages[_id].mainobject) {
				spacecloud.home.jsonPageData = {};
				spacecloud.jpage.appendOO(spacecloud.home, _id);
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
</script>




<script type="text/javascript">_headerRef = 'search.naver.com';</script>
</head>
<style>
	*{margin:0;padding:0;}
	html,body{height:100%;width:100%;}
	#_container {/*display:table;*/}
	._layer{top:0;left:0;}
	._layerItem{display:none;position:fixed;z-index:9999;}
	._page {width:100%;height:100%;float:left;position:relative;}
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


<!-- 햄버거메뉴 시작---------------------------------------------------------------------------------------------------------------  -->

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
										

									</ul>
								</div>
							</li>
						</ul>
						<div class="service_menu">
							
								<a href="<c:url value='/login.do'/>">로그인</a>${result}
							
							<p class="copyright">
								Powered by NAVER © NSPACE Corp.
							</p>
						</div>
					</nav>
				</div>
<!-- 햄버거메뉴 끝---------------------------------------------------------------------------------------------------------------  -->
	
				<a href="javascript:void(0);" class="nav_menu_close"><i class="sp_icon ico_nav_close">메뉴 닫기</i></a>
			</div>
			<a href="http://partner.spacecloud.kr" class="btn_fixed_guest nclk" _nclk="mym.submit">호스트센터로 이동<i class="sp_icon ico_go"></i></a>
			<div class="scroll_out"></div>
		</div>
	</aside>
	<!-- //gnb -->
	<div id="_root" style="overflow:hidden;width:100%;height:100%;"> 
		<div id="_container" style="position:relative;">
			<div id="home" _path="/index" _position="0" _fit="false" _firstPosition="[0, 0]" _reload="false" class="_page">
				





<style>

</style>
<div id="content_wraper">
	<section class="section_search">
		<div class="spot_wrap">
			
				
				<!-- PC -->
					<span style="background-image: url(https://scloud.pstatic.net/20170519_33/1495192008955dicCt_PNG/background_main_top_1920x630_01.png);" class="spot_img"></span>
				
			
		</div>
		<div class="search_wrap">
			<h2><strong>어떤 공간</strong>이 필요하세요?</h2>
			<div class="input_wrap">
				<form>
					<label for="input_search">공간 검색</label>
					<input type="text" id="input_search" class="_query" maxlength="40" value="" placeholder="강남 스터디룸" autocomplete="off" data-search-param="q">
					<!-- [D] text 미입력시, btn_search를 클릭하면 커서를 활성화해주세요. -->
					<a href="javascript:void(0);" class="btn_search _searchSbm nclk" role="button" _nclk="hrs.search" paramsattr="data-search-param">
						<span class="sp_icon ico_btn_search_main">검색</span>
					</a>
				</form>
			</div>
			<div class="sub_desc_box">
				<p class="sub_desc">
					<i class="sp_icon ico_alert_guide_white"></i><strong>지역, 인원, 공간유형 또는 공간 상호명</strong>을 검색해보세요. 
				</p>
			</div>
		</div>
		<div class="recomm_wrap">
			<h2>추천 키워드</h2>
			<ul class="recomm_list">
			
				<li class="recomm_item"><a href="javascript:void(0);">작업실</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">연습실</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">공동 작업실</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">회의실</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">독립오피스</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">세미나실</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">카페</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">일하기 좋은 카페</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">스터디룸</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">레저시설</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">공연장</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">다목적홀</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">엠티장소</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">코워킹스페이스</a></li>
			
				<li class="recomm_item"><a href="javascript:void(0);">파티룸</a></li>
			
			</ul>
		</div>
	</section>
	<section class="section_cont">
		<div class="space_list_wrap">
			<h3 class="blind">공간정보 리스트</h3>
			<div id="_spaceListScrollWrap" class="space_list swiper_list" data-sly-wrap-mobile>
				<div class="flex_wrap column3 fluid" id="_spaceScroller">
					
					
						<article class="box box_space _space" data-sly-item>
							<div class="inner">
								<a href="/space/1791" _spaceId='1791' class="_innerLink nclk" direction="spaceDetail"
								   _nclk="con.recommend" _ncId="1791" _nrank="1"
								   param="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
									<div class="img_box">
										
										
											<span style="background-image: url(https://scloud.pstatic.net/20160603_134/1464942096741CBCG5_JPEG/%B8%C5%C0%E52.jpg?type=f369_208);" class="img lazy"></span>
										
									</div>
									
									<span class="btns_reserv">
									
									<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
									
									</span>
									
									
									
									<div class="info_area">
										<h3 class="tit_space">망원동 감성편집샵 [RHOO]</h3>
										<div class="tags"><span class='tag_area_name'>서울시 마포구</span><span>#공부</span><span>#망원동</span><span>#클래스</span><span>#모임</span><span>#스터디</span></div>
										<div class="info_price_hour">
											<strong class='price'>10,000</strong><span class='txt_unit'>원/시간</span>
											<i class="sp_icon ico_npay">네이버페이 사용가능</i>
										</div>
										<div class="info_number_love">
											<span class="txt_number_review">
													<i class="sp_icon ico_review">리뷰수</i><em>0</em>
											</span>
											<span class="txt_number_love">
												<i class="sp_icon ico_love">좋아요</i> <em>29</em>
											</span>
										</div>
									</div>
								</a>
							</div>
						</article>
					
						<article class="box box_space _space" data-sly-item>
							<div class="inner">
								<a href="/space/5554" _spaceId='5554' class="_innerLink nclk" direction="spaceDetail"
								   _nclk="con.recommend" _ncId="5554" _nrank="2"
								   param="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
									<div class="img_box">
										
										
											<span style="background-image: url(https://scloud.pstatic.net/20170424_246/1493021246003dr1X1_JPEG/DSC00956_copy_copy.jpg?type=f369_208);" class="img lazy"></span>
										
									</div>
									
									<span class="btns_reserv">
									
									<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
									
									</span>
									
									
									
									<div class="info_area">
										<h3 class="tit_space">컬러테라피 스튜디오 &#39;루미나&#39;</h3>
										<div class="tags"><span class='tag_area_name'>서울시 종로구</span><span>#경복궁역공간대여</span><span>#효자동</span><span>#프라이빗미팅</span><span>#힐링</span><span>#명상</span></div>
										<div class="info_price_hour">
											<strong class='price'>60,000</strong><span class='txt_unit'>원/시간</span>
											<i class="sp_icon ico_npay">네이버페이 사용가능</i>
										</div>
										<div class="info_number_love">
											<span class="txt_number_review">
													<i class="sp_icon ico_review">리뷰수</i><em>0</em>
											</span>
											<span class="txt_number_love">
												<i class="sp_icon ico_love">좋아요</i> <em>5</em>
											</span>
										</div>
									</div>
								</a>
							</div>
						</article>
					
						<article class="box box_space _space" data-sly-item>
							<div class="inner">
								<a href="/space/10756" _spaceId='10756' class="_innerLink nclk" direction="spaceDetail"
								   _nclk="con.recommend" _ncId="10756" _nrank="3"
								   param="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
									<div class="img_box">
										
										
											<span style="background-image: url(https://scloud.pstatic.net/20171204_240/1512314174671q877P_JPEG/D71A5798And7more_tonemapped_%282%29.jpg?type=f369_208);" class="img lazy"></span>
										
									</div>
									
									<span class="btns_reserv">
									
									<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
									
									</span>
									
									
									
									<div class="info_area">
										<h3 class="tit_space">핑크주걱 by 며느리키친</h3>
										<div class="tags"><span class='tag_area_name'>서울시 영등포구</span><span>#키친스튜디오</span><span>#파티</span><span>#와인모임</span><span>#회식</span><span>#스터디</span></div>
										<div class="info_price_hour">
											<strong class='price'>80,000</strong><span class='txt_unit'>원/시간</span>
											<i class="sp_icon ico_npay">네이버페이 사용가능</i>
										</div>
										<div class="info_number_love">
											<span class="txt_number_review">
													<i class="sp_icon ico_review">리뷰수</i><em>0</em>
											</span>
											<span class="txt_number_love">
												<i class="sp_icon ico_love">좋아요</i> <em>5</em>
											</span>
										</div>
									</div>
								</a>
							</div>
						</article>
					
						<article class="box box_space _space" data-sly-item>
							<div class="inner">
								<a href="/space/10765" _spaceId='10765' class="_innerLink nclk" direction="spaceDetail"
								   _nclk="con.recommend" _ncId="10765" _nrank="4"
								   param="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
									<div class="img_box">
										
										
											<span style="background-image: url(https://scloud.pstatic.net/20171205_176/1512446879754uPYas_JPEG/1_A_ROOM_%282%29.jpg?type=f369_208);" class="img lazy"></span>
										
									</div>
									
									<span class="btns_reserv">
									
									<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
									
									</span>
									
									
									
									<div class="info_area">
										<h3 class="tit_space">[신사동 가로수길] 미남 스튜디오</h3>
										<div class="tags"><span class='tag_area_name'>가로수길</span><span>#플리마켓</span><span>#클래스</span><span>#브랜드행사</span><span>#렌탈스튜디오</span><span>#파티룸</span></div>
										<div class="info_price_hour">
											<strong class='price'>100,000</strong><span class='txt_unit'>원/시간</span>
											<i class="sp_icon ico_npay">네이버페이 사용가능</i>
										</div>
										<div class="info_number_love">
											<span class="txt_number_review">
													<i class="sp_icon ico_review">리뷰수</i><em>0</em>
											</span>
											<span class="txt_number_love">
												<i class="sp_icon ico_love">좋아요</i> <em>10</em>
											</span>
										</div>
									</div>
								</a>
							</div>
						</article>
					
						<article class="box box_space _space" data-sly-item>
							<div class="inner">
								<a href="/space/10839" _spaceId='10839' class="_innerLink nclk" direction="spaceDetail"
								   _nclk="con.recommend" _ncId="10839" _nrank="5"
								   param="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
									<div class="img_box">
										
										
											<span style="background-image: url(https://scloud.pstatic.net/20171206_72/1512544260147DyYEo_JPEG/2.jpg?type=f369_208);" class="img lazy"></span>
										
									</div>
									
									<span class="btns_reserv">
									
									<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
									
									</span>
									
									
									
									<div class="info_area">
										<h3 class="tit_space">강남논현언주역[책인사 라이브러리]</h3>
										<div class="tags"><span class='tag_area_name'>서울시 강남구</span><span>#논현동</span><span>#언주역</span><span>#스터디</span><span>#회의실</span><span>#교육장</span></div>
										<div class="info_price_hour">
											<strong class='price'>30,000</strong><span class='txt_unit'>원/시간</span>
											<i class="sp_icon ico_npay">네이버페이 사용가능</i>
										</div>
										<div class="info_number_love">
											<span class="txt_number_review">
													<i class="sp_icon ico_review">리뷰수</i><em>0</em>
											</span>
											<span class="txt_number_love">
												<i class="sp_icon ico_love">좋아요</i> <em>4</em>
											</span>
										</div>
									</div>
								</a>
							</div>
						</article>
					
						<article class="box box_space _space" data-sly-item>
							<div class="inner">
								<a href="/space/11722" _spaceId='11722' class="_innerLink nclk" direction="spaceDetail"
								   _nclk="con.recommend" _ncId="11722" _nrank="6"
								   param="" pathParam="spaceDetailVar" executeFnc="setSpaceDetailParam">
									<div class="img_box">
										
										
											<span style="background-image: url(https://scloud.pstatic.net/20180116_211/1516068717832uBCWO_JPEG/1.jpg?type=f369_208);" class="img lazy"></span>
										
									</div>
									
									<span class="btns_reserv">
									
									<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
									
									</span>
									
									
									
									<div class="info_area">
										<h3 class="tit_space">[부티크 파티룸] 일산 덴마크주택</h3>
										<div class="tags"><span class='tag_area_name'>경기도 고양시 일산동구</span><span>#공방</span><span>#파티룸</span><span>#생일파티</span><span>#프로포즈</span><span>#워크샵</span></div>
										<div class="info_price_hour">
											<strong class='price'>77,000~</strong><span class='txt_unit'>원/일</span>
											<i class="sp_icon ico_npay">네이버페이 사용가능</i>
										</div>
										<div class="info_number_love">
											<span class="txt_number_review">
													<i class="sp_icon ico_review">리뷰수</i><em>0</em>
											</span>
											<span class="txt_number_love">
												<i class="sp_icon ico_love">좋아요</i> <em>30</em>
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
				<div class="swiper_pagination" data-sly-pagination>
				</div>
			</div>
		</div>
		<div class="slide_wrap">
			<h2 class="blind">배너</h2>
			<div id="scrollerWrap">
				<div id="scroller">
					<ul class="slides" id="_bannerList">
						
						
							<li class="slide ">
								
									
									<!-- PC -->
										<span style="background-image: url(https://scloud.pstatic.net/20180201_179/15174607271291Ovxu_PNG/20180117_main_banner_pc_1.png);" class="img lazy"></span>
									
								
								<a href="http://spacecloudevent.kr/" class="inner nclk" _nclk="con.banner" _ncId="644" _nrank="1">
									<div class="inner_cell">
										<h3 class="h_promt">COVER WEEK 이벤트</h3>
										<p class="tit_promt">
											<span class="quote">커버위크 공감투표 참여하고<br>댄서에게 연습실을 선물하세요! 
 </span>
										</p>
										<span class="btn_opacity">바로가기</span>
									</div>
								</a>
							</li>
						
							<li class="slide ">
								
									
									<!-- PC -->
										<span style="background-image: url(https://scloud.pstatic.net/20171013_237/150787784666910YfR_PNG/20170901_workshop_main_banner_pc_2.png);" class="img lazy"></span>
									
								
								<a href="http://spacecloudevent.kr/workshop" class="inner nclk" _nclk="con.banner" _ncId="595" _nrank="2">
									<div class="inner_cell">
										<h3 class="h_promt">컨시어지 서비스</h3>
										<p class="tit_promt">
											<span class="quote">맞춤형 워크샵 공간을<br>편하게 추천 받아보세요!</span>
										</p>
										<span class="btn_opacity">바로가기</span>
									</div>
								</a>
							</li>
						
					</ul>
				</div>
			</div>
			<div class="nav_slide">
				<a href="javascript:void(0);" class="btn_slide_prev _banPrev">
					<i class="sp_icon ico_slide_prev">이전으로 이동</i>
				</a> <a href="javascript:void(0);" class="btn_slide_next _banNext">
					<i class="sp_icon ico_slide_next">다음으로 이동</i>
				</a>
			</div>
		</div>
		<div class="theme_list_wrap">
			<h2>기획전</h2>
			<div class="theme_list swiper_list" data-sly-wrap-mobile>
				<div class="flex_wrap column3 fluid">
					
					<article class="box box_space article_theme" data-sly-item>
						<a href="/search/pick/646" class="inner">
							<div class="th_area">
								<div class="center_wrap">
									<div class="center">
										<h3 class="h_theme">우리 우정 영원히 <br>우정 파티하기 좋은 공간</h3>
										<p class="p_theme">파티룸 기획전 </p>
									</div>
								</div>
							</div>
							<span data-src="https://scloud.pstatic.net/20180205_193/1517798114686rrklj_PNG/180130_curation_banner_1.png?type=f368_369" class="th_thumb lazy"></span>
						</a>
					</article>
					
					<article class="box box_space article_theme" data-sly-item>
						<a href="/search/pick/647" class="inner">
							<div class="th_area">
								<div class="center_wrap">
									<div class="center">
										<h3 class="h_theme">발렌타인 데이를 위한<br>매력 만점 쿠킹스튜디오</h3>
										<p class="p_theme">쿠킹스튜디오 기획전 </p>
									</div>
								</div>
							</div>
							<span data-src="https://scloud.pstatic.net/20180205_14/1517815798637rCtWN_PNG/180205_curation_banner_1.png?type=f368_369" class="th_thumb lazy"></span>
						</a>
					</article>
					
					<article class="box box_space article_theme" data-sly-item>
						<a href="/search/pick/523" class="inner">
							<div class="th_area">
								<div class="center_wrap">
									<div class="center">
										<h3 class="h_theme">음식물 반입 OK!<br> 
대관하기 좋은 카페 모음</h3>
										<p class="p_theme">일일카페 기획전</p>
									</div>
								</div>
							</div>
							<span data-src="https://scloud.pstatic.net/20170721_286/15006206669576G0Hm_PNG/170721_cafe_curation_banner.png?type=f368_369" class="th_thumb lazy"></span>
						</a>
					</article>
					
					<article class="box box_space article_theme" data-sly-item>
						<a href="/search/pick/639" class="inner">
							<div class="th_area">
								<div class="center_wrap">
									<div class="center">
										<h3 class="h_theme">2017 하반기<br>
사랑받은 댄스 연습실 </h3>
										<p class="p_theme">연습실 기획전 </p>
									</div>
								</div>
							</div>
							<span data-src="https://scloud.pstatic.net/20180117_229/1516173067721KvPGL_PNG/180117_curation_banner_3.png?type=f368_369" class="th_thumb lazy"></span>
						</a>
					</article>
					
					<article class="box box_space article_theme" data-sly-item>
						<a href="/search/pick/641" class="inner">
							<div class="th_area">
								<div class="center_wrap">
									<div class="center">
										<h3 class="h_theme">디지털노마드처럼<br>자유롭게 일하기 좋은<br>일일 공유오피스</h3>
										<p class="p_theme">원데이노마드 기획전</p>
									</div>
								</div>
							</div>
							<span data-src="https://scloud.pstatic.net/20180122_218/1516586226684nf5j4_PNG/170707_workspace_curation_banner.png?type=f368_369" class="th_thumb lazy"></span>
						</a>
					</article>
					
					<article class="box box_space article_theme" data-sly-item>
						<a href="/search/pick/576" class="inner">
							<div class="th_area">
								<div class="center_wrap">
									<div class="center">
										<h3 class="h_theme">소규모 그룹에게 적합한 <br> 워크숍 장소 추천 </h3>
										<p class="p_theme">워크숍 기획전</p>
									</div>
								</div>
							</div>
							<span data-src="https://scloud.pstatic.net/20170908_175/1504860921679wj8jl_PNG/170908_curation_banner_3.png?type=f368_369" class="th_thumb lazy"></span>
						</a>
					</article>
					
				</div>
				<!-- [D] 모바일: swiper -->
				<div class="swiper_pagination" data-sly-pagination></div>
			</div>
		</div>
	</section>
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


			</div>
			<div id="search" _path="/search" _position="1" _fit="false" _firstPosition="[0, 0]" _reload="true" class="_page"></div>
			<div id="spaceDetail" _path="/space" _position="2" _fit="false" _firstPosition="[0, 0]" _reload="true" class="_page"></div>
		</div>
	</div>

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

</body>
</html>




