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
        <form name="step4" id="step4">
	    <input type="hidden" name="spaceId" value="12228"/>
	    <input type="hidden" name="rgstTpCd" value="wsmod"/>
		<section id="contents" class="contents contents_register" role="main">
			<article>
				<div class="heading">
					<h3>운영시간</h3>
					<span class="option">
						<span class="txt_required">
							<span class="ico_required">*</span>
							필수입력
						</span>
					</span>
				</div>
				<div class="operate_area">
				
					<div class="flex_box operatingTimes" id="operatingTime_MON">
						<div class="flex day">월</div>
						<input type="hidden" name="operatingTimes[0].daywCd" value="MON">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_MON" class="checkbox brkCheck" name="operatingTimes[0].brkYn" value="Y" >
							<label for="break_MON">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_MON" class="checkbox alldayCheck" name="operatingTimes[0].alldayYn" value="Y"  >
							<label for="allday_MON">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select "> 
					                <select title="시작시간 선택" name="operatingTimes[0].startTime"  data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" selected>9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select ">
					                <select title="종료시간 선택" name="operatingTimes[0].endTime"  data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" selected>22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
					<div class="flex_box operatingTimes" id="operatingTime_TUE">
						<div class="flex day">화</div>
						<input type="hidden" name="operatingTimes[1].daywCd" value="TUE">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_TUE" class="checkbox brkCheck" name="operatingTimes[1].brkYn" value="Y" >
							<label for="break_TUE">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_TUE" class="checkbox alldayCheck" name="operatingTimes[1].alldayYn" value="Y"  >
							<label for="allday_TUE">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select "> 
					                <select title="시작시간 선택" name="operatingTimes[1].startTime"  data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" selected>9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select ">
					                <select title="종료시간 선택" name="operatingTimes[1].endTime"  data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" selected>22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
					<div class="flex_box operatingTimes" id="operatingTime_WED">
						<div class="flex day">수</div>
						<input type="hidden" name="operatingTimes[2].daywCd" value="WED">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_WED" class="checkbox brkCheck" name="operatingTimes[2].brkYn" value="Y" >
							<label for="break_WED">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_WED" class="checkbox alldayCheck" name="operatingTimes[2].alldayYn" value="Y"  >
							<label for="allday_WED">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select "> 
					                <select title="시작시간 선택" name="operatingTimes[2].startTime"  data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" selected>9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select ">
					                <select title="종료시간 선택" name="operatingTimes[2].endTime"  data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" selected>22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
					<div class="flex_box operatingTimes" id="operatingTime_THU">
						<div class="flex day">목</div>
						<input type="hidden" name="operatingTimes[3].daywCd" value="THU">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_THU" class="checkbox brkCheck" name="operatingTimes[3].brkYn" value="Y" >
							<label for="break_THU">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_THU" class="checkbox alldayCheck" name="operatingTimes[3].alldayYn" value="Y"  >
							<label for="allday_THU">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select "> 
					                <select title="시작시간 선택" name="operatingTimes[3].startTime"  data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" selected>9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select ">
					                <select title="종료시간 선택" name="operatingTimes[3].endTime"  data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" selected>22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
					<div class="flex_box operatingTimes" id="operatingTime_FRI">
						<div class="flex day">금</div>
						<input type="hidden" name="operatingTimes[4].daywCd" value="FRI">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_FRI" class="checkbox brkCheck" name="operatingTimes[4].brkYn" value="Y" >
							<label for="break_FRI">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_FRI" class="checkbox alldayCheck" name="operatingTimes[4].alldayYn" value="Y"  >
							<label for="allday_FRI">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select "> 
					                <select title="시작시간 선택" name="operatingTimes[4].startTime"  data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" selected>9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select ">
					                <select title="종료시간 선택" name="operatingTimes[4].endTime"  data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" selected>22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
					<div class="flex_box operatingTimes" id="operatingTime_SAT">
						<div class="flex day">토</div>
						<input type="hidden" name="operatingTimes[5].daywCd" value="SAT">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_SAT" class="checkbox brkCheck" name="operatingTimes[5].brkYn" value="Y" checked>
							<label for="break_SAT">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_SAT" class="checkbox alldayCheck" name="operatingTimes[5].alldayYn" value="Y"  disabled>
							<label for="allday_SAT">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select disabled"> 
					                <select title="시작시간 선택" name="operatingTimes[5].startTime" disabled data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select disabled">
					                <select title="종료시간 선택" name="operatingTimes[5].endTime" disabled data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
					<div class="flex_box operatingTimes" id="operatingTime_SUN">
						<div class="flex day">일</div>
						<input type="hidden" name="operatingTimes[6].daywCd" value="SUN">
						<div class="flex opencheck">
							
							<input type="checkbox" id="break_SUN" class="checkbox brkCheck" name="operatingTimes[6].brkYn" value="Y" checked>
							<label for="break_SUN">휴무</label>
						</div>
						<div class="flex opencheck">
							
							<input type="checkbox" id="allday_SUN" class="checkbox alldayCheck" name="operatingTimes[6].alldayYn" value="Y"  disabled>
							<label for="allday_SUN">24시 운영</label>
						</div>
						<div class="flex time">
		        			<div class="col col6">
		        				<div class="select disabled"> 
					                <select title="시작시간 선택" name="operatingTimes[6].startTime" disabled data-default-time="9:00">
									
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
		        			<div class="col col6">
								<div class="select disabled">
					                <select title="종료시간 선택" name="operatingTimes[6].endTime" disabled data-default-time="22:00">
					                
										<option value="0:00" >0:00</option>
									
										<option value="0:30" >0:30</option>
									
										<option value="1:00" >1:00</option>
									
										<option value="1:30" >1:30</option>
									
										<option value="2:00" >2:00</option>
									
										<option value="2:30" >2:30</option>
									
										<option value="3:00" >3:00</option>
									
										<option value="3:30" >3:30</option>
									
										<option value="4:00" >4:00</option>
									
										<option value="4:30" >4:30</option>
									
										<option value="5:00" >5:00</option>
									
										<option value="5:30" >5:30</option>
									
										<option value="6:00" >6:00</option>
									
										<option value="6:30" >6:30</option>
									
										<option value="7:00" >7:00</option>
									
										<option value="7:30" >7:30</option>
									
										<option value="8:00" >8:00</option>
									
										<option value="8:30" >8:30</option>
									
										<option value="9:00" >9:00</option>
									
										<option value="9:30" >9:30</option>
									
										<option value="10:00" >10:00</option>
									
										<option value="10:30" >10:30</option>
									
										<option value="11:00" >11:00</option>
									
										<option value="11:30" >11:30</option>
									
										<option value="12:00" >12:00</option>
									
										<option value="12:30" >12:30</option>
									
										<option value="13:00" >13:00</option>
									
										<option value="13:30" >13:30</option>
									
										<option value="14:00" >14:00</option>
									
										<option value="14:30" >14:30</option>
									
										<option value="15:00" >15:00</option>
									
										<option value="15:30" >15:30</option>
									
										<option value="16:00" >16:00</option>
									
										<option value="16:30" >16:30</option>
									
										<option value="17:00" >17:00</option>
									
										<option value="17:30" >17:30</option>
									
										<option value="18:00" >18:00</option>
									
										<option value="18:30" >18:30</option>
									
										<option value="19:00" >19:00</option>
									
										<option value="19:30" >19:30</option>
									
										<option value="20:00" >20:00</option>
									
										<option value="20:30" >20:30</option>
									
										<option value="21:00" >21:00</option>
									
										<option value="21:30" >21:30</option>
									
										<option value="22:00" >22:00</option>
									
										<option value="22:30" >22:30</option>
									
										<option value="23:00" >23:00</option>
									
										<option value="23:30" >23:30</option>
									
										<option value="24:00" >24:00</option>
									
					                </select>
					            </div>
		        			</div>
						</div>
					</div>
				
				</div>
			</article>
			<div class="box_form">
				<div class="tit">
					<label for="_spcAttnMttrInput">
						 운영/휴무 관련 추가 안내사항
					</label>
				</div>
                <span class="option">
					<span class="txt_count">
						<em id="spcAttnMttrCnt">0</em>자/<em>100</em>자
					</span>
				</span>
                <div class="input_add" id="_spcAttnMttr"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" id="_spcAttnMttrInput" placeholder="최대 10개까지 작성가능합니다."  _enter="attnEnter" _lcount="spcAttnMttrCnt" maxLength="100">
	                <div class="btn_box">
	                    <a href="javascript:void(0);" class="btn _addGuide" id="attnEnter" _type="spcAttnMttr">
	                        <span class="btn_inner">추가</span>
	                    </a>
	                </div>
	            </div>
	            <div class="input_add_text" id="_spcAttnMttrList"  style="display:none;">
	                <input type="hidden" id="_attnMttrRequiredTarget" value="">
	                
	            </div>
				<p class="p_guide normal">
                    <i class="sp_icon ico_alert"></i>
                    운영시간 또는 휴일 정보에 대해 꼼꼼하게 작성해주세요!
                </p>
			</div>
		</section>
		</form>
		<div class="fixed_bar">
			<span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_prev" id="_preStep">이전</a></span>
			<span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_next" id="_nextStep">저장</a></span>
		</div>
		<!--  [D] top버튼 스크롤 하단에서 class="bottom" 추가 -->
		<a href="#" class="btn_fixed_top">
            <span class="sp_icon ico_top">페이지 상단으로 이동</span>
        </a>
		<!-- //contents -->

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
	currentStep : 'step4',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	
};
</script>
</html>