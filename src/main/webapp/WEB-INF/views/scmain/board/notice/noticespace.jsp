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
<meta property="og:url" content="https://spacecloud.kr/board/notice" />
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
<div class="wrap main">
    
<header class="header header_sub">
    <h1><a href="javascript:void(0);" class="logo"><i class="sp_icon ico_main_logo">SpaceCloud</i></a></h1>
    <div class="page_title"><h2>공지사항 </h2></div>
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
										

									</ul>
								</div>
							</li>
						</ul>
						<div class="service_menu">
							
								<a href="/auth/login" id="_login" class="nclk" _nclk="mym.flogin">로그인</a>
							
							
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
	    <section id="contents" class="contents search" role="main">
	        <div class="box_search">
	            <div class="box_inner">
	                <div class="half_search">
	                    <div class="flex_wrap">
							<dl class="flex_box">
							</dl>
							<dl class="flex_box">
								<dt class="flex tit">
									<label for="notice_txt">공지사항 검색</label>
								</dt>
								<dd class="flex">
									<div class="input">
										<input type="text" id="notice_txt" class="_searchText" placeholder="검색어를 입력해주세요." value="">
									</div>
								</dd>
							</dl>
						</div>
	                    <a href="javascript:void(0);" class="_search btn btn_full btn_default"><i class="sp_icon ico_btn_search"></i>검색</a>
	                </div>
	            </div>
	        </div>
	        <table class="table_toggle table_help">
	            <caption class="blind">공지사항 검색결과 목록</caption>
	            <colgroup>
	                <col>
	                <col>
	            </colgroup>
	            <tbody>
	                
	                    <tr data-id="392">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">[COVER WEEK 이벤트] 댄서들에게 공감투표하고 연습실 선물하세요!</p>
	                                <span class="date">2018-02-01</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="392">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2018-02-01</span><p style="text-align: center; " align="center"><img src="https://scloud.pstatic.net/20180201_72/15174532407958Pyd8_PNG/%C4%BF%B9%F6%C0%A7%C5%A9_%C5%F5%C7%A5_%B9%E8%C6%F7%C0%CC%B9%CC%C1%F6.png" title="%20%20%20%20%20%20%20%20_%20%20%20%20_%20%20%20%20%20%20%20%20%20%20.png"></p><p style="text-align: center; " align="center"> </p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b><span style="font-size: 14pt;">SpaceCloud X 커버댄스그룹 </span></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"> </span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b>28개 댄스팀 150명의 크리에이터가 신청한 </b></span><b style="font-size: 11pt;">커버위크 (COVER WEEK) </b></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b>여러분의 공감투표로 댄서에게 연습실을 선물해주세요</b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b>*</b></span><span style="font-size: 11pt;">스페이스클라우드가 도시를 유쾌한 에너지로 채우는 </span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">다양한 댄스 그룹, 커버그룹, 연습생 커뮤니티를 </span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">응원하며</span><span style="font-size: 11pt;">커버위크를 진행합니다. </span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"> </span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;"><a href="http://tv.naver.com/v/2643067" target="_self"><b><span style="color: rgb(120, 32, 185);">커버위크 티저영상 보러가기</span></b></a></span></p><div><span style="font-size: 11pt;"><br></span></div><p align="center" style="text-align: center;"><span style="font-size: 14pt;"> - </span> </p><p align="center" style="text-align: center;"> </p><p align="center" style="text-align: center;"><span style="font-size: 18.6667px;"><b><온라인 공감투표란 무엇인가요?></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><span style="font-size: 11pt;">커버 위크는 댄스 크리에이터를 위한 이벤트입니다. </span></span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">이벤트 페이지에서 댄서들의 영상에 좋아요로 </span><span style="font-size: 14.6667px;">투표해주시면 </span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">상위 10팀에게<font color="#454545" face=".Apple SD Gothic NeoI"> 스페이스클라우드에 제휴된 </font></span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;"><font color="#454545" face=".Apple SD Gothic NeoI">연습실 30곳을 자유롭게 이용하는 크레딧을 선물합니다. </font></span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;"> </span></p><p align="center" style="text-align: center;"><span style="font-size: 18.6667px;"><b><누구나 투표할 수 있습니다.> </b></span></p><p align="center" style="text-align: center;"><span style="font-size: 18.6667px;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">로그인 없이 페이지에 방문하여</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">응원하고 싶은 댄서에게 하트 누르면 </span><span style="font-size: 11pt;">투표 완료!  </span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"> </span></p><p align="center" style="text-align: center;"><span style="font-size: 18.6667px;"><b><투표 기간> </b></span></p><p align="center" style="text-align: center;"><span style="font-size: 18.6667px;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">커버위크 투표기간 : 2018.2.1(목) ~ 2018.2.11(일)</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">커버위크 TOP10 발표일 : 2018 .2.12(월) </span></p><p align="center" style="text-align: center;"><a href="http://spacecloudevent.kr" target="_self"><span style="font-size: 11pt;"> </span><span style="background-color: rgb(255, 255, 255); color: rgb(99, 99, 99); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 16px;"> </span><span style="font-size: 11pt;"> </span></a></p><p align="center" style="text-align: center;"><font color="#7820b9"><span style="font-size: 11pt;"><b><a href="http://spacecloudevent.kr" target="_self">커버위크 투표화면 바로가기</a></b></span></font></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"> </span> </p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">*관련 문의는 lux@spacecloud.kr 로 해주세요</span></p><div><span style="font-size: 14.6667px;"><br></span></div><p style="text-align: center; " align="center"> </p><style type="text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px '.Apple SD Gothic NeoI'; color: #454545}
