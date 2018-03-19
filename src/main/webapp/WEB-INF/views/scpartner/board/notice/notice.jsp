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
	<!-- //u_skip -->
<div class="wrap">
    <header class="header">
        <div class="page_title">
            <h2>공지사항</h2>
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
                                            
                                                <option value="NOTI" >공지사항</option>
                                            
                                                <option value="EVT" >이벤트</option>
                                            
                                        </select>
                                    </div>
                                </div>
                            </dd>
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
                
                    <tr data-id="393">
                        <td class="subject">공지사항</td>
                        <td class="td_question">
                            <a href="javascript:void(0);" class="p_view_detail">
                                <p class="p_question">2018년 설연휴 기간 고객센터 운영 안내</p>
                                <span class="date">2018-02-13</span>
                                <i class="sp_icon ico_view_detail">상세보기</i>
                            </a>
                        </td>
                    </tr>
                    <tr class="tr_view" data-id="393">
                        <td colspan="2">
                            <div class="view_box">
                                
                                <div class="p_answer"><span class="date">2018-02-13</span><p>안녕하세요. <br>스페이스클라우드 게스트&amp;호스트 여러분 :)</p><p>&nbsp;</p><p><strong>설연휴 (2018.02.15 ~ 2018.02.18 4일간)&nbsp;</strong></p><p><strong>고객센터 운영일정을 안내드립니다.</strong></p><p>&nbsp;</p><p><strong>1. 전화 업무 중단</strong> <br>추석연휴기간 동안 스페이스클라우드 대표번호 1599-4312 를 통한</p><p>전화 상담은 중단됩니다.</p><p>&nbsp;</p><p><strong>2. 웹상담(네이버톡톡) 시간 조정</strong> <br>전화업무는 중단되나, 웹 상담시간은 부분적으로 운영됩니다.<br>스페이스클라우드 홈페이지 하단 '문의하기' 버튼을 통한 웹상담 시간을 알려드립니다.</p><p>&nbsp;</p><p>기간 2018.02.15 ~ 2018.02.18</p><p>오전 10:00 ~ 11:00 (1시간)</p><p>오후&nbsp; 4:00 ~ 5:00 (1시간)</p><p>&nbsp;</p><p>웹으로 문의를 남겨주시면, 해당 시간에</p><p>순차적으로 답변하여드리겠습니다.</p><p>&nbsp;</p><p>업무제휴, 공간상담, 시스템상 문제로 인한 오류는</p><p>연휴기간내 처리가 불가하여, 2월 19일부터 처리해드리겠습니다.</p><p>&nbsp;</p><p>새해 복 많이 받으시길 바랍니다.</p><p>&nbsp;</p><p>감사합니다.&nbsp;</p><p>&nbsp;</p></div>
                            </div>
                        </td>
                    </tr>
                
                    <tr data-id="391">
                        <td class="subject">공지사항</td>
                        <td class="td_question">
                            <a href="javascript:void(0);" class="p_view_detail">
                                <p class="p_question"> [필독] 1공간 1유형 클린업 정책 안내 (+사전신청)</p>
                                <span class="date">2018-01-24</span>
                                <i class="sp_icon ico_view_detail">상세보기</i>
                            </a>
                        </td>
                    </tr>
                    <tr class="tr_view" data-id="391">
                        <td colspan="2">
                            <div class="view_box">
                                
                                <div class="p_answer"><span class="date">2018-01-24</span><p>안녕하세요. 호스트 여러분. </p><p>​스페이스클라우드 운영팀 입니다.</p><p> </p><p>2018년 3월부터 진행되는 <b><u>‘1공간 1유형' 클린업 정책</u></b>에 대한 중요한 공지를 드리니 꼼꼼하게 내용을 체크해주시기 바랍니다.</p><p> </p><p>스페이스클라우드는 2016년부터 공간공유가 활성화 되도록</p><p>모임공간에 한하여 한 공간에 5개의 유형까지 등록할 수 있도록 서비스해 왔습니다.</p><p> </p><p>그러나 현재 본 정책은 스페이스클라우드의 이용자(게스트,호스트)들로부터 용도에 맞지 않는 검색 결과로 개편 요청이 다수 접수되고 있습니다.</p><p>(예, ‘연습실’ 또는 ‘스터디룸’ 검색시 ‘파티룸’이 나옴 등)</p><p> </p><p>실제로 검수 과정에서 검색 오류와 정확도가 떨어지고 있어</p><p>스페이스클라우드 서비스의 신뢰도에 이슈가 된다고 판단하였고 이에 2018년 3월부터 클린업 정책으로 개편을 결정하게 되었습니다.</p><p> </p><p>아래 변경되는 공간 유형 정의를 꼼꼼히 살펴보시고, 현재 등록된 공간에 적합한 대표 유형으로 신청해주시면, 3월 개편시 적용될 수 있도록 대행 작업 예정입니다.</p><p> </p><p>호스트 여러분들의 많은 참여를 부탁드립니다.</p><p> </p><p> </p><p>스페이스클라우드 공간 유형 정의 (2018년 3월 개편 부터 적용 예정)  </p><p> </p><p><img title="%20%20%20%20%202018-02-02%20%20%20%2011.55.39.png" src="https://scloud.pstatic.net/20180202_4/1517540177825YYoEr_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2018-02-02_%BF%C0%C0%FC_11.55.39.png"><br style="clear: both;"> </p><p> </p><p>위 11개의 유형은 스페이스클라우드의 공유공간 정책 및 이용자의 사용 목적에 따라 분류, 정의 되었습니다.</p><p> </p><p> </p><p><b>‘클린업 정책’의 개편 내용 </b></p><p>- 달라진 1공간 1유형 정책은 3월 개편부터 적용 됩니다.</p><p> </p><p><b>1) 공간유형은 기본적으로 위 11개의 유형 중 1개만 등록이 가능합니다. </b></p><p>예) 강남 파티룸 (연습실, 파티룸, 스터디룸, 회의실) ▶ 강남 파티룸 (파티룸)</p><p> </p><p><b>2) 1개의 공간에 사용 목적이 다른 세부공간이 있거나, 1개 공간이 여러 목적(유형)으로 활용이 가능한 경우 </b></p><p>- <u>사용 목적이 다른 세부공간은 따로 공간(신규공간 등록)을 만드시는 것을 권장드립니다.</u></p><p>- 1개 공간이 여러 목적(유형)인 경우 대표 1유형 외에 2개를 더 신청가능하나, <b><u>검수 과정에서 관련도가 떨어지는 유형은 무통보 삭제/변경됩니다.</u></b></p><p> </p><p style="margin-left: 40px;"><i>예1) 연습실이지만 파티할 수 있다며 "파티룸" 선택 --> <b>"파티룸" 유형 무통보 삭제</b></i></p><p style="margin-left: 40px;"><i>예2) 파티룸에서 스터디할 수 있다며 "스터디룸" 선택 --> <b>"스터디룸" 유형 무통보 삭제</b></i></p><p style="margin-left: 40px;"><i>예3) 회의실에서 책상 치우고 댄스 연습할 수 있다며 "연습실" 선택 --> <b>"연습실" 유형 무통보 삭제</b></i></p><div><br></div><p> </p><p><b>3) 기존 등록된 공간은 "클린업 대행 사전 신청"을 해주세요. </b></p><p>운영팀에서 검수 후 대표 유형을 수정해드리고 만약 사전 신청을 하지 않을시에는 운영팀에서 확인 후 임의 배정합니다.</p><p> </p><p><b>대행 작업 안내 </b></p><p>- 작업신청 해당기간 :  2018년 1월 31일 ~ 2월 14일</p><p>- 신청하기 : <a href="https://spacecloud.typeform.com/to/rrML0d">https://spacecloud.typeform.com/to/rrML0d</a> (클릭)  </p><p> </p><p>해당 기간 동안 신청해주시면 3월 개편시 일괄 반영됩니다.</p><p> </p><p><b>4) 기존 레저시설, 다목적홀 유형, 작업실(모임공간), 공동작업실(공유오피스)으로 등록해주신 호스트께서는 다음과 같이 변경해주셔야 합니다.</b></p><p> </p><p>- 레저시설은 위의 유형 중 모임 목적으로 대관이 가능하다면, 해당 유형을 선택해주시되, 탁구장, 골프장 등 <b>공간 내 "시설 이용"이 주된 목적인 경우에는 공간이 노출이 불가합니다.</b></p><p>- 다목적홀은 강연, 회의에 가까운 경우 회의/세미나실로 변경해주시면 되며, 여러가지 복합시설로서 이용이 가능하신 경우에는 행사장으로 등록해주시면 됩니다. </p><p>- 작업실(모임공간)은 모임 목적으로 대관이 가능한 유형으로 선택해주세요.</p><p>- 공동작업실은 코워킹스페이스와 통합되었습니다.</p><p> </p><p><b>5) 신규로 공간을 등록하실 경우, 이제 검수를 받은 공간만 노출 되며 검수 이후 유형 변경시 재검수 후 노출 됩니다. </b></p><p> </p><p> </p><p>스페이스클라우드는 1공간 1유형이라는 ‘클린업 정책’을 통해서 이용자 분들과 호스트님들께 최적화 된 공간 정보, 신뢰 받는 공간공유 서비스로 한걸음 더 나아가고자 합니다. 관련해서 문의가 있으실 경우 언제든 운영시간에 맞추어 편하게 <a href="https://talk.naver.com/ct/wc89we" target="_self">1:1 실시간 상담</a>을 신청해주세요. </p><p> </p><p>호스트 여러분의 협력을 부탁드리며,</p><p>2018년에도 스페이스클라우드는 최선을 다해 서비스하겠습니다.</p><p>감사합니다. </p><p> </p><p> </p><p><b>Team SpaceCloud</b></p><p>스페이스클라우드 드림 </p><div><br></div></div>
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
                
                    <tr data-id="388">
                        <td class="subject">공지사항</td>
                        <td class="td_question">
                            <a href="javascript:void(0);" class="p_view_detail">
                                <p class="p_question">연습실 지원 이벤트 제휴 호스트님을 모집합니다 (1/10-1/31) </p>
                                <span class="date">2018-01-10</span>
                                <i class="sp_icon ico_view_detail">상세보기</i>
                            </a>
                        </td>
                    </tr>
                    <tr class="tr_view" data-id="388">
                        <td colspan="2">
                            <div class="view_box">
                                
                                <div class="p_answer"><span class="date">2018-01-10</span><p><img src="https://scloud.pstatic.net/20180117_47/1516175727583IhBev_PNG/%C4%BF%B9%F6%C0%A7%C5%A9_%B8%DE%C0%CE_%C0%CC%B9%CC%C1%F6.png" title="%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20.png"><br style="clear:both;"> </p><p> </p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><연습실 지원 이벤트 COVER WEEK의 제휴공간으로 함께해주실 연습실 호스트님을 모집합니다> </span></p><p><b style="font-weight:normal;" id="docs-internal-guid-d9825e04-df9a-e076-d6e9-c4336a53016e"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">안녕하세요 스페이스클라우드입니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">스페이스클라우드 마케팅 팀에서는 시즌에 부합하는 이벤트와 컨텐츠를 통해 호스트님들의 공간을 소개하고 있는데요. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">2018년 1-2월은 <span style="font-size: 14.6667px; font-weight: 700;">Cover week </span><cover week="">라는 이벤트로, 개인 연습생들과 커버댄서들을 모집, 크레딧을 지급하여 연습실 지원할 예정입니다. </cover></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">선정된 개인연습생 & 커버댄서들은 지원받은 크레딧(팀당 30만원)을 제휴된 호스트님의 공간 에서 사용하며, </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">이벤트 기간 동안 호스트님의 공간이 이벤트 메인 페이지에 노출되어 홍보가 될 예정입니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">* 크레딧은 현금과 동일하게 정산이 됩니다. 크레딧으로 결제된 금액에 대해서는 수수료가 발생하지 않으며 </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">  대신 세금계산서 혹은 현금 영수증을 발행해주셔야 합니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">아래에서 상세 내용을 확인하시고 신청 조건에 부합한 연습실 공간 호스트님이시라면 제휴 공간으로 신청이 가능합니다.  </span></p><p> </p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">◼ Cover week 제휴공간 참여 혜택 </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br class="kix-line-break"></span><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">1)<span style="font-size: 14.6667px;">C</span>over week 이벤트 메인 페이지에 제휴 공간으로 홍보됩니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span style="font-size: 14.6667px; font-weight: 700;">C</span>over week 이벤트 페이지는 스페이스클라우드에서 관리하는 SNS 채널 및 </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">게스트 뉴스레터를 통해 노출될 예정입니다. </span></p><p> </p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">2</span><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">)이벤트 당첨자가 지급받은 크레딧으로 제휴된 공간안에서 예약 / 결제합니다.  </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font face="Arial"><span style="font-size: 14.6667px; white-space: pre-wrap;">이벤트 당첨자에게 크레딧은 2월 초에 지급될 예정이며 사용기간은 ~3.31일까지 안내됩니다. </span></font></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">◼ Cover week 제휴공간 신청 조건</span></p><p> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">1) 스페이스클라우드에서 예약 + 결제가 가능한 공간(승인결제, 바로결제 유형)</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">온라인 예약부터 결제, 이용까지 고객 서비스 대응을 해주시는 공간만 참여 가능합니다.</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">* 온라인 결제가 아닌 현장 결제 유도일 경우 제휴가 종료됩니다. </span></p><p> </p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">2) 이벤트 당첨자가 사용한 크레딧 금액에 대한 세금계산서 발행을 협조해주셔야 합니다. </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">*크레딧은 스페이스클라우드 내에서만 사용할 수 있는 온라인 포인트 개념입니다. </span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">크레딧으로 결제된 건에 대해서는 현금과 동일하게 정산되며, 크레딧으로 정산된 금액에서는 수수료가 차감되지 않습니다.</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">크레딧 외의 결제 수단으로 진행된 결제 금액에 대해서는 기존 운영 정책과 동일하게 수수료 10%가 발행하니 참고 부탁드립니다. </span></p><div><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></div><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">◼ Cover week 제휴공간 신청 방법 </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">1) 신청 방법:  위 신청 기준에 해당하신다면, 아래 신청하기 버튼을 클릭해주세요.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">2) 신청 기간: 1차모집, 1.10(목) ~ 1.16(화) | 2차 모집, 1.17(수)~1.31(화)</span><span style="font-family: Arial; font-size: 11pt; white-space: pre-wrap;">  * 신청하신 순으로 공간이 등록됩니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">3) 신청 결과 안내: 신청시 검수 후 결과를 문자로 안내드립니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">제휴가 완료된 공간은 커버위크 이벤트 페이지 내에서 노출됩니다. </span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><a href="https://spacecloud.typeform.com/to/VeTlp7" target="_self"><br></a></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><a href="https://spacecloud.typeform.com/to/VeTlp7" target="_self"><img src="https://scloud.pstatic.net/20180110_102/1515580048598U1xdJ_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2018-01-10_%BF%C0%C8%C4_7.21.45.png" title="%20%20%20%20%20%20%20%20%20%20%202018-01-10%20%20%20%20%20%207.21.45.png"></a><br style="clear:both;"> </span></p><p> </p></div>
                            </div>
                        </td>
                    </tr>
                
                    <tr data-id="386">
                        <td class="subject">공지사항</td>
                        <td class="td_question">
                            <a href="javascript:void(0);" class="p_view_detail">
                                <p class="p_question">원데이노마드 제휴공간(워크스페이스 유형)을 모집합니다 (1/8-1/31)</p>
                                <span class="date">2018-01-08</span>
                                <i class="sp_icon ico_view_detail">상세보기</i>
                            </a>
                        </td>
                    </tr>
                    <tr class="tr_view" data-id="386">
                        <td colspan="2">
                            <div class="view_box">
                                
                                <div class="p_answer"><span class="date">2018-01-08</span><p dir="ltr" style="text-align: left; line-height: 1.8; margin-top: 0pt; margin-bottom: 0pt;" align="left">  </p><div style="text-align: left;" align="left"><img src="https://scloud.pstatic.net/20180108_28/1515387810006ahTNT_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2018-01-05_%BF%C0%C8%C4_3.54.00.png" title="%20%20%20%20%20%20%20%20%20%20%202018-01-05%20%20%20%20%20%203.54.00.png" style="font-family: Arial; font-size: 10pt; white-space: pre-wrap;"></div><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"> </span></p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"> </span></p><p dir="ltr" align="left" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8;"><font face="Arial"><span style="font-size: 13.3333px; white-space: pre-wrap; color: rgb(0, 0, 0);">안녕하세요, 스페이스클라우드 입니다. </span></font></p><p dir="ltr" align="left" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.8;"><font face="Arial"><span style="font-size: 13.3333px; white-space: pre-wrap; color: rgb(0, 0, 0);">성장하는 1인기업과 크리에이터 사용자들을 위해 1일 온라인 결제가 가능한 <원데이노마드> 제휴 공간을 모집하고 있습니다.</span></font> </p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span style="font-size: 13.3333px; color: rgb(0, 0, 0);">신청 대상은 공유오피스 섹션에서 1일권으로 온라인 예약결제를 통해 이용이 가능한 코워킹스페이스, 일하기 좋은 카페, 공동 작업실, 소호사무실 입니다.</span></span></p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span style="font-size: 13.3333px;"><br></span></span></p><p><span style="background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><font face="Arial"><span style="font-size: 13.3333px; white-space: pre-wrap; color: rgb(0, 0, 0);">온라인 결제가 아닌 현장 결제 유도일 경우 제휴가 종료되며, 원데이노마드 캠페인 </span></font></span><span style="text-align: justify; text-decoration-line: underline; font-size: 10pt; font-family: Arial; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><a href="http://onedaynomad.kr/" style="text-align: justify; text-decoration-line: none;"><span style="color: rgb(109, 59, 255);">http://onedaynomad.kr</span></a> </span><span style="font-size: 13.3333px; white-space: pre-wrap; font-family: Arial; color: rgb(0, 0, 0);">에 부합하도록 자유로운 일 문화 공간을 만들어가는 스페이스클라우드의 취지와 함께 해주실 수 있는 공유오피스 호스트님 이라면 신청이 가능합니다.</span></p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"> </span></p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"> </span></p><p><span style="font-family: Arial; font-size: 12pt; font-weight: 700; white-space: pre-wrap;">◼ 원데이노마드 제휴공간 참여 혜택</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span id="docs-internal-guid-9f3749cd-d427-5116-6845-6656a778f599"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">1) </span><span style="font-size: 10pt; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">[</span><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">원데이노마드 기획전] </span><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">큐레이션 페이지가 제작되어 스페이스클라우드 메인에 노출됩니다.</span></span> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><span style="font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><font face="Arial"><span style="font-size: 13.3333px; white-space: pre-wrap;">큐레이션 페이지 링크: <a href="https://spacecloud.kr/search/pick/641">https://spacecloud.kr/search/pick/641</a></span></font></span></span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><span style="color: rgb(0, 0, 0); font-family: Arial; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: 400; white-space: pre-wrap; text-decoration-line: none; vertical-align: baseline;"><br></span></span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">2) 원데이노마드 서포터즈가 스페이스클라우드가 지급한 크레딧으로 결제, 이용 후 </span><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; vertical-align: baseline;">블로그 리뷰</span><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">를 작성합니다.</span><span><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><br></span></span></span></p><div><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span id="docs-internal-guid-9f3749cd-d428-f36a-2040-4f728b9c7bef"><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">(원데이노마드 블로그 작성 예시) ※ 공간은 서포터즈가 자유롭게 선택하여 이용합니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><a href="https://brunch.co.kr/@betheoriginal/8" target="_self">초보 프리랜서의 좋은 공간 만나기 in 팟츠앤팬스</a></span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><a href="https://brunch.co.kr/@dndb21/698" target="_self">사람들이 모이는 코워킹 스페이스 in 피치트리 신논현점</a></span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><a href="https://blog.naver.com/lovelywaltz/221105108406" target="_self">5성급 호텔만큼 뷰가 아름다운 코워킹 공간 in 유오워크 송도점</a></span></p><p><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><a href="https://m.blog.naver.com/naheekim21/221134272685" target="_self">집처럼 편안하게 일하기 좋은 곳 in 홈즈 리빙라운지</a></span></p><p><span style="font-size: 10pt;"> </span></p><p><span style="font-size: 10pt;">3) 디지털노마드처럼 일하기 좋은 공간으로 카드뉴스가 제작되어 스페이스클라우드 SNS에 소개됩니다.(평균 도달 1만뷰 이상) </span> </p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt;">4) 스페이스클라우드 전체회원에게 뉴스레터로 원데이노마드 큐레이션 페이지가 소개되어 발송됩니다.</span><span style="font-size: 10pt;"> </span> </p><p><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span id="docs-internal-guid-9f3749cd-d429-ccfa-a64e-4d82aee03e38"></span></span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt;">5) 200+명의 크리에이터 멤버십에게 원데이노마드 제휴공간을 소개하는 뉴스레터를 발송해 알립니다.</span><span style="font-size: 10pt;"> </span> </p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">◼ </span><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">원데이노마드 제휴공간 신청 조건</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">1) 스페이스클라우드에서 예약 + 결제가 가능한 공간(승인결제, 바로결제 유형)</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">온라인 예약부터 결제, 이용까지 고객 서비스 대응을 해주시는 공간만 참여 가능합니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">* </span><span style="font-size: 13.3333px;">온라인 결제가 아닌 현장 결제 유도일 경우 제휴가 종료됩니다.</span> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">2) 일하기 좋은 업무 공간</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">‘원데이노마드’ 캠페인은  일하기 좋은 공간에서 서포터즈가 1일동안 자유롭게 일하고 리뷰로 소개하는 활동이기 때문에, 업무 공간(</span><span style="font-size: 13.3333px;">코워킹스페이스, 일하기 좋은 카페, 공동 작업실, 소호사무실</span><span style="font-size: 10pt;">)만 참여가 가능합니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;">* 모임공간 카페의 경우, '일하기 좋은 카페'로 등록하셔야 합니다. </p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;">* 일하기 좋은 카페 등록방법: <span style="color: rgb(68, 68, 68); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;"><a href="https://goo.gl/WGkrrb">https://goo.gl/WGkrrb</a> (19페이지부터 참조)</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt;"> </span> </p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">3) 스페이스클라우드에 1일권 이용이 등록된 공간 </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">1일권 등록이 안된 공간이라면, 일단위 등록을 추가해주세요! </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">* 일단위 등록 방법: 스페이스클라우드 호스트센터 > 내 공간정보 관리 > 공간정보 수정 > 가격 정보 > 일단위 선택 및 설정</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;" id="docs-internal-guid-9f3749cd-d42a-6fd9-6164-62e1010cf8e2"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">◼ </span><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">원데이노마드 제휴공간 신청</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt;">1) 신청 방법:  위 신청 기준에 해당하신다면, 아래 신청하기 버튼을 클릭해주세요.</span></p><div><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">2) 신청 기간: 1월 8일(월)-1월 31일(수) </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">3) 신청 결과 안내: 1/22(월) 큐레이션 페이지 제작 후 신청 결과를 문자로 안내드립니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">(~ 1/31까지 추가 접수) 2/1(목) 큐레이션 페이지 </span><span style="font-size: 13.3333px;">제작 후 신청 결과를 문자로 안내드립니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">제휴가 완료된 공간은 [</span><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; background-color: rgb(255, 255, 255); font-weight: 700; vertical-align: baseline;">원데이노마드 기획전]</span><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; background-color: rgb(255, 255, 255); vertical-align: baseline;">으로 큐레이션 전용 페이지가 제작되어 공개됩니다.</span></p><p> </p><p> </p><p> </p><div style="text-align: center;" align="center"><a href="https://spacecloud.typeform.com/to/bc5Ebj" target="_self"><img src="https://scloud.pstatic.net/20180108_225/1515388187142CL19p_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2018-01-08_%BF%C0%C8%C4_2.00.44.png" title="%20%20%20%20%20%20%20%20%20%20%202018-01-08%20%20%20%20%20%202.00.44.png" style="font-size: 10pt;"></a></div><br><p> </p><p> </p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 12pt; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">◼ 원데이노마드 제휴공간 안내사항</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">1) 원데이노마드 서포터즈 역시 </span><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">일반 게스트처럼 예약결제를 통해 이용하기 때문에 공간 상황에 따라 예약승인해주시면 됩니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">2) 결제는 스페이스클라우드에서 제공한 크레딧으로 진행하고, 크레딧 비용은 공간 사용 2-3일 후 정산됩니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;">3) 크레딧 지원금(매달 3만원)을 초과하는 비용에 대해서는 서포터즈 개인이 지불하기 때문에, 호스트님께서 추가 서비스를 제공하지 않으셔도 됩니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">원데이노마드 캠페인에 공감하는 호스트님들의 신청을 기다리며, </span><span style="background-color: rgb(255, 255, 255); font-size: 10pt;">더 많은 분들이 호스트님의 공간에 매력을 경험할 수 있도록 </span><span style="background-color: rgb(255, 255, 255); font-size: 10pt;">최선을 다해 서포트하는 스페이스클라우드 팀이 되겠습니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"><b style="font-weight:normal;" id="docs-internal-guid-9f3749cd-d42d-41f5-b76b-7ef1625da3e5"><br></b></span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">문의는 </span><span style="font-size:10.5pt;font-family:Arial;color:#1d2129;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">1:1 고객센터</span><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">에서 원데이노마드 담당자를 찾아주시면 답변드리겠습니다.</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">>> 1:1 고객센터: </span><a href="https://goo.gl/iUiFKk" style="text-decoration:none;"><span style="font-size: 10.5pt; font-family: Arial; color: rgb(109, 59, 255); background-color: rgb(255, 255, 255); font-weight: 400; font-style: normal; font-variant: normal; text-decoration: underline; vertical-align: baseline; white-space: pre-wrap;">https://goo.gl/iUiFKk</span></a><span style="font-size: 10pt; font-family: Arial; color: rgb(109, 59, 255); background-color: rgb(255, 255, 255); font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 10pt; background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;"> </span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">감사합니다.  </span></p></span></div></span></span></div><div><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></div><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"> </p></div>
                            </div>
                        </td>
                    </tr>
                
                    <tr data-id="384">
                        <td class="subject">공지사항</td>
                        <td class="td_question">
                            <a href="javascript:void(0);" class="p_view_detail">
                                <p class="p_question">필독! 공간 내 CCTV 설치 및 운영에 대한 권고안 </p>
                                <span class="date">2018-01-02</span>
                                <i class="sp_icon ico_view_detail">상세보기</i>
                            </a>
                        </td>
                    </tr>
                    <tr class="tr_view" data-id="384">
                        <td colspan="2">
                            <div class="view_box">
                                
                                <div class="p_answer"><span class="date">2018-01-02</span><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">안녕하세요, 호스트님. </span><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">스페이스클라우드 입니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">이용자의 개인정보보호 및 실내 CCTV촬영 관련한 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">운영정책 및 권고사항을 공유드리고자 공지 안내 드립니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;"> </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">지난 1일, 뉴스를 통해 파티룸 내 CCTV 촬영 갈등 이슈 보도가 있었습니다. </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">이용자의 개인정보보호 이슈와 CCTV 설치 목적 및 위치에 대한 갈등이 제기 되었고, </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">해당 건은 경찰 조사 중에 있습니다. 스페이스클라우드 운영팀은 함께 전후사정을</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">검토 중이며 사법기관의 판단을 존중하며 </span><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">후속 대응안을 마련하고 있습니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">사건의 결과와 상관없이 스페이스클라우드는 이번 일을 통하여</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">30만명 이상의 사용자가 이용하고 있는 서비스의 책임 기관으로서</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">개인정보를 엄중하게 보호하고 운영해야 할 의무를 갖고 있음을 다시 한번 숙지하게 되었습니다. </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">더불어 스페이스클라우드에서 공간을 유통하는 모든 호스트님들과 함께 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">책임있는 도시 공간 서비스를 제공할 파트너로서 역할을 다하고자 합니다. </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">성장하는 파티룸 및 모임공간에서 범죄 예방, 시설 보호, 안전을 위해 설치되는</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">CCTV에 관련해서 불미스런 오해와 민원, 개인정보보호 위반 및 사건사고가 발생하지 않기 위하여 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif; text-decoration-line: underline;">아래와 같은 <영상정보처리기기 설치 및 관리>에 대한 호스트 운영정책 조항을 추가하고자 합니다</span><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">​</span><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">개인정보보호법 제 25조 <영상정보처리기기의 설치 운영 제한></span><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">에 대한 내용을 참고하였고 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">고객과의 불미스런 사건 사고와 오해의 소지를 줄이기 위하여 권고안을 드리니</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">CCTV 및 영상정보 처리기기를 설치하신 호스트님은 아래 내용을 반드시 준수 바랍니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">더불어 운영정책을 보완하는 <cctv 설치="" 및="" 관리="" 안내문=""> 매뉴얼을 다운로드 받으셔서 </cctv></span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">현장에 부착할 수 있도록 지원하고자 하니 꼼꼼한 현장대응 및 체크 부탁드립니다. </span></div><p><br style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">​</span></p><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bold; font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;"><영상정보처리기기 설치 및 운영에 대한 권고사항></span><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;"></span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">1. 스페이스클라우드에 공간을 유통하는 운영자 (이하 호스트)의 경우 범죄 예방, 화재 예방, 고객 안전 및 시설 보호를 위하여 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">   CCTV 및 영상 정보 처리 기기를 설치-운영할 수 있습니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;"><span style="font-weight: bold;">2. 위의 목적으로 영상정보처리기기를 설치 및 운영한 경우</span><span style="font-weight: bold;"> </span></span><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">아래의 내용을 반드시 공간 현장에 안내문으로 부착하여 고객이 인지하도록 하여야 합니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">1) 범죄 예방, 시설 보호, 화재 예방 등 안전의 목적으로 실내에 "CCTV가 설치되어 있는 사실 명기"</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">2) CCTV의 촬영 시간 명기</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">3) CCTV의 설치 장소, 설치 대수 표기</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">4) 실내의 경우 CCTV 카메라 위치 및 '촬영중 부착문' 표기 ( * 카메라 위장은 이용자에게 '불법 촬영'으로 판단함. 카메라 옆에 CCTV 촬영중 부착 필수)   </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">5) CCTV 관리 책임자 및 연락처 표기</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">6) 영상물 보관기간, 보관장소 및 처리 방법 표기 (* 통상 공공기관 기준으로 30일 자동보관 후 폐기함을 명기하고 있습니다) </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">7) 스페이스클라우드 온라인 예약 페이지에 CCTV 및 영상정보처리기기 설치 명기</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span id="docs-internal-guid-2f187c7f-e92d-96c6-ca52-3836ab601ad2"><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">※ </span><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">CCTV</span><span style="font-family: Arial; font-size: 11pt; white-space: pre-wrap;"> 설치 명기 경로 : 스페이스클라우드 온라인 예약 페이지 - 시설 안내</span></p><p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">예시) 공간 입구에 시설 안전 및 방범용 CCTV가 설치되어 있습니다. </span></p><div><span style="font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></div></span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;"><span style="font-weight: bold;">3. 위 2번 사항의 1)~7)가이드에 준수 되지 않은 경우는</span><span style="font-weight: bold;"> </span></span><span style="text-decoration-line: underline; font-weight: bold; font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">개인정보보호법 위반</span><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">으로 스페이스클라우드에서는 아래와 같은 서비스 제재가 이어집니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">1) 스페이스클라우드에서 해당 공간 즉시 미노출 및 해당 업체 재등록 불가</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">2) 해당 게스트에 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); margin-left: 20px;"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">3) 해당 공간을 예약한 스페이스클라우드 이용 예정자에게 위반 상황 통지 및 전액 환불 집행 </span><span style="font-family: NanumGothic, 나눔고딕, sans-serif; font-size: 12px;">(스페이스클라우드 결제고객에 해당)</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">스페이스클라우드를 믿고 공간을 예약하시는 이용자 분들을 위하여 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">스페이스클라우드는 이용자의 개인정보를 소중하고 성실하게 책임져드릴 의무가 있습니다. </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">또한 신뢰 받는 공간 비즈니스를 위한 호스트님의 운영을 위해서도 이는 반드시 필요한 부분 입니다.</span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;"> </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">본 운영정책의 적용은 권고기간 10일을 거쳐 2018년 1월 13일부터 적용될 예정 입니다. </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">스페이스클라우드의 권고사항을 조금 더 수월하게 실행하시기 위해 제공해드리는 </span></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-weight: bold; font-family: NanumGothic, 나눔고딕, sans-serif;">아래의 CCTV 안내문을 출력하셔서</span><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;"> 고객에게 더욱 신뢰 받는 공간이 되시길 바랍니다.</span></div><div style="background-color: rgb(255, 255, 255);"><font face="NanumGothic, 나눔고딕, sans-serif"><b><br></b></font></div><div style="background-color: rgb(255, 255, 255);"><font face="NanumGothic, 나눔고딕, sans-serif"><a href="https://drive.google.com/file/d/1f_NRyFTtYpxo-XCb2Nq2zXkepxEnkeup/view?usp=sharing" target="_self"><b>CCTV 안내문 양식 다운로드 (.pdf)</b></a></font></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><b><a href="https://drive.google.com/file/d/1bg4pOsYNwpOJsre502c1b8XvqJOs7i10/view?usp=sharing" target="_self">CCTV 안내문 양식 다운로드 (.word)</a></b></div><div style="font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px; font-family: NanumGothic, 나눔고딕, sans-serif;">​</span></div><ul data-workseditor="UnorderedList.Type-0" style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; font-family: Gulim, 굴림, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><div style="padding-left: 13px;"> </div><li style="margin: 0px; padding: 0px 0px 0px 13px; background-repeat: no-repeat; background-image: url(" https:="" ssl.pstatic.net="" static="" pwe="" nm="" se2_new="" bu="" bu_square_m.png");="" background-position:="" 0px="" 50%;"="">CCTV 및 영상정보처리기기에 대한 스페이스클라우드 권고기간 1월 2일-1월 12일 (10일간) </li><li style="margin: 0px; padding: 0px 0px 0px 13px; background-repeat: no-repeat; background-image: url(" https:="" ssl.pstatic.net="" static="" pwe="" nm="" se2_new="" bu="" bu_square_m.png");="" background-position:="" 0px="" 50%;"="">권고기간 후 운영정책 적용 기간 1월 13일부터 </li><li style="margin: 0px; padding: 0px 0px 0px 13px; background-repeat: no-repeat; background-image: url(" https:="" ssl.pstatic.net="" static="" pwe="" nm="" se2_new="" bu="" bu_square_m.png");="" background-position:="" 0px="" 50%;"="">문의/ 스페이스클라우드 개인정보보호 대책TF 온라인 <a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent; font-family: gulim, 굴림, sans-serif; color: rgb(0, 0, 0);"></a><a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent; font-family: gulim, 굴림, sans-serif; color: rgb(0, 0, 0);"></a><a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent; font-family: gulim, 굴림, sans-serif; color: rgb(0, 0, 0);"></a><a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent; font-family: gulim, 굴림, sans-serif; color: rgb(0, 0, 0);"></a><a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent; font-family: gulim, 굴림, sans-serif; color: rgb(0, 0, 0);"></a><a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent;"></a><a href="https://talk.naver.com/ct/wc89we" target="_blank" style="background-color: transparent;">https://talk.naver.com/ct/wc89we</a> </li></ul></div>
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
                
            </tbody>
        </table>
        
        <div class="paging">
            
                <a href="javascript:void(0);" class="btn_prev_list"><i class="sp_icon ico_prev_list">이전목록 10개로 이동</i></a><a href=javascript:void(0); class="num active">1</a>
<a href="/board/notice?page=2" class="num">2</a>
<a href="/board/notice?page=3" class="num">3</a>
<a href="/board/notice?page=4" class="num">4</a>
<a href="/board/notice?page=5" class="num">5</a>
<a href="/board/notice?page=6" class="btn_next_list active"><i class="sp_icon ico_next_list">다음목록 10개로 이동</i></a>


            
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