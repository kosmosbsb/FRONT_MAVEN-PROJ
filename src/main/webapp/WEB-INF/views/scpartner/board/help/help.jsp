<?xml version="1.0" encoding="UTF-8" ?>
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
            <h2>도움말</h2>
        </div>
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
                                
                                
                                
                            </ul>
                        </div>
                    </li>
                </ul>
                <div class="service_menu">
                    
                        <a href="/auth/login" id="_login">로그인</a>
                    
                    
                    <p class="copyright">Powered by <strong>NAVER</strong> © NSPACE Corp.</p>
                </div>
            </nav>
            <a href="javascript:void(0);" class="nav_menu_close"><i class="sp_icon ico_nav_close">메뉴 닫기</i></a>
        </div>
    </div>
    <a href="javascript:void(0);" class="btn_fixed_guest">스페이스클라우드로 이동<i class="sp_icon ico_go"></i></a>
</aside>

    <!-- contents -->
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
                                            
                                                
                                                    
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="BHOST" >호스트되기</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="SPREG" >공간등록</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="SPMGT" >공간정보관리</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="PSMGT" >가격 및 일정</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="RSVP" >예약 및 결제</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="REFND" >취소 및 환불</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                
                                            
                                                
                                                    
                                                    
                                                        <option value="SETL" >정산</option>
                                                    
                                                
                                            
                                                
                                                    
                                                    
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
            
                <tr data-id="363">
                    <td class="subject">예약 및 결제</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">게스트의 예약 변경 요청을 실수로 거절했습니다. 거절을 취소 할수 있나요</p>
                            <span class="date">2017-11-13</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="363">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">스페이스클라우드에서는 <b><span style="color: rgb(120, 32, 185);">취소의 재취소가 불가</span></b>합니다.</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">호스트님의 실수로 변경 요청을 거절하셨다면,</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">기존의 예약을 직접 전액 환불취소 해주시고 게스트에게 예약을 </span></p><p><span style="font-family: 나눔고딕, NanumGothic;">처음부터 다시 걸어달라고 요청하시는것을 권해드립니다.</span></p></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="362">
                    <td class="subject">예약 및 결제</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">게스트에게 예약 변경 방법을 안내 했는데, 버튼이 보이지 않는다고 해요</p>
                            <span class="date">2017-11-13</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="362">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2017-11-13</span><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">예약 변경은 아래의 경우를 모두 충족할 때만 신청 가능합니다.</span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic; color: rgb(120, 32, 185);"><b>1) 모임공간 예약인 경우</b></span></p><p><span style="font-family: 나눔고딕, NanumGothic; color: rgb(120, 32, 185);"><b>2) 승인결제 또는 바로결제 예약으로 결제까지 완료하신 경우</b></span></p><p><span style="font-family: 나눔고딕, NanumGothic; color: rgb(120, 32, 185);"><b>3) 이용일 전날 오전 11시 59분을 지나지 않은 경우</b></span></p><p><span style="font-family: 나눔고딕, NanumGothic; color: rgb(120, 32, 185);"><b>4) 해당 예약에 대해 이전에 예약 변경 신청을 하신 적이 없는 경우</b></span></p><p> </p><p><span style="font-family: 나눔고딕, NanumGothic;">호스트님의 공간과 결제 유형 그리고, 게스트님의 예약 내용을 꼼꼼하게 확인해주세요.</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">위의 조건을 모두 충족하는데도 예약 변경 버튼이 보이지 않은다면,</span></p><p><a href="https://talk.naver.com/ct/wc89we" target="_self"><span style="font-family: 나눔고딕, NanumGothic;">스페이스클라우드 1:1문의</span></a><span style="font-family: 나눔고딕, NanumGothic;"> 로 예약 번호와 함께 문의 부탁드립니다.</span></p></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="122">
                    <td class="subject">공간정보관리</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">사진을 새로 촬영하게 되어 수정하고 싶습니다. 어떻게 해야 하나요?</p>
                            <span class="date">2016-07-15</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="122">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-07-15</span><p><span style="font-family: 나눔바른고딕, NanumBarunGothic;">사진 수정방법에 대해서 안내해 드리겠습니다.</span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;"> </span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; line-height: inherit;"><b>1. 공간사진 수정방법 </b></span> </p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(1) 호스트센터(<a href="http://partner.spacecloud.kr/)%EC%97%90" target="_blank" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: middle; box-sizing: border-box; position: relative; z-index: 0; font-family: NanumBarunGothic !important; color: rgb(109, 59, 255) !important;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt;">http://partner.spacecloud.kr/)에</span></a> 로그인하세요!</span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(2)</span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: middle; box-sizing: border-box; font-family: NanumBarunGothicBold !important;"><span style="font-weight: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> </span><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>MY메뉴버튼(우측 상단</b></span></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; vertical-align: middle; box-sizing: border-box; font-family: 나눔바른고딕, NanumBarunGothic;"><b>)클릭 > 내 공간정보 관리 > 공간정보 수정</b></span></span><span style="font-weight: inherit;"> 을 선택해주세요. </span></span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; background-color: rgb(255, 255, 255);"><span style="color: rgb(101, 101, 101); line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; font-weight: inherit;">(3) 맨 위</span><span style="color: rgb(101, 101, 101); line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; font-weight: inherit;"> </span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; line-height: 22px;"><font color="#3a32c3"><b>공간정보</b></font></span><span style="color: rgb(101, 101, 101); line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; font-weight: inherit;"> </span><span style="color: rgb(101, 101, 101); line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; font-weight: inherit;">탭을 클릭하신 후 스크롤을 내려주세요.</span> </p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(4) </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>파일첨부</b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> 를 클릭하여 새로운 사진을 등록하세요. </span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(5) 기존 사진을 삭제 하시려면 사진을 선택하시고 오른쪽 </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>X</b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> 를 눌러주세요.</span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(6) 이미지 순서 변경도 가능합니다. 순서를 변경하고 싶은 이미지를 선택하고 </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b><</b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> 또는 </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>></b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> 를 눌러주세요.</span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> </span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"><b>2. 세부공간 사진 수정방법</b></span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(1) 호스트센터(<a href="http://partner.spacecloud.kr/)%EC%97%90" target="_blank" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: middle; box-sizing: border-box; position: relative; z-index: 0; font-family: NanumBarunGothic !important; color: rgb(109, 59, 255) !important;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt;">http://partner.spacecloud.kr/)에</span></a> 로그인하세요!</span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(2)</span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: middle; box-sizing: border-box; font-family: NanumBarunGothicBold !important;"><span style="font-weight: inherit; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> </span><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>MY메뉴버튼(우측 상단</b></span></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: inherit; vertical-align: middle; box-sizing: border-box;"><b>)클릭 > 내 공간정보 관리 > 세부 공간 추가/수정</b></span></span><span style="font-weight: inherit;"> 을 선택해주세요. </span></span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; background-color: rgb(255, 255, 255);"><span style="color: rgb(101, 101, 101); line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit; font-weight: inherit;">(3) 수정하고 싶은 세부공간의 </span><span style="color: rgb(58, 50, 195); line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; font-size: 9pt; font-style: inherit; font-variant: inherit;"><b>수정 </b>​<span style="color: rgb(0, 0, 0);">﻿을 클릭하세요.</span></span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(4) </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>파일첨부</b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> 를 클릭하여 새로운 사진을 등록하세요. </span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">(5) 기존 사진을 삭제 하시려면 사진을 선택하시고 오른쪽 </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>X</b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"> 를 눌러주세요.</span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; vertical-align: middle; box-sizing: border-box;">(6) 이미지 순서 변경도 가능합니다. 순서를 변경하고 싶은 이미지를 선택하고 </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b><</b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; vertical-align: middle; box-sizing: border-box;"> 또는 </span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; vertical-align: middle; box-sizing: border-box; color: rgb(58, 50, 195);"><b>></b></span><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; vertical-align: middle; box-sizing: border-box;"> 를 눌러주세요.</span></span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;"><b> </b></span></p><p style="border: 0px; font-stretch: inherit; font-size: 15px; line-height: 22px; font-family: NanumBarunGothic; vertical-align: middle; box-sizing: border-box; color: rgb(101, 101, 101); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 9pt; line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: middle; box-sizing: border-box;">감사합니다.</span></p></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="119">
                    <td class="subject">가격 및 일정</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">예약 가능 여부를 미리 설정할 수 있나요?</p>
                            <span class="date">2016-07-12</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="119">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-07-12</span><p><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;">네, 가능합니다!</span></p><p><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;">예약이 불가한 날짜는 <b>휴무, </b></span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5;">예약이 불가한 시간은 </span><b style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5;">휴시</b><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5;">로 설정하실 수 있습니다.</span></p><p><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;"> </span></p><p><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;">하지만 더 좋은 방법은 </span><b><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;">'예약추가 기능'</span></b><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;">이란 것이 있습니다!</span></p><p> </p><p><img src="https://scloud.pstatic.net/20160527_91/1464339968204kbqD5_JPEG/98292.LINE.jpg" title="98292.LINE.jpg"></p><p> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><b><span style="line-height: 16.56px; font-size: 12pt; font-family: 나눔바른고딕, NanumBarunGothic;">예약추가기능</span></b></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><b><span style="line-height: 16.56px; font-size: 12pt; font-family: 나눔바른고딕, NanumBarunGothic;"><br></span></b></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><b><span style="line-height: 16.56px; font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic;">- 예약성공률을 높일 수 있는 가장 좋은 방법!</span></b></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: baseline; white-space: pre-wrap;"><b>1. ‘예약추가’ 기능은 무엇인가요?</b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt;"> </p><ul style="line-height: 1.38;"><li><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">다른 경로를 통해 들어온 예약도 스페이스클라우드 캘린더에 입력하실 수 있는 기능입니다. </span></li><li><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">예약날짜/시간, 예약자명, 연락처를 입력할 수 있습니다. 또한 그 밖의 중요한 정보를 메모할 수도 있죠.</span><span style="line-height: 1.5;"> </span></li></ul><div><br></div><div><br></div><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: baseline; white-space: pre-wrap;"><b>2. ‘예약추가' 기능은 왜 사용해야 하나요?</b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">(1) <u>예약성공률이 훨씬 높아집니다.</u></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.38; white-space: pre-wrap;">예약추가 기능으로 캘린더 정보를 업데이트 하시면 승인하실 수 있는 예약신청만 들어오게 됩니다.</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">(2) <u>게스트분들께 사랑받는 공간이 될 수 있습니다.</u></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.38; white-space: pre-wrap;">예약신청을 거절하는 것은 게스트분들의 기분을 매우 상하게 만듭니다. </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.38; white-space: pre-wrap;">‘예약추가' 기능으로 예약현황을 업데이트해주세요. 게스트분들이 잘못 예약하시는 것을 </span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.38; white-space: pre-wrap;">미연에 방지할 수 있습니다. </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">게스트의 예약신청을 너무 과도하게 거절하시면 공간이 일시적으로 비공개 되실 수 있습니다. </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">(3) <u>불편함이 획기적으로 줄어듭니다. </u></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">중복예약으로 인해 매 번 '예약취소'하고, 취소사유를 게스트에게 설명해야 하는 번거로움이 사라집니다.</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 10pt; font-family: 나눔바른고딕, NanumBarunGothic; vertical-align: baseline; white-space: pre-wrap;"><b>3. ‘예약추가' 기능의 혜택</b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;"><b><br></b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;"><b>(1) </b><u>검색결과에 상위노출될 확률이 높아집니다.</u></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt;"><font face="나눔바른고딕, NanumBarunGothic"><span style="font-size: 13.3333px; line-height: 18.4px; white-space: pre-wrap;">'예약추가'기능을 잘 활용하시면 예약이 성사될 확률이 높아지고,</span></font></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt;"><font face="나눔바른고딕, NanumBarunGothic"><span style="font-size: 13.3333px; line-height: 18.4px; white-space: pre-wrap;">자연스럽게 좋은 점수를 받게되어 검색결과에 반영됩니다.</span></font></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.38;">(2) <u>스페이스클라우드 메인화면에 노출됩니다.</u></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.5;">또한 저희는 ‘예약추가' 기능을 활발히 사용하고 계신 </span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.5;">호스트분들의 </span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; white-space: pre-wrap; line-height: 1.5;">공간만 모아서 </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5; white-space: pre-wrap;">스페이스클라우드의 </span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5; white-space: pre-wrap;">메인페이지에 노출해드립니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5; white-space: pre-wrap;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5; white-space: pre-wrap;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5; white-space: pre-wrap;"> </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 10pt; line-height: 1.5; white-space: pre-wrap;"><b>4. 예약추가 기능 사용방법</b></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><img src="https://scloud.pstatic.net/20160527_56/146434577800584GM1_JPEG/card_news_06.jpg" title="card_news_06.jpg"></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><img src="https://scloud.pstatic.net/20160527_232/1464345789918a8GA9_JPEG/card_news_07.jpg" title="card_news_07.jpg"></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><img src="https://scloud.pstatic.net/20160527_151/1464345811737TeLo9_JPEG/card_news_08.jpg" title="card_news_08.jpg"></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><img src="https://scloud.pstatic.net/20160527_50/1464345821665zyJiU_JPEG/card_news_09.jpg" title="card_news_09.jpg"></p><div><br></div></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="118">
                    <td class="subject">가격 및 일정</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">가격을 변경하고 싶어요!</p>
                            <span class="date">2016-07-12</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="118">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-07-12</span><p><font face="나눔바른고딕, NanumBarunGothic">가격을 변경하는 방법을 안내해 드리겠습니다.</font></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic;"> </span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic;">1. 호스트센터(<a href="http://partner.spacecloud.kr/)에">http://partner.spacecloud.kr/)에</a> 로그인하세요!</span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic;">2.</span><b><span style="font-family: 나눔바른고딕, NanumBarunGothic;"> </span><span style="color: rgb(58, 50, 195); font-family: 나눔바른고딕, NanumBarunGothic;">MY메뉴버튼(우측 상단</span></b><span style="line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic;"><span style="color: rgb(58, 50, 195); font-family: 나눔바른고딕, NanumBarunGothic;"><b>)클릭 > 내 공간정보 관리 > 세부 공간 추가/수정</b></span> 을 선택해주세요. </span></p><p><span style="line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic;">3. 가격을 수정하고 싶으신 세부공간의 <span style="color: rgb(58, 50, 195); font-family: 나눔바른고딕, NanumBarunGothic;"><b>수정</b></span> 버튼을 클릭해주세요. </span></p><p><span style="line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic;">4. 맨 위 <b><span style="color: rgb(58, 50, 195);">일정/가격</span></b> 탭을 클릭하신 후 가격을 수정해주세요.</span></p><p><span style="line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic;">5. 가격이 잘 변경 되었는지 호스트님의 공간 페이지에서 확인해주세요! </span></p><p><span style="line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic;"> </span></p><p><span style="line-height: 1.5; font-family: 나눔바른고딕, NanumBarunGothic;">감사합니다.</span></p>







</div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="117">
                    <td class="subject">예약 및 결제</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">당일 예약은 불가능한가요?</p>
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
            
                <tr data-id="77">
                    <td class="subject">공간정보관리</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">어떤 공간 이미지(사진)를 등록해야 하나요?</p>
                            <span class="date">2016-04-22</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="77">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-04-22</span><p>스페이스클라우드는 사용자에게 보다 멋진 공간 정보를 제공하기 위해 공간 정보를 꾸준히 모니터링 작업을 하고 있는데요.</p><p>모니터링 할 때 굉장히 중요하게 생각하는 부분이 바로 공간의 이미지(사진)입니다.</p><p>아래 공간 이미지 등록 가이드라인을 참고해주세요!</p><p>&nbsp;</p><p><img src="https://scloud.pstatic.net/20160422_230/1461317032484e4uSu_JPEG/image_guide.jpg" title="image_guide.jpg"><br style="clear:both;">&nbsp;</p></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="59">
                    <td class="subject">취소 및 환불</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">예약은 어떻게 취소하나요?</p>
                            <span class="date">2016-04-03</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="59">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-04-03</span><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">예약을 취소하시려면,</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><b><span style="color: rgb(101, 101, 101);">MY 메뉴 > 승인대기/결제 전/예약확정</span></b>에서 취소하고자하는 예약의 <b><span style="color: rgb(109, 59, 255);">[예약취소]버튼</span></b>을 눌러주세요.</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><b><span style="color: rgb(109, 59, 255);">취소 및 환불 내용</span></b>을 확인하신 다음, <b><span style="color: rgb(109, 59, 255);">취소 사유</span></b>를 입력해주세요.</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);">환불은 공간 정보에 입력했던 <b>환불 기준에 따라 자동으로 진행</b>됩니다.</span></p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(255, 58, 72);">*만약, 전액환불을 해주길 원하시면 <u>전액환불 체크박스</u>를 선택해주세요.</span></p><p style="line-height: 2;"> </p><p style="line-height: 2;"><span style="font-family: 나눔고딕, NanumGothic; font-size: 11pt; color: rgb(101, 101, 101);"><b>호스트의 불찰로 예약을 취소하게 된다면 게스트에게 반드시 사전에 공지를 해주세요!</b></span></p></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="11">
                    <td class="subject">공간등록</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">결제서비스 이용시 수수료는 얼마인가요?</p>
                            <span class="date">2016-02-15</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="11">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-02-15</span><p>스페이스클라우드는 '온라인 결제'에 대한 수수료만 받고 있습니다. </p><p>결제수수료는 <b><u>고객결제금액 중 공급가액의 10%</u></b>입니다. (PG수수료 포함, VAT 별도) </p><p> </p></div>
                        </div>
                    </td>
                </tr>
            
                <tr data-id="8">
                    <td class="subject">공간등록</td>
                    <td class="td_question">
                        <a href="javascript:void(0);" class="p_view_detail">
                            <p class="p_question">‘공간당 가격’과 ‘1인당 가격’ 중 무엇을 선택해야 하나요?</p>
                            <span class="date">2016-02-15</span>
                            <i class="sp_icon ico_view_detail">상세보기</i>
                        </a>
                    </td>
                </tr>
                <tr class="tr_view" data-id="8">
                    <td colspan="2">
                        <div class="view_box">
                            
                            <div class="p_answer"><span class="date">2016-02-15</span><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);">호스트님의 공간 공유(혹은 대관) 방식에 따라 공간 등록시 가격 책정 방식을 선택할 수 있습니다.  </span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);"> </span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);"><b>1) 공간당 가격</b></span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; line-height: 20px; color: rgb(101, 101, 101);">- </span><span style="font-size: 11pt; line-height: 1.5; color: rgb(101, 101, 101);">예약 인원 수에 관계없이 가격을 계산하는 경우 공간당 가격을 선택하시면 됩니다.</span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);"> </span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);">예시)스터디룸 A : 인원에 관계없이 1시간에 2,000원</span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);">        4명이서 2시간 이용 시 공간 이용료 : 2,000원 * 2시간 = <span style="color: rgb(101, 101, 101);"><u>4,000원</u></span></span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);"> </span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; line-height: 20px; color: rgb(101, 101, 101);"><b>2) 1인당 가격 </b></span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);">- </span><span style="font-size: 11pt; line-height: 1.5; color: rgb(101, 101, 101);">1인당 이용 가격을 계산하는 경우 1인당 가격을 선택하시면 됩니다.</span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; line-height: 1.5; color: rgb(101, 101, 101);"> </span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);">예시)스터디룸 B : 1인당 1시간에 2,000원.</span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt;"><span style="color: rgb(101, 101, 101);">        4명이서 2시간 이용 시 공간 이용료 : 2,000원 * 2시간 * </span><b><span style="color: rgb(255, 58, 72);">4명</span></b> <span style="color: rgb(101, 101, 101);">= </span><u><span style="color: rgb(101, 101, 101);"><u>16,000원</u></span></u></span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);"> </span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);">- 1인당 가격으로 선택하시는 경우, <b><u><span style="font-size: 11pt; color: rgb(101, 101, 101);"><u>최소 예약인원수 이상인 경우에만 예약이 가능합니다.</u></span></u></b></span></p><p style="line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt; color: rgb(101, 101, 101);"><b><u><span style="font-size: 11pt; color: rgb(101, 101, 101);"><u><br></u></span></u></b></span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt;"><span style="color: rgb(101, 101, 101);">예시)스터디룸 C : 1인당 1시간에 2,000원</span><span style="color: rgb(255, 58, 72);">(최소 예약인원 수 : 4명)</span></span></p><p style="margin-left: 40px; line-height: 2; font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-size: 11pt;"><span style="color: rgb(101, 101, 101);">        3명이서 2시간 이용 시 공간 이용료 : 2,000원 * 2시간 * </span><span style="color: rgb(255, 58, 72);"><b>4명</b></span> <span style="color: rgb(101, 101, 101);">= </span><u><span style="color: rgb(101, 101, 101);"><u>16,000원</u></span></u><span style="color: rgb(101, 101, 101);">(3명으로는 결제 불가)</span></span></p></div>
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
<a href="/board/help?page=5" class="num">5</a>
<a href="/board/help?page=6" class="btn_next_list active"><i class="sp_icon ico_next_list">다음목록 10개로 이동</i></a>


                
            </div>
        
    </section>
    <!-- //contents -->

    <div class="dimmed"></div>
</div>
<!-- //wrap -->
	<div class="dimmed"></div>
</body>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
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
        var searchText = encodeURIComponent(elSearch.val());
        if (elSearch.attr("placeholder") == elSearch.val()) {
            searchText = "";
        }

        window.location = window.location.pathname+"?category="+category+"&search="+searchText;
    }

    $(document).ready(function(){
        $('table.table_toggle tr').on('click', $.proxy(toggleShowArticle, document));

        $('a._search').on('click', $.proxy(search, document));

        if (window.location.hash != null && window.location.hash != "") {
            var id = window.location.hash.replace('#','');
            var elem = $('table.table_toggle tr[data-id='+id+']');
            if (elem != null && elem.length > 0) {
                elem.addClass("tr_active");
                $('html, body').animate({
                    scrollTop: elem.offset().top-100
                }, 500);
            }
        }

    });

    $('.table_toggle a:not(.p_view_detail)').attr('target', '_blank');
</script>
</html>