span.s1 {font: 12.0px 'Helvetica Neue'}
</style></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="390">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">[EVENT] 댄서들에게 연습실 공간을 지원하는 커버위크가 진행됩니다!</p>
	                                <span class="date">2018-01-17</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="390">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2018-01-17</span><p align="center" style="text-align: center;"><img src="https://scloud.pstatic.net/20180117_184/1516166686833uyj9c_PNG/%C4%BF%B9%F6%C0%A7%C5%A9_%B8%DE%C0%CE_%C0%CC%B9%CC%C1%F6.png" title="%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.png">&nbsp;</p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b><span style="font-size: 14pt;">SpaceCloud X 커버댄스그룹&nbsp;</span></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">스페이스클라우드가 도시를 유쾌한 에너지로 채우는&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">다양한 댄스 그룹, 커버그룹, 연습생 커뮤니티를 응원하며</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">연습실 공간을 지원하는 프로젝트&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><b>커버위크 (COVER WEEK)</b>를 진행합니다!</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span>&nbsp;&nbsp;&nbsp;</p><p align="center" style="text-align: center;"><span style="font-size: 14pt;">&nbsp;-&nbsp;</span>&nbsp;</p><p align="center" style="text-align: center;">&nbsp;</p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b>1. 커버위크 (COVER WEEK) 이벤트 소개&nbsp;</b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><span style="font-size: 11pt;">커버 위크는 댄스 크리에이터를 위한 이벤트입니다.&nbsp;</span></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><span style="font-size: 11pt;">일정 기간 내 접수된 커버 댄서들의 영상을&nbsp;</span></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><span style="font-size: 11pt;">스페이스클라우드를 통해 홍보하고,&nbsp;</span></span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">네티즌 공감 투표를 통해 랭킹된 상위 10 그룹에게&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">스페이스클라우드 내 제휴된 연습실 공간을 사용할 수 있는&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">크레딧 30만원을 선물합니다.&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b>2. 이벤트 대상</b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">현재 활동중인 커버 댄스 그룹, 댄스 커뮤니티, 1인 댄서</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b>3. 커버위크 주요 일정</b></span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b><br></b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">*커버위크 신청기간 : 2018.1.17(수) ~ 2018.1.31(수)</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">*커버위크 투표기간 : 2018.2.1(목) ~ 2018.2.11(일)</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">*최종 상위 20팀 발표 : 2018.2.12 (월)&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">*지급된 크레딧 사용 기간 : 2018.2.12(월) ~ 2018.3.31(토)&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(99, 99, 99); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 16px;">&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b>4. 커버위크 참여신청</b></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">커버위크 이벤트 페이지에서 자세한 내용 확인 및&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">이벤트 신청을 진행해주세요.&nbsp;&nbsp;</span>&nbsp;</p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;"><a href="http://spacecloudevent.kr/" target="_self" style=""><b><span style="color: rgb(120, 32, 185); font-size: 12pt;">&nbsp;커버위크 이벤트 페이지 바로가기 (클릭)</span></b></a></span><span style="font-size: 11pt;"><a href="http://spacecloudevent.kr/" target="_self" style=""><b><span style="color: rgb(120, 32, 185); font-size: 12pt;">&nbsp;</span></b></a></span></p><p align="center" style="text-align: center;"><span style="font-size: 11pt;">&nbsp;</span></p><p align="center" style="text-align: center;"><span style="font-size: 14.6667px;">*관련 문의는 lux@spacecloud.kr 로 해주세요</span></p><div><span style="font-size: 14.6667px;"><br></span></div></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="389">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">2018.01.16(화) 스페이스클라우드 고객센터 휴무 안내</p>
	                                <span class="date">2018-01-15</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="389">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2018-01-15</span><p>​안녕하세요.&nbsp;스페이스클라우드&nbsp;입니다.&nbsp;</p><p>2018.01.16 스페이스클라우드 워크샵으로 인하여</p><p>아래&nbsp;적힌&nbsp;시간&nbsp;동안&nbsp;고객&nbsp;문의&nbsp;업무&nbsp;(네이버톡톡,&nbsp;전화)를&nbsp;휴무합니다.</p><p>&nbsp;</p><p><b>* 휴무시간</b></p><p><b>네이버톡톡&nbsp;(스페이스클라우드&nbsp;하단&nbsp;문의하기)</b></p><p><b>2018.01.16 화요일 오후 3시&nbsp;~&nbsp;오후&nbsp;6시&nbsp;30분</b></p><p><b><br></b></p><p><b>전화&nbsp;(대표번호&nbsp;1599-4312)</b></p><p><b>2018.01.16 화요일 오후 3시&nbsp;~&nbsp;오후&nbsp;6시&nbsp;30분</b>&nbsp;</p><p>&nbsp;</p><p>해당&nbsp;시간에&nbsp;문의하기로&nbsp;질문사항&nbsp;남겨두시면, 새해 2018.01.17일&nbsp;순차적으로&nbsp;처리해드리겠습니다.</p><p>&nbsp;</p><p>감사합니다.&nbsp;</p><p>&nbsp;</p><p>새해 복 많이 받으세요!</p><p>&nbsp;</p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="387">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">원데이노마드 서포터즈 3기 모집 </p>
	                                <span class="date">2018-01-10</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="387">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2018-01-10</span><p><img src="https://scloud.pstatic.net/20180110_53/1515561030596LLLUJ_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2018-01-05_%BF%C0%C8%C4_3.54.00.png" title="%20%20%20%20%20%20%20%20%20%20%202018-01-05%20%20%20%20%20%203.54.00.png"></p><p> </p><p><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;"><b>원데이노마드 서포터즈 </b></span></p><p><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;"><b>3기를 모집합니다!</b></span> </p><p><b style="font-weight:normal;"><br></b></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:10pt;font-family:Arial;color:#252525;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">원데이노마드란, 하루(Oneday)와 노마드(Nomad)의 합성어로 일주일에 단 하루만이라도 </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:10pt;font-family:Arial;color:#252525;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">도심 속 다양한 공간에서 자유롭게 일해보자는 취지로 시작된 </span><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">스페이스클라우드의  일문화 첼린징 캠페인입니다. </span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:10pt;font-family:Arial;color:#252525;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">원데이노마드 서포터즈에게는 </span><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">3개월간 스페이스클라우드에서 제공하는 크레딧으로 </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">오피스, 코워킹 스페이스, 일하기 좋은 카페, 작업실 등 </span><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">공유 오피스 공간 중 </span><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">자신이 원하는 공간을 </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">자유롭게 </span><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">선택해 이용할 수 있는 기회가 주어집니다. </span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:10pt;font-family:Arial;color:#252525;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">블로그와 SNS를 운영하는 사람이라면 </span><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">누구나 신청이 가능하고,</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:10pt;font-family:Arial;color:#252525;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">자신이 이용하고 싶은 공간을 사용한 후 </span><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">리뷰로 </span><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">원데이노마드 라이프를 공유하는 활동을 하게 됩니다. </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">1월 30일(화)까지 모집기간이니, </span><span style="background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-family: Arial; font-size: 10pt; white-space: pre-wrap;">관심 있으신 분께서는 서둘러 신청해 주세요!</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"> </p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">1. 모집 </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">모집대상 : 블로그, SNS를 운영하는 사람이라면 누구나</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">모집인원 : 20명</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">모집기간 : 2018년 1월 10일(수) - 30일(화) 3주간</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">2. 신청 및 발표</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">신청방법 : 하단 신청하기 버튼 클릭</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">발표 : 2018년 2월 1일(목) 개별연락</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">문의 : 담당자 </span><a href="mailto:ocean@spacecloud.kr" style="text-decoration:none;"><span style="font-size: 10pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: underline; vertical-align: baseline; white-space: pre-wrap;">ocean@spacecloud.kr</span></a><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">   </span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">3. 활동안내 </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">활동기간 : 3개월(2017년 2월 5일(월) - 4월 30일(월))</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">활동지역 : 스페이스클라우드가 제휴한 원데이노마드 장소 중 자유롭게 선택</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">오리엔테이션 : 2월 5일(월) 저녁 7시 서울 성동구 성수동 (* 참가 필수)</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">주요 활동: 월 1회 자신이 원하는 공유 오피스 공간을 선택해 원데이노마드를 실천, 블로그 리뷰로 공유하는 일</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8; text-align: justify;"><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">자세한 내용은 원데이노마드 캠페인 사이트 </span><a href="http://onedaynomad.kr/" style="text-decoration-line: none;"><span style="font-size: 10pt; font-family: Arial; color: rgb(109, 59, 255); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; text-decoration-line: underline; vertical-align: baseline; white-space: pre-wrap;">OnedayNomad.kr</span></a><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="color: rgb(109, 59, 255);"> </span>에서 확인 가능합니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8; text-align: justify;"><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">원데이노마드 서포터즈 지원을 원하시는 분들은 하단의 신청하기 버튼을 눌러주세요!</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8; text-align: justify;"><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8; text-align: justify;"><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8; text-align: justify;"> </p><div style="text-align: center;" align="center"><a href="http://onedaynomad.kr/Supporters" target="_self" style="font-family: Arial; font-size: 10pt; white-space: pre-wrap;"><img src="https://scloud.pstatic.net/20180110_136/1515561495593igURW_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2018-01-10_%BF%C0%C8%C4_2.05.52.png" title="%20%20%20%20%20%20%20%20%20%20%202018-01-10%20%20%20%20%20%202.05.52.png"></a></div><span style="font-size: 10pt; font-family: Arial; color: rgb(37, 37, 37); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span><p> </p><p> </p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="385">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">CCTV 설치 및 운영에 대한 스페이스클라우드의 권고안을 확인해주세요.</p>
	                                <span class="date">2018-01-02</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="385">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2018-01-02</span><p>안녕하세요, 이용자 여러분.</p><p>스페이스클라우드 팀 입니다.</p><p>​</p><p>지난 1일, 뉴스 매체를 통해 파티룸 내 CCTV 촬영 갈등 이슈 보도가 있었습니다. </p><p>이용자의 개인정보보호 이슈와 CCTV 설치 목적 및 위치에 대한 갈등이 제기 되었고, </p><p>해당 건은 경찰 조사 중에 있습니다. 스페이스클라우드 운영팀은 함께 전후사정을</p><p>검토 중이며 사법기관의 판단을 존중하며 후속 대응안을 마련하고 있습니다.</p><p>​</p><p>사건의 결과와 상관없이 스페이스클라우드는 이번 일을 통하여</p><p>30만명 이상의 사용자가 이용하고 있는 서비스의 책임 기관으로서</p><p>개인정보를 엄중하게 보호하고 운영해야 할 의무를 갖고 있음을 다시 한번 숙지하게 되었습니다.</p><p>​</p><p>범죄 예방, 시설 보호, 안전을 위해 설치되는 CCTV에 관련해서</p><p>이용자분들이 보다 신뢰하고 파티룸 및 모임장소를 이용하실 수 있도록</p><p>호스트님들에게 아래와 같이 권고안을 공지하였고 해당 내용을 호스트 운영정책 조항에도 추가할 예정입니다.</p><p>​</p><p>​</p><p><b>영상정보처리기기 설치 및 운영에 대한 권고사항 (운영정책 적용) </b></p><p>​</p><p><b>1. 스페이스클라우드에 공간을 유통하는 운영자 (이하 호스트)의 경우 범죄 예방, 화재 예방, 고객 안전 및 시설 보호를 위하여 CCTV 및 영상 정보 처리 기기를 설치-운영할 수 있습니다.</b></p><p>​</p><p><b>2. 위의 목적으로 영상정보처리기기를 설치 및 운영한 경우 아래의 내용을 반드시 공간 현장에 안내문으로 부착하여 고객이 인지하도록 하여야 합니다.</b></p><p>1) 범죄 예방, 시설 보호, 화재 예방 등 안전의 목적으로 실내에 "CCTV가 설치되어 있는 사실 명기"</p><p>2) CCTV의 촬영 시간 명기</p><p>3) CCTV의 설치 장소, 설치 대수 표기</p><p>4) 실내의 경우 CCTV 카메라 위치 및 '촬영중 부착문' 표기 ( * 카메라 위장은 이용자에게 '불법 촬영'으로 판단될 수 있음. 카메라 옆에 CCTV 촬영중 부착 필수)   </p><p>5) CCTV 관리 책임자 및 연락처 표기</p><p>6) 영상물 보관기간, 보관장소 및 처리 방법 표기 (* 통상 공공기관 기준으로 30일 자동보관 후 폐기함을 명기하고 있습니다) </p><p>7) 스페이스클라우드 온라인 예약 페이지에 CCTV 및 영상정보처리기기 설치 명기 </p><p>​</p><p><b>3. 위 2번 사항의 1)~7)가이드에 준수 되지 않은 경우는 개인정보보호법 위반으로 스페이스클라우드에서는 아래와 같은 서비스 제재가 이어집니다.</b></p><p>1) 스페이스클라우드에서 해당 공간 즉시 미노출 및 해당 업체 재등록 불가</p><p>2) 해당 게스트에 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</p><p>3) 해당 공간을 예약한 스페이스클라우드 이용 예정자에게 위반 상황 통지 및 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</p><p>​</p><p>​</p><p>스페이스클라우드를 믿고 공간을 예약하시는 이용자 분들을 위하여</p><p>스페이스클라우드는 개인정보를 소중하고 성실하게 책임져드릴 의무가 있습니다.</p><p>또한 신뢰 받는 공간 비즈니스를 위한 호스트님의 운영을 위해서도 이는 반드시 필요한 부분 입니다.</p><p>​</p><p>본 운영정책의 적용은 권고기간 10일을 거쳐 <b>2018년 1월 13일부터 적용될 예정이오니</b></p><p>이용자 분들도 장소를 예약 및 이용하실 때 참고하시길 바랍니다.</p><p>​</p><p>머물기 좋은 도시 공간을 연결해드린다는 스페이스클라우드의 미션에 책임을 갖고 </p><p>스페이스클라우드에 등록 된 공간 호스트 님들과 함께 협력해서</p><p>신뢰 받는 공간 서비스 해나갈 수 있도록 개선해 나가겠습니다. </p><p>​</p><p>감사합니다.</p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="383">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">2017년 스페이스클라우드의 한 해를 돌아보는 리얼 리포트를 공유합니다.</p>
	                                <span class="date">2017-12-29</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="383">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2017-12-29</span><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><img src="https://scloud.pstatic.net/20171229_244/1514530642013eEH09_PNG/2017_%BD%BA%C5%AC_%B8%AE%BE%F3%B8%AE%C6%F7%C6%AE_%C4%BF%B9%F6.png" title="2017%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.png"><br style="clear:both;"> </span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"> </span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);">안녕하세요. 머물고 싶은 도시를 담는 <br></span><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);">공간공유 플랫폼 스페이스클라우드 입니다.</span></p><div class="autosourcing-stub-extra" style="position: absolute; opacity: 1; zoom: 1;"></div><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"></span><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"></span></p><p> </p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">스페이스클라우드는 '공간 공유'를 통해 </span></p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">도심 속 다양한 공간들을 발굴하여 연결하고,</span> </p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">더욱 쉽게 예약부터 이용 경험까지 </span></p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">공유하는 서비스로 발전하고 있는데요.</span></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);"><br></span></font></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);">2017년에는 특별히 2030대 강연, 모임, 파티, </span></font></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);">워크숍 기획자들부터 </span></font><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">1인 프리랜서, 크리에이터 그룹에게 </span></p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">사랑받은 한 해였던 것 같습니다.</span></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);"><br></span></font></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);">스페이스클라우드 서비스를 이용해 주신 모든 분들께 </span></font></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);">감사의 말씀을 드리며, </span></font></p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">2017년 리얼리포트를 통해 </span></p><p><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(37, 37, 37); font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei;">스페이스클라우드의 한 해 스토리를 공유합니다!</span></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);"><br></span></font></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255);"><br></span></font></p><p><font color="#252525" face="나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei"><span style="font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(120, 32, 185);">> 미리보기</span></font></p><p> </p><p><b><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="background-color: inherit; color: rgb(60, 63, 69); font-size: 12pt;">리얼리포트 1. 모임장소부터 코워킹스페이스까지, </span><br></span><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="background-color: inherit;"></span></span></span><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="background-color: inherit; color: rgb(60, 63, 69); font-size: 12pt;">'</span></span></span><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="background-color: inherit; color: rgb(60, 63, 69); font-size: 12pt;">라이프스타일을 챌린징하는' 2030대의 공간 서비스</span></span></span><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="background-color: inherit; color: rgb(60, 63, 69); font-size: 12pt;">로 성장하고 있어요. </span></span></span><span style="font-size: 12pt;"> </span></b></p><p><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="font-weight: 600; background-color: inherit;"><img src="https://scloud.pstatic.net/20171229_180/1514530791215RbisF_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2017-12-29_%BF%C0%C0%FC_9.10.30.png" title="%20%20%20%20%20%20%20%20%20%20_2017-12-29_%20%20%20%20%20_9.10.30.png"><br style="clear:both;"><br></span></span></span></p><p><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="font-weight: 600; background-color: inherit;"><br></span></span></span></p><p><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;="" color:="" rgb(37,="" 37,="" 37);"=""><b><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit; font-size: 12pt;">리얼리포트 2. 공간 창업가의 No.1 파트너</span><br></span><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit; font-size: 12pt;">1년간 3000개의 장소, 7000개의 신규공간이 등록 되었어요! </span></span></b></span></span></span></span></p><div class="autosourcing-stub-extra" style="position: absolute; opacity: 1; zoom: 1;"></div><p><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" rgb(255,="" 255,="" 255);="" color:="" rgb(37,="" 37,="" 37);="" font-size:="" 16px;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei;"><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span class="se_ff_sans-serif" style="background-color: inherit;"><span style="font-weight: 600; background-color: inherit;"></span></span></span></span><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei;"></span></span></span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"> </span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><img src="https://scloud.pstatic.net/20171229_196/15145308339551biaP_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2017-12-29_%BF%C0%C8%C4_4.00.05.png" title="%20%20%20%20%20%20%20%20%20%20%202017-12-29%20%20%20%20%20%204.00.05.png"><br style="clear:both;"> </span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"> </span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><span style="font-size: 15.8333px; color: rgb(0, 0, 0);"><b><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit; font-size: 12pt;">리얼리포트 3. 공유공간을 활용한 소셜임팩트 프로젝트,  </span><br></span><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit; font-size: 12pt;">'스페이스 커넥팅'을 통해 </span></span></span></span><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit;"><span style="background-color: inherit; font-size: 12pt;">180팀, 1200+명이 공간지원의 혜택을 얻었어요.</span></span></span></span></span></b></span></span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><span style="font-weight: 600; font-size: 15.8333px; color: rgb(0, 0, 0);"><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit;"><u style="background-color: inherit;"><img src="https://scloud.pstatic.net/20171229_217/1514530866592H7qoe_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2017-12-29_%BF%C0%C0%FC_10.28.42.png" title="%20%20%20%20%20%20%20%20%20%20_2017-12-29_%20%20%20%20%20_10.28.42.png"><br style="clear:both;"></u></span></span></span></span></span><span style="font-size: 16px;"><span class="se_ff_nanumgothic se_fs_T2" style="font-size: 19px; background-color: inherit; color: rgb(0, 76, 128);"><sub style=""><span style="background-color: inherit; color: rgb(0, 0, 0);"><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><b><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit; font-size: 12pt;"><br></span></span></b></span></span></span></sub></span></span></span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><span style="font-size: 16px;"><span class="se_ff_nanumgothic se_fs_T2" style="font-size: 19px; background-color: inherit; color: rgb(0, 76, 128);"><sub style=""><span style="background-color: inherit; color: rgb(0, 0, 0);"><span class="se_ff_sans-serif" style="" malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><b><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit; font-size: 12pt;">리얼리포트 4. 스타트업과 협업으로 </span><br></span><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit; font-size: 12pt;">협력적인, 더 나은 도시 라이프를 위한 서비스를 제공해드리고 있어요. </span></span></b></span></span></span></sub></span></span><span style="font-weight: 600; font-size: 15.8333px; color: rgb(0, 0, 0);"><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit;"><u style="background-color: inherit;"><br></u></span></span></span></span></span></span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><span style="font-weight: 600; font-size: 16px;"><span class="se_ff_nanumgothic se_fs_T2" style="font-size: 19px; background-color: inherit; color: rgb(0, 76, 128);"><sub><span style="background-color: inherit; color: rgb(0, 0, 0);"><span class="se_ff_sans-serif" style="font-family: " malgun="" gothic",="" "맑은="" 고딕",="" "helvetica="" neue",="" helvetica,="" applesdgothicneo,="" sans-serif,="" simhei;="" background-color:="" inherit;"=""><span style="background-color: inherit;"><span class="se_ff_sans-serif" style="background-color: inherit; color: rgb(37, 37, 37);"><span style="background-color: inherit;"><br></span></span></span></span></span></sub></span></span></span></p><p><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"> </span></p><p> </p><div style="text-align: center;" align="center"><a href="https://blog.naver.com/spacecloud/221173547909" target="_self"><img src="https://scloud.pstatic.net/20171229_12/15145309335448ue4N_PNG/%B8%AE%BE%F3%B8%AE%C6%F7%C6%AE_%BA%B8%B7%AF%B0%A1%B1%E2.png" title="%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.png"></a></div><br><p> </p><div><span class="se_ff_nanumgothic se_fs_T4" style="font-family: 나눔고딕, nanumgothic, se_NanumGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 13px; background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);"><br></span></div><div class="autosourcing-stub-extra" style="position: absolute; opacity: 1; zoom: 1;"></div></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="381">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">새해 인사와 신정 휴무 안내드립니다.</p>
	                                <span class="date">2017-12-29</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="381">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2017-12-29</span><p style="text-align: center; " align="center"><img src="https://scloud.pstatic.net/20171229_103/1514525193329YTygT_PNG/2018_%BB%F5%C7%D8%C0%CE%BB%E7_%C3%D6%C1%BE.png" title="2018_%20%20%20%20%20%20%20%20%20_%20%20%20%20%20.png"></p><p style="text-align: center; " align="center"><b><br></b></p><p style="text-align: center; " align="center"><span style="color: rgb(69, 69, 69); font-family: NanumBarunGothic; font-size: 14.6667px; background-color: rgb(255, 255, 255);">ㅡ</span> </p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center">Happy New Year!</p><p style="text-align: center; " align="center">2017년 한 해 동안 스페이스클라우드와 </p><p style="text-align: center; " align="center">함께 해주신 모든 분들께 진심으로 감사드립니다.</p><p style="text-align: center; " align="center"> 2018년 황금 개띠의 해, 무술년에도</p><p style="text-align: center; " align="center">머물기 좋은 도시를 위한 </p><p style="text-align: center; " align="center">공유공간들을 발굴하고</p><p style="text-align: center; " align="center">연결하는 서비스로 함께 하겠습니다.</p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center">새해 복 많이 받으세요! </p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center"><span style="color: rgb(69, 69, 69); font-family: NanumBarunGothic; font-size: 14.6667px; background-color: rgb(255, 255, 255);">ㅡ</span> </p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center">스페이스클라우드 운영팀은</p><p style="text-align: center; " align="center">2018년 1월 1일(월) 신정까지 휴무이며,</p><p style="text-align: center; " align="center">1월 2일(화)부터 정상 운영됩니다.</p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center">공간 예약/결제 관련 문의는</p><p style="text-align: center; " align="center">1:1 고객센터에 남겨주시면</p><p style="text-align: center; " align="center">1월 2일(화)에 순차적으로 답변 드리겠습니다.</p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center">* 1:1 고객센터 : <a href="https://goo.gl/iUiFKk">https://goo.gl/iUiFKk</a></p><p style="text-align: center; " align="center"> </p><p style="text-align: center; " align="center">감사합니다!</p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="380">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">2017.12.29 고객센터 일부시간 휴무 안내</p>
	                                <span class="date">2017-12-29</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="380">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2017-12-29</span><p>​안녕하세요.&nbsp;스페이스클라우드&nbsp;입니다.&nbsp;</p><p>2017.12.29 스페이스클라우드&nbsp;종무식으로 인하여&nbsp;</p><p>아래&nbsp;적힌&nbsp;시간&nbsp;동안&nbsp;고객&nbsp;문의&nbsp;업무&nbsp;(네이버톡톡,&nbsp;전화)를&nbsp;휴무합니다.</p><p>&nbsp;</p><p><b>* 휴무시간</b></p><p><b>네이버톡톡&nbsp;(스페이스클라우드&nbsp;하단&nbsp;문의하기)</b></p><p><b>2017.12.29 금요일 오후 4시&nbsp;~&nbsp;오후&nbsp;6시&nbsp;30분</b></p><p><b><br></b></p><p><b>전화&nbsp;(대표번호&nbsp;1599-4312)</b></p><p><b>2017.12.29 금요일 오후 4시&nbsp;~&nbsp;오후&nbsp;6시&nbsp;30분</b>&nbsp;</p><p>&nbsp;</p><p>해당&nbsp;시간에&nbsp;문의하기로&nbsp;질문사항&nbsp;남겨두시면, 새해 2018.01.02일&nbsp;순차적으로&nbsp;처리해드리겠습니다.</p><p>&nbsp;</p><p>감사합니다.&nbsp;</p><p>&nbsp;</p><p>새해 복 많이 받으세요!&nbsp;</p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="379">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">크리스마스 인사와 휴무 안내 드립니다.</p>
	                                <span class="date">2017-12-22</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="379">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2017-12-22</span><p style="text-align: center;" align="center"><img src="https://scloud.pstatic.net/20171222_101/15139122335848TefA_PNG/2017_%BD%BA%C5%AC_%BC%BA%C5%BA%C0%FD%C0%CE%BB%E7_%C3%D6%C1%BE.png" title="2017_%20%20%20%20%20_%20%20%20%20%20%20%20%20%20%20%20%20%20%20_%20%20%20%20%20.png"></p><p style="text-align: center;" align="center"> </p><p style="text-align: center;" align="center"> </p><p class="p1" style="text-align: center;" align="center">Merry Christmas!</p><p class="p2" style="text-align: center;" align="center"> </p><p class="p2" style="text-align: center;" align="center">ㅡ</p><p class="p2" style="text-align: center;" align="center"> </p><p class="p2" style="text-align: center;" align="center">작은<span class="s1"> </span>주머니<span class="s1"> </span>속이<span class="s1">, </span>따뜻한<span class="s1"> </span>커피<span class="s1"> </span>한<span class="s1"> </span>잔이<span class="s1"><span class="Apple-converted-space"> </span></span></p><p class="p2" style="text-align: center;" align="center">소중하게<span class="s1"> </span>느껴지는<span class="s1"> </span>겨울입니다<span class="s1">. </span><span class="s2">⛄️</span></p><p class="p2" style="text-align: center;" align="center">바깥활동이 어려울만큼 추운 계절이지만</p><p class="p2" style="text-align: center;" align="center">문득 겨울이<span class="s1"> </span>추운<span class="s1"> </span>이유가<span class="s1"><span class="Apple-converted-space"> </span></span></p><p class="p2" style="text-align: center;" align="center">따뜻한 공간<span class="s1"> </span>안에서</p><p class="p2" style="text-align: center;" align="center">조용히 한 해를 돌아보면서</p><p class="p2" style="text-align: center;" align="center">연락이 뜸했던 지인들에게 안부를 묻고<span class="s1"><span class="Apple-converted-space"> </span></span></p><p class="p2" style="text-align: center;" align="center">맛있는 음식을 나누며 의미있는 맺음달을<span class="Apple-converted-space"> </span></p><p class="p2" style="text-align: center;" align="center">보내라는 의미가 아닐까 싶어요.</p><p class="p1" style="text-align: center;" align="center"> </p><p class="p1" style="text-align: center;" align="center">ㅡ</p><p class="p2" style="text-align: center;" align="center"> </p><p class="p2" style="text-align: center;" align="center">요리하기<span class="s1"> </span>좋은<span class="s1"> </span>공간<span class="s1">, </span>함께<span class="s1"> </span>모이기<span class="s1"> </span>좋은<span class="s1"> </span>공간<span class="s1">,<span class="Apple-converted-space"> </span></span></p><p class="p2" style="text-align: center;" align="center">조용히<span class="s1"> </span>재충전하기<span class="s1"> </span>좋은<span class="s1"> </span>공간<span class="s1"> </span><span class="s2">☕️</span><span class="s1">  </span>그<span class="s1"> </span>어디든<span class="s1"><span class="Apple-converted-space"> </span></span></p><p class="p2" style="text-align: center;" align="center">당신의<span class="s1"> </span>가장<span class="s1"> </span>행복한<span class="s1"> </span>공간에서<span class="s1"> </span>즐거운<span class="s1"> </span>크리스마스<span class="s1"> </span>보내세요<span class="s1">!</span></p><p class="p1" style="text-align: center;" align="center"> </p><p class="p1" style="text-align: center;" align="center">ㅡ</p><p class="p1" style="text-align: center;" align="center"> </p><p class="p2" style="text-align: center;" align="center">스페이스클라우드<span class="s1"> </span>운영팀은<span class="s1"> </span>크리스마스<span class="s1"> </span>휴무<span class="s1"> </span>이후</p><p class="p2" style="text-align: center;" align="center"><span class="s1">26</span>일<span class="s1">(</span>화<span class="s1">)</span>부터<span class="s1"> </span>정상<span class="s1"> </span>운영됩니다<span class="s1">.</span></p><p class="p2" style="text-align: center; " align="center">공간<span class="s1"> </span>예약<span class="s1">/</span>결제<span class="s1"> </span>서비스<span class="s1"> </span>이슈는<span class="s1"> 1:1 </span>네이버<span class="s1"> </span>톡톡으로</p><p>




<style type="text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica; color: #454545}
p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'Apple SD Gothic Neo'; color: #454545}
span.s1 {font: 12.0px Helvetica}
span.s2 {font: 12.0px 'Apple Color Emoji'}
span.s3 {font: 12.0px 'Apple SD Gothic Neo'}
span.s4 {color: #e4af09}
</style>





















</p><p class="p1" style="text-align: center;" align="center"><span class="s3">문의를</span> <span class="s3">남겨주시면</span>, <span class="s3">순차적으로</span> <span class="s3">답변</span> <span class="s3">드리겠습니다</span>. </p><p class="p1" style="text-align: center;" align="center">
* <span class="s3">네이버</span> <span class="s3">톡톡</span>: <span class="s4"><a href="https://goo.gl/iUiFKk">https://goo.gl/iUiFKk</a></span></p><p class="p1" style="text-align: center;" align="center"> </p><p style="text-align: center;" align="center"> </p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	                    <tr data-id="376">
	                        <td class="subject">공지사항</td>
	                        <td class="td_question">
	                            <a href="javascript:void(0);" class="p_view_detail">
	                                <p class="p_question">[이벤트] 12월을 맞아 인디뮤지션의 연말 공연 티켓을 선물합니다. </p>
	                                <span class="date">2017-12-08</span>
	                                <i class="sp_icon ico_view_detail">상세보기</i>
	                            </a>
	                        </td>
	                    </tr>
	                    <tr class="tr_view" data-id="376">
	                        <td colspan="2">
	                            <div class="view_box">
	                                
	                                <div class="p_answer"><span class="date">2017-12-08</span><p align="center" style="text-align: center;"> </p><div style="text-align: center;"><img src="https://scloud.pstatic.net/20171208_212/1512709661045DVOeO_PNG/12%BF%F9_.png" title="12%20%20%20%20.png"><br></div><p><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 16px; color: rgb(60, 63, 69);"><br style="clear:both;"> </span></p><p align="center"><span style="font-size: 18pt;"><b>[12월 음악이 있는 하루] </b></span></p><p align="center"><span style="font-size: 18pt;"><b>스페이스클라우드 x 인디뮤지션</b></span></p><p> </p><p align="center" style="text-align: center;"><span style="font-size: 14pt;"><b><br></b></span></p><p style="text-align: center;"><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 14pt; color: rgb(60, 63, 69);">스페이스클라우드에 연결된 다섯개의 장소에서 </span></p><p style="text-align: center;"><span style="background-color: rgb(255, 255, 255); color: rgb(60, 63, 69); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 14pt;">음악이 있는 하루를 선물합니다. </span></p><p style="text-align: center;"><span style="background-color: rgb(255, 255, 255); color: rgb(60, 63, 69); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 16px;"> </span></p><p style="text-align: center;"><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 14pt; color: rgb(60, 63, 69);"><b>매력적인 5명의 뮤지션 <배드로맨스>,<생각이나서>,</b></span></p><p style="text-align: center;"><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 14pt; color: rgb(60, 63, 69);"><b><lizro><lizro><lizro><리즈로>,</lizro></lizro></lizro></b></span><b><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 14pt; color: rgb(60, 63, 69);"><인상>,<김슬기&Ovit>과 </span><span style="background-color: rgb(255, 255, 255); color: rgb(60, 63, 69); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 14pt;">함께 따뜻한 연말을 보내보세요. </span></b></p><p style="text-align: center;"><span style="background-color: rgb(255, 255, 255); color: rgb(60, 63, 69); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 16px;"> </span></p><p style="text-align: center;"><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 14pt; color: rgb(60, 63, 69);"><u>선착순 신청자에게 무료로 티켓을 선물합니다. </u></span></p><div align="center" style="text-align: center;"><p align="center"><span style="font-size: 14pt;">  </span></p><p align="center"> </p><p align="center"><span style="font-size: 14pt;"> - </span> </p><p align="center"> </p><p align="center"><span style="font-size: 14pt;"><b>1. 이벤트 대상</b></span></p><p align="center"><span style="font-size: 18.6667px;">스페이스클라우드 회원</span></p><p align="center"> </p><p align="center"><span style="font-size: 14pt;"><b>2. 참여 기간 & 응모 방법</b></span></p><p align="center"><span style="font-size: 14pt;">* 참여기간 : 12/8(금) ~ 12/22 (금)</span></p><p align="center"><span style="font-size: 14pt;">* 응모방법 : </span><span style="font-size: 14pt;">뮤지션 별 신청 기간 및 </span></p><p align="center"><span style="font-size: 14pt;">이벤트 선정 안내가 상이합니다. </span></p><p align="center"><span style="font-size: 14pt;">아래의 버튼을 통해 자세한 내용 확인 및 <br>이벤트를 신청해주세요.  </span><span style="font-size: 11pt;"> </span> </p><p align="center"> </p><p align="center"><br class="Apple-interchange-newline"><a href="http://spacecloudevent.kr/music" target="_self"><img src="https://scloud.pstatic.net/20171127_150/15117629516970HUsr_PNG/%BD%C5%C3%BB%C7%CF%B1%E2%B9%F6%C6%B0.png" title="%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.png" style="color: rgb(0, 0, 238); font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; font-size: 16px; text-align: -webkit-left; background-color: rgb(255, 255, 255);"></a> </p><p align="center"> </p><p align="center"> </p><p align="center"><span style="font-size: 14.6667px;">*관련 문의는 lux@spacecloud.kr 로 해주세요</span></p></div><p align="center" style="text-align: center;"> </p><p><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 16px; color: rgb(60, 63, 69);"> </span></p><p><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 16px; color: rgb(60, 63, 69);"> </span></p><p><span class="se_ff_nanumbarungothic" style="font-family: 나눔바른고딕, nanumbarungothic, se_NanumBarunGothic, AppleSDGothicNeo, sans-serif, simhei; background-color: rgb(255, 255, 255); font-size: 16px; color: rgb(60, 63, 69);"> </span></p><p> </p><p> </p><p align="left"> </p></div>
	                            </div>
	                        </td>
	                    </tr>
	                
	            </tbody>
	        </table>
	        
	        <div class="paging">
	            
	                <a href="javascript:void(0);" class="btn_prev_list"><i class="sp_icon ico_prev_list">이전목록 10개로 이동</i></a><a href=javascript:void(0); class="num active">1</a>
<a href="/board/notice?page=2" class="num">2</a>
<a href="/board/notice?page=3" class="num">3</a>
<a href="/board/notice?page=4" class="num">4</a>
<a href="javascript:void(0);" class="btn_next_list"><i class="sp_icon ico_next_list">다음목록 10개로 이동</i></a>

	            
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
</body>
</html>
<script type="text/javascript">
	var imageDomain = 'https://scloud.pstatic.net';
    function toggleShowArticle(evt) {

        if ($(evt.target).is("a._file")) {
            return;
        }

		if ($(evt.currentTarget).is("tr.tr_view")) {
			return;
		}

        var arrTr = $('table.table_toggle tr');

        jQuery.each(arrTr, function(indexInArray, obj) {
            var e = jQuery(obj);
            if (obj != evt.currentTarget && e.hasClass("tr_active")) {
                e.removeClass("tr_active");
            }
        });

        var elem = jQuery(evt.currentTarget);
        if (elem.hasClass("tr_active")) {
            elem.removeClass("tr_active");
        } else {
            window.location.hash = elem.data("id");
            elem.addClass("tr_active");
        }
    }

    function search() {
        var category = $('#category').val();
        var elSearch = $('._searchText');
        var searchText = elSearch.val();
        if (elSearch.attr("placeholder") == elSearch.val()) {
            searchText = "";
        }

        window.location = window.location.pathname+"?category="+category+"&search="+searchText;
    }


	function showBoardItem() {
		if (window.location.hash != null && window.location.hash != "") {
			var id = window.location.hash.replace(/#|&/ig,'').replace('layer=drawer','');
			if (id) {
				$('table.table_toggle tr.tr_active').removeClass('tr_active');
				var elem = $('table.table_toggle tr[data-id='+id+']');
				if (elem != null && elem.length > 0) {
					elem.addClass("tr_active");
					$('html, body').animate({
						scrollTop: elem.offset().top-100
					}, 500);
				}
			}
		}
	}

	$(document).ready($.proxy(function(){
		$('#content_wraper').css("min-height", $(document).outerHeight() - $('footer').outerHeight())
		$('table.table_toggle tr:not(.tr_view)').on('click', $.proxy(toggleShowArticle, document));
		$('a._search').on('click', $.proxy(search, document));
		showBoardItem();
	}, this));

	$(window).on('hashchange', showBoardItem);

	$('.table_toggle a:not(.p_view_detail)').attr('target', '_blank');
</script>