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
<meta property="og:url" content="https://spacecloud.kr/host/olivestyle1" />
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



<script type="text/javascript">_headerRef = '';</script>
</head>

<body class="pc">
<script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jquery.min.js" type="text/javascript"></script>
<ul id="u_skip">
    <li><a href="#content_wraper">컨텐츠 바로가기</a></li>
</ul>
<div class="wrap workspace host" style="min-height: 720px;">
    
<header class="header header_sub">
    <h1><a href="javascript:void(0);" class="logo"><i class="sp_icon ico_main_logo">SpaceCloud</i></a></h1>
    <div class="page_title"><h2>호스트 페이지</h2></div>
    <a href="javascript:void(0);" class="nav_prev _back"><span class="sp_icon ico_prev">이전</span></a>
    <input class="_query" maxlength="40" type="text" placeholder="검색어를 입력해주세요" autocomplete="off">
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
						<img alt="프로필 이미지" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" style="display:none;">
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
        <div class="contents">
            <div class="host_space_wrap">

                <!-- 프로필 영역 -->
                <div class="host_profile_box" style="transition: all 0s; transform: matrix(1, 0, 0, 1, 0, 0);">
                	
                	
                	
                	<span style="background-image: url(https://scloud.pstatic.net/20161209_263/1481291907632sNr10_JPEG/IMG_7927.JPG);" class="profile_photo"></span>
                	
                    
                        <em class="blind">host 프로필 사진</em>
                        <span class="profile_label">HOST</span>
                        <p class="profile_name">올리브 스튜디오</p>
                        <p class="profile_intro">
                            스튜디오렌탈/쿠킹스튜디오/소규모 파티장소/
                        </p>
                    
                    <span class="btn_respondse">
                        <strong class="txt_highlight">호스트의 평균 응답 시간</strong>
                        
                            
                            
                            5분
                            
                        
                    </span>
                    
                </div>

                <!-- 공간리스트 -->
                <div class="text_box first">
                    <h4 class="h_intro">
                        <em>올리브 스튜디오</em>의 공간 <strong class="txt_primary"><em id="_spaceCount">1</em>개</strong>
                    </h4>
                </div>
                <div class="space_list _space_wrap">
                    <div class="flex_wrap fluid">
                        <!-- [D] 공간 리스트 들어가는 자리. host_page.js 참고 -->
                        
                    <article class="box box_space">
	<div class="inner">
		<a href="/space/3393">
			<div class="img_box">
				<span style="background-image: url(https://scloud.pstatic.net/20161209_88/1481291676091IBxNX_JPEG/IMG_7953.JPG?type=f369_208);" class="img"></span>
			</div>
			
			<span class="btns_reserv">
			
			<span href="javascript:void(0);" class="btn_reserv_confirm">승인<br>결제</span>
			
			</span>
			
			
			
			<div class="info_area">
				<h5 class="tit_space">olive studio</h5>
				<div class="tags"><span class="tag_area_name">잠실송파</span><span>#쿠킹촬영</span><span>#공간대여</span><span>#쿠킹스튜디오</span><span>#파티장소</span><span>#워크샵</span></div>
				<div class="info_price_hour">
					<strong class="price">77,000</strong><span class="txt_unit">원/시간</span>
					<i class="sp_icon ico_npay">네이버페이 사용가능</i>
				</div>
				<div class="info_number_love">
					<span class="txt_number_review">
						<i class="sp_icon ico_review">리뷰수</i><em>2</em>
					</span>
					<span class="txt_number_love">
						<i class="sp_icon ico_love">좋아요</i><em>34</em>
					</span>
				</div>
			</div>
		</a>
	</div>
</article></div>
                    <!-- [D] 로딩 아이콘 -->
                    <span class="loading" style="display: none;"><i class="ico_loading sp_icon"></i></span>
                    <!-- [D] 더보기/접기 버튼 -->
                    <a href="javascript:void(0);" class="btn_more _space" style="display: none;">
                        더보기<i class="sp_icon ico_more_down"></i>
                    </a>
                </div>


                <!-- 후기영역 -->
                <div class="review_box">
                    <div class="text_box _review_header" style="">
                        <h4 class="h_intro">이용 후기 <strong class="txt_primary"><em id="_reviewCount">2</em>개</strong>
                        <span class="dot"></span>
						평균 평점 <strong class="txt_primary"><em>5.0</em></strong>
						</h4>
						<div class="switch_item">
							<input type="checkbox" name="" id="photo_list_view" class="shitch">
							<label for="photo_list_view">사진 후기만 보기</label>
						</div>
					</div>
					<!-- 모바일에서만 노출 -->
					<div class="tab_area _review_tab" style="">
						<ul class="tab">
							<!-- [D] 활성화 active 추가 -->
							<li class="active _all_review"><a href="javascript:void(0);">전체후기보기</a></li>
							<li class="_image_review"><a href="javascript:void(0);">사진후기만보기</a></li>
						</ul>
					</div>

                    <div class="_review_wrap" style="">
                        <ul class="review_list" id="review_list"><li class="rlist ">   <div class="rbox_mine"> <span class="pf_img" style="background-image: url(    https://phinf.pstatic.net/contact/20180121_247/1516461244129j7H0T_JPEG/ci.jpg?type=s160  )"></span> <strong class="guest_name">문수연</strong> <p class="p_review">자연광도 좋았고 소품들도 예쁜것들 아낌없이 빌려주셔서 정말 감사했습니다.
가까운곳에 스튜디오가 있어서 다음에 또 이용하고 싶네요~^^</p> <div class="space_list swiper_list photo_review">  <div class="flex_wrap column3 fluid">        </div> </div> <div class="rbox_info_base"><a href="../space/3393" class="space_info">olive studio</a>       <span class="time_info">2018.01.07. 02:23:33</span></div> <span class="rate_area">  <span class="blind">평점</span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>   </span> </div>         <div class="rbox_reply">   <p class="p_tit_reply"><em>올리브 스튜디오</em>님의 댓글</p>   <p class="p_review">감사합니다. 촬영이 아니여도 놀러오세요^^ 

혹시 다음촬영전에 저희 보유소품이나 페브릭먼저보시고 촬영하심 조금이나마 도움드릴께요^^

멋진시작을 저희도 응원드립니다!!</p>   <div class="rbox_info_base"><p class="time_info">2018.01.08. 16:17:57</p></div>  </div>    </li><li class="rlist ">   <div class="rbox_mine"> <span class="pf_img" style="background-image: url(    https://phinf.pstatic.net/contact/20161011_7/1476155650097DNEs6_PNG/image.png?type=s160  )"></span> <strong class="guest_name">스클 이벤트 매니저</strong> <p class="p_review">[이벤트 당첨자 오**님] 사진빨 전혀 없는! 홈페이지에 올라온 사진이랑 너무 똑같은 공간이라 좋았습니다. 좋은 사람들과 함께 할 수 있는 것만으로도 즐거운데, 주방에서 직접 요리도 해볼 수 있는 일석이조의 장소인 것 같아요. 그리고 정말 감동이었던 건, 저희가 온다고 직접 오븐에 구운 머핀을 주셨어요. 나올 때 미처 말씀을 못드렸는데, 정말 잘먹었습니다!</p> <div class="space_list swiper_list photo_review">  <div class="flex_wrap column3 fluid">        </div> </div> <div class="rbox_info_base"><a href="../space/3393" class="space_info">olive studio</a>       <span class="time_info">2017.01.18. 17:57:17</span></div> <span class="rate_area">  <span class="blind">평점</span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>     <span class="rate active"><em class="sp_icon ico_star_off">5점</em></span>   </span> </div>         <div class="rbox_reply">   <p class="p_tit_reply"><em>올리브 스튜디오</em>님의 댓글</p>   <p class="p_review">저희 스튜디오에서 좋은 시간이 되셨다니 정말 기쁘네요^^ 올 한해 즐겁게 시작하셨으니 좋은일들이 많이 있으시길 바랄께요!! 좋은 후기도 남겨주시고 감사합니다.^^</p>   <div class="rbox_info_base"><p class="time_info">2017.01.20. 20:40:21</p></div>  </div>    </li></ul>

                        <div class="paging"><a href="javascript:void(0);" class="btn_prev_list_end" data-page="-4"><i class="sp_icon ico_prev_list">이전목록 5개로 이동</i></a><a href="javascript:void(0);" class="btn_prev_list" data-page="0"><i class="sp_icon ico_prev_list">이전페이지로 이동</i></a><a href="javascript:void(0);" class="num" data-page="1">1</a><a href="javascript:void(0);" class="btn_next_list" data-page="0"><i class="sp_icon ico_next_list">다음 페이지로 이동</i></a><a href="javascript:void(0);" class="btn_next_list_end" data-page="6"><i class="sp_icon ico_next_list">다음목록 5개로 이동</i></a></div>
                    </div>

                    <div class="review_box no_data _review_empty" style="display:none;">
                        <div class="center_wrap">
                            <div class="center txt_result">
                                <p class="p_result">등록된 사진 후기가 아직 없습니다.</p>
                            </div>
                        </div>
                    </div>

                    <!-- [D] 로딩 아이콘 -->
                    <span class="loading" style="display:none;position:absolute;margin-top:0;"><i class="ico_loading sp_icon"></i></span>
                </div>
            </div>
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
                    <li class="business_info"><a href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2015303010330200027&amp;area1=&amp;area2=&amp;currpage=1&amp;searchKey=04&amp;searchVal=2308103117&amp;stdate=&amp;enddate=" target="_blank" title="새창열림" class="nclk" _nclk="fot.info">사업자등록정보</a></li>
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
</body>
</html>
    <script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/jqueryScrollPlugins.min.js" type="text/javascript"></script>
    <script src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180119094222/min/host.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var today = "20180212";
    var viewerDomain = "http://m.photoviewer.naver.com/";
    var apiDomain = "api.spacecloud.kr/photo";
</script>