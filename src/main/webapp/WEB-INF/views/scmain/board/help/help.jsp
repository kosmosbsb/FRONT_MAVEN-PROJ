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
<meta property="og:url" content="https://spacecloud.kr/board/help" />
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
    <div class="page_title"><h2>도움말</h2></div>
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
	                <div class="period_search">
	                    <div class="flex_wrap">
	                        <dl class="flex_box">
	                            <dt class="flex tit">
	                                <label for="category">카테고리 선택</label>
	                            </dt>
	                            <dd class="flex">
	                                <div class="row">
	                                    <div class="select">
	                                        <select name="" id="category">
	                                            <option value="">전체</option>
	                                            
	                                                
	                                                    
	                                                        <option value="MBR" >회원</option>
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                        <option value="RSVP" >예약 및 결제</option>
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                        <option value="REFND" >취소 및 환불</option>
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                        <option value="REVW" >공간이용 및 후기</option>
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                
	                                            
	                                                
	                                                    
	                                                        <option value="ETC" >기타</option>
	                                                    
	                                                
	                                            
	                                        </select>
	                                    </div>
	                                </div>
	                            </dd>
	                        </dl>
	                        <dl class="flex_box">
	                            <dt class="flex tit">
	                                <label for="space_select">도움말 검색</label>
	                            </dt>
	                            <dd class="flex">
	                                <div class="input">
	                                    <input type="text" id="space_select" class="_searchText" placeholder="검색어를 입력해주세요." value="">
	                                </div>
	                            </dd>
	                        </dl>
	                    </div>
	                    <a href="javascript:void(0);" class="_search btn btn_full btn_default"><i class="sp_icon ico_btn_search"></i>검색</a>
	                </div>
	            </div>
	        </div>
	        <table class="table_toggle table_help">
	            <caption class="blind">도움말 검색결과 목록</caption>
	            <colgroup>
	                <col>
	                <col>
	            </colgroup>
	            <tbody>
	            
	                <tr data-id="359">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								예약 변경 전, 기존에 결제한 금액은 언제 환불되나요?
								<span class="date">2017-11-13</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="359">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">변경 요청한 예약이 승인되면</span></p><p><span style="color: rgb(120, 32, 185); font-family: 나눔고딕, NanumGothic;"><b>기존 결제가 취소되며 4-5일 이내에 전액환불 처리</b></span><span style="font-family: 나눔고딕, NanumGothic;"> 됩니다.</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">변경 요청한 예약이 취소되는 경우</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">기존 결제가 유지되고 신규 결제가 전액 환불 됩니다.</span></p><p> </p><p> </p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="358">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								예약 변경을 취소/거절 당했을 경우, 신규 진행한 결제는 어떻게 되나요?
								<span class="date">2017-11-13</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="358">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">예약 변경을 취소하거나,</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">호스트님에 의해 거절 당했을 경우</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">신규로 진행한 결제는</span></p><p><span style="font-family: 나눔고딕, NanumGothic;"><span style="color: rgb(120, 32, 185);"><b>환불기준과 관계 없이 전액 환불</b></span>을 진행해드립니다.</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">환불은 약 4~5일 정도 소요 됩니다.</span></p><p> </p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="357">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								예약 변경 신청을 거절 당했어요. 다시 신청 할 수 있나요?
								<span class="date">2017-11-13</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="357">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">불가능합니다.</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">예약 변경 신청은 <b><span style="color: rgb(120, 32, 185);">결과에 관계 없이 1회만 가능</span></b>합니다.</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">호스트가 거절 / 승인 또는 게스트가 취소한 경우에는 재신청이 불가합니다.</span></p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="356">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								예약 변경을 잘못 신청했어요, 취소하고 다시 변경 신청 할 수 있나요?
								<span class="date">2017-11-13</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="356">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic; font-size: 9pt;">예약 변경 신청은 1회만 가능하고, 변경 내용에 대한 수정은 불가합니다.</span></p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="355">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								'예약 변경' 버튼이 보이지 않아요.
								<span class="date">2017-11-13</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="355">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">예약변경은 아래의 경우를 모두 충족할 때만 신청이 가능합니다.</span></p><p><b><br></b></p><p><span style="background-color: rgb(255, 255, 255); color: rgb(120, 32, 185); font-family: 나눔고딕, NanumGothic;"><b>1) 모임공간 예약인 경우</b></span></p><p><span style="background-color: rgb(255, 255, 255); color: rgb(120, 32, 185); font-family: 나눔고딕, NanumGothic;"><b>2) 승인결제 또는 바로결제 예약으로 결제까지 완료하신 경우</b></span></p><p><span style="background-color: rgb(255, 255, 255); color: rgb(120, 32, 185); font-family: 나눔고딕, NanumGothic;"><b>3) 이용일 전날 오전 11시 59분을 지나지 않은 경우</b></span></p><p><span style="background-color: rgb(255, 255, 255); color: rgb(120, 32, 185); font-family: 나눔고딕, NanumGothic;"><b>4) 해당 예약에 대해 이전에 예약 변경 신청을 하신 적이 없는 경우</b></span></p><p> </p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">위의 조건을 모두 충족하는데도 예약 변경 버튼이 보이지 않는다면,</span></p><p><a href="https://talk.naver.com/ct/wc89we" target="_self"><span style="font-family: 나눔고딕, NanumGothic;">스페이스클라우드 1:1문의</span></a><span style="font-family: 나눔고딕, NanumGothic;"> 로 예약번호와 함께 문의 주세요.</span></p><p> </p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="117">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								당일 예약은 불가능한가요?
								<span class="date">2016-07-08</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="117">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2016-07-08</span><p>예약하려는 공간이 승인예약 또는 승인결제를 사용하는 경우,</p><p>예약을 승인하고 결제하는 시간이 최대 36시간 소요되기 때문에 당일 예약 접수가 불가합니다.</p><p>최소 2일전 혹은 3일전부터 예약을 접수하실 수 있습니다.</p><p>&nbsp;</p><p>단, 바로결제를 사용하는 시간단위 공간의 경우&nbsp;<span style="line-height: 1.5;">3시간 전까지 예약이 가능합니다.</span></p><p>&nbsp;</p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="56">
	                    <td class="subject">기타</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								스페이스클라우드 이용에 문의가 있어요.
								<span class="date">2016-04-03</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="56">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2016-04-03</span><p><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">스페이스클라우드 이용에 대해 자세한 문의는,</span></p><p><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><a href="https://talk.naver.com/ct/wc89we" target="_self"><span style="color: rgb(109, 59, 255);"><b>스페이스클라우드 고객센터</b></span></a>에 남겨주세요</span><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; line-height: 1.5; color: rgb(101, 101, 101);">:)</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt;"><b><span style="color: rgb(101, 101, 101);">*고객센터 운영시간 : </span><span style="color: rgb(109, 59, 255);">오전 10:00 ~ 오후 6:00 (월~금)</span></b></span></p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="53">
	                    <td class="subject">취소 및 환불</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								예약을 취소하고 싶어요.
								<span class="date">2016-04-03</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="53">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2016-04-03</span><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">예약을 취소하시려면,</span></p><p style="line-height: 2;"><b><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">MY 메뉴 > 신청<sup>.</sup>확정 > 취소할 예약을 클릭</span></b><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">하신 다음, <b><span style="color: rgb(109, 59, 255); font-size: 11pt;">[예약 취소하기] 버튼</span></b>을 눌러주세요.</span></p><p><font color="#656565" face="나눔고딕, NanumGothic"><span style="font-size: 14.6667px; line-height: 29.3333px;">팝업이 뜨면 <b>취소 및 환불에 대한 내용을 확인</b>하시고 <b>취소 사유</b>를 입력해주시면 됩니다:)</span></font></p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="45">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								예약이 승인되었습니다. 결제는 어떻게 하나요?
								<span class="date">2016-04-02</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="45">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2016-04-02</span><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">예약이 ﻿승인되어서 결제를 하시려면,</span></p><p style="line-height: 2;"><b><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">MY 메뉴 > 신청.확정 > 결제할 예약을 클릭</span></b><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">하신 다음, 하단에 <b><span style="color: rgb(109, 59, 255); font-size: 11pt; font-family: 나눔고딕, NanumGothic;">결제수단을 선택</span><span style="color: rgb(109, 59, 255); font-size: 11pt; font-family: 나눔고딕, NanumGothic;">하신 후 </span><span style="color: rgb(109, 59, 255); font-size: 11pt; font-family: 나눔고딕, NanumGothic;">[결제하기] 버튼</span></b>을 눌러주시면 됩니다.</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">또는 SMS에서 <b><span style="color: rgb(109, 59, 255); font-size: 11pt; font-family: 나눔고딕, NanumGothic;">결제하기 링크</span></b>를 클릭하시면 됩니다.</span></p><p style="line-height: 2;"><span style="line-height: 2; font-size: 11pt; font-family: 나눔고딕, NanumGothic; color: rgb(101, 101, 101);"><b><span style="color: rgb(255, 58, 72);">12시간 이내</span></b>에 결제를 완료하셔야, 예약이 확정됩니다:) </span> </p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	                <tr data-id="42">
	                    <td class="subject">예약 및 결제</td>
	                    <td class="td_question">
	                        <a href="javascript:void(0);" class="p_view_detail">
								호스트에게 질문을 하고 싶어요.
								<span class="date">2016-04-02</span>
								<i class="sp_icon ico_view_detail">상세보기</i>
	                        </a>
	                    </td>
	                </tr>
	                <tr class="tr_view" data-id="42">
	                    <td colspan="2">
	                        <div class="view_box">
	                            
	                            <div class="p_answer"><span class="date">2016-04-02</span><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">예약을 하기 전에 또는 하고난 후에 <b><u>호스트에게 문의</u></b>하고 싶은 내용이 있다면, <b><span style="color: rgb(109, 59, 255);">톡톡하기</span></b>를 이용해보세요.</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><b>공간 상세 페이지</b> 또는 <b>예약정보 페이지</b>에서 <b><u><span style="color: rgb(109, 59, 255);"><u>[톡톡하기]</u></span></u></b>버튼을 누르면 별도의 절차 없이 호스트와 메신저로 대화를 나누실 수 있습니다.</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><b>(별도 절차 또는 설치 X)</b></span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><b><br></b></span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">또는 공간 상세 페이지와 예약 정보 페이지에서 <span style="color: rgb(109, 59, 255);"><b>[전화걸기]</b></span> 버튼을 눌러서 호스트에게 연락해보세요.</span></p></div>
	                        </div>
	                    </td>
	                </tr>
	            
	            </tbody>
	        </table>
	        
	            <div class="paging">
	                
	                    <a href="javascript:void(0);" class="btn_prev_list"><i class="sp_icon ico_prev_list">이전목록 10개로 이동</i></a><a href=javascript:void(0); class="num active">1</a>
<a href="/board/help?page=2" class="num">2</a>
<a href="/board/help?page=3" class="num">3</a>
<a href="/board/help?page=4" class="num">4</a>
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
		$('table.table_toggle tr').on('click', $.proxy(toggleShowArticle, document));
		$('a._search').on('click', $.proxy(search, document));
		showBoardItem();
	}, this));

	$(window).on('hashchange', showBoardItem);
	$('.table_toggle a:not(.p_view_detail)').attr('target', '_blank');
</script>