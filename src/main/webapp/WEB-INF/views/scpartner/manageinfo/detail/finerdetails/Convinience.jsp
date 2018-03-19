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
        <form name="step5" id="step5">
	    <input type="hidden" name="spaceId" value="12228"/>
	    <input type="hidden" name="rgstTpCd" value="wsmod"/>
		<section id="contents" class="contents contents_register" role="main">
			<article>
				<div class="heading">
					<h3>필수 편의시설</h3>
				</div>
				<table>
					<caption><span class="blind">필수 편의시설</span></caption>
					<colgroup>
						<col class="item">
						<col class="desc">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="item">항목</th>
							<th scope="col" class="desc">설명</th>
						</tr>
					</thead>
					<tbody>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						<tr>
							<td class="item">콘센트</td>
							<td class="desc">
								<input type="hidden" name="convList[7].cnvTpCd" value="EPLUG">
								<input type="hidden" name="convList[7].useYn" value="Y">
								<input type="hidden" name="convList[7].payYn" value="N">
								<input type="hidden" id="cnvDesc_7" name="convList[7].cnvenDesc" value="">
								<button type="button" id="cnvDescBtn_7" class="btn_xsmall" _popup="convenience" _title="콘센트" _result_target="cnvDesc_7">입력</button>
							</td>
						</tr>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						<tr>
							<td class="item">인터넷/WIFI</td>
							<td class="desc">
								<input type="hidden" name="convList[24].cnvTpCd" value="WIFI">
								<input type="hidden" name="convList[24].useYn" value="Y">
								<input type="hidden" name="convList[24].payYn" value="N">
								<input type="hidden" id="cnvDesc_24" name="convList[24].cnvenDesc" value="">
								<button type="button" id="cnvDescBtn_24" class="btn_xsmall" _popup="convenience" _title="인터넷/WIFI" _result_target="cnvDesc_24">입력</button>
							</td>
						</tr>
						
						
						
						
						
						
					</tbody>
				</table>
			</article>
			<article>
				<div class="heading no_border">
					<h3>선택 편의시설</h3>
				</div>
				<p class="p_guide normal usual">
					<i class="sp_icon ico_alert"></i>
					보유하신 편의시설의 유료 유무와 상세설명을 입력해주세요.
				</p>
				<p class="p_guide warn usual">
					<i class="sp_icon ico_alert"></i>
					편의시설은 게스트를 위한 정보제공용 입니다. 예약시 별도 선택 및 결제는 불가 합니다.
				</p>
				
				<table class="amenity_option">
					<caption><span class="blind">선택 편의시설</span></caption>
					<colgroup>
						<col class="item">
						<col class="charge">
						<col class="desc">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="item">항목</th>
							<th scope="col">유료</th>
							<th scope="col" class="desc">설명</th>
						</tr>
					</thead>
					<tbody>
						
						
							
						<tr>
							<input type="hidden" name="convList[26].cnvTpCd" value="AIRCN">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_26" class="checkbox cnvUseCheck" name="convList[26].useYn" value="Y" checked>
									<label for="cnvUse_26">에어컨</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_26" class="checkbox cnvUse" name="convList[26].payYn" value="Y" >
									<label for="cnvPay_26"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_26" name="convList[26].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_26" class="btn_xsmall cnvUse" _popup="convenience" _title="에어컨" _result_target="cnvDesc_26" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[27].cnvTpCd" value="BIZRG">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_27" class="checkbox cnvUseCheck" name="convList[27].useYn" value="Y" checked>
									<label for="cnvUse_27">주소지 서비스</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_27" class="checkbox cnvUse" name="convList[27].payYn" value="Y" >
									<label for="cnvPay_27"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_27" name="convList[27].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_27" class="btn_xsmall cnvUse" _popup="convenience" _title="주소지 서비스" _result_target="cnvDesc_27" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[28].cnvTpCd" value="CAFE">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_28" class="checkbox cnvUseCheck" name="convList[28].useYn" value="Y" checked>
									<label for="cnvUse_28">카페 및 레스토랑</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_28" class="checkbox cnvUse" name="convList[28].payYn" value="Y" >
									<label for="cnvPay_28"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_28" name="convList[28].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_28" class="btn_xsmall cnvUse" _popup="convenience" _title="카페 및 레스토랑" _result_target="cnvDesc_28" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[29].cnvTpCd" value="CATR">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_29" class="checkbox cnvUseCheck" name="convList[29].useYn" value="Y" checked>
									<label for="cnvUse_29">케이터링</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_29" class="checkbox cnvUse" name="convList[29].payYn" value="Y" >
									<label for="cnvPay_29"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_29" name="convList[29].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_29" class="btn_xsmall cnvUse" _popup="convenience" _title="케이터링" _result_target="cnvDesc_29" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[30].cnvTpCd" value="CPY">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_30" class="checkbox cnvUseCheck" name="convList[30].useYn" value="Y" checked>
									<label for="cnvUse_30">복사/인쇄기</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_30" class="checkbox cnvUse" name="convList[30].payYn" value="Y" >
									<label for="cnvPay_30"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_30" name="convList[30].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_30" class="btn_xsmall cnvUse" _popup="convenience" _title="복사/인쇄기" _result_target="cnvDesc_30" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[31].cnvTpCd" value="DLVRY">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_31" class="checkbox cnvUseCheck" name="convList[31].useYn" value="Y" checked>
									<label for="cnvUse_31">택배발송서비스</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_31" class="checkbox cnvUse" name="convList[31].payYn" value="Y" >
									<label for="cnvPay_31"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_31" name="convList[31].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_31" class="btn_xsmall cnvUse" _popup="convenience" _title="택배발송서비스" _result_target="cnvDesc_31" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[32].cnvTpCd" value="DRLOK">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_32" class="checkbox cnvUseCheck" name="convList[32].useYn" value="Y" checked>
									<label for="cnvUse_32">도어락</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_32" class="checkbox cnvUse" name="convList[32].payYn" value="Y" >
									<label for="cnvPay_32"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_32" name="convList[32].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_32" class="btn_xsmall cnvUse" _popup="convenience" _title="도어락" _result_target="cnvDesc_32" >입력</button>
							</td>
						</tr>
						
						
						
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[34].cnvTpCd" value="FAX">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_34" class="checkbox cnvUseCheck" name="convList[34].useYn" value="Y" checked>
									<label for="cnvUse_34">팩스</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_34" class="checkbox cnvUse" name="convList[34].payYn" value="Y" >
									<label for="cnvPay_34"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_34" name="convList[34].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_34" class="btn_xsmall cnvUse" _popup="convenience" _title="팩스" _result_target="cnvDesc_34" >입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[35].cnvTpCd" value="FET">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_35" class="checkbox cnvUseCheck" name="convList[35].useYn" value="Y" >
									<label for="cnvUse_35">반려동물 동반가능</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_35" class="checkbox cnvUse" name="convList[35].payYn" value="Y" disabled>
									<label for="cnvPay_35"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_35" name="convList[35].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_35" class="btn_xsmall cnvUse" _popup="convenience" _title="반려동물 동반가능" _result_target="cnvDesc_35" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[36].cnvTpCd" value="H24">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_36" class="checkbox cnvUseCheck" name="convList[36].useYn" value="Y" >
									<label for="cnvUse_36">24시 운영</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_36" class="checkbox cnvUse" name="convList[36].payYn" value="Y" disabled>
									<label for="cnvPay_36"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_36" name="convList[36].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_36" class="btn_xsmall cnvUse" _popup="convenience" _title="24시 운영" _result_target="cnvDesc_36" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[37].cnvTpCd" value="HEATR">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_37" class="checkbox cnvUseCheck" name="convList[37].useYn" value="Y" >
									<label for="cnvUse_37">난방기</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_37" class="checkbox cnvUse" name="convList[37].payYn" value="Y" disabled>
									<label for="cnvPay_37"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_37" name="convList[37].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_37" class="btn_xsmall cnvUse" _popup="convenience" _title="난방기" _result_target="cnvDesc_37" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[38].cnvTpCd" value="MAIL">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_38" class="checkbox cnvUseCheck" name="convList[38].useYn" value="Y" >
									<label for="cnvUse_38">메일 서비스</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_38" class="checkbox cnvUse" name="convList[38].payYn" value="Y" disabled>
									<label for="cnvPay_38"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_38" name="convList[38].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_38" class="btn_xsmall cnvUse" _popup="convenience" _title="메일 서비스" _result_target="cnvDesc_38" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[39].cnvTpCd" value="NOBRK">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_39" class="checkbox cnvUseCheck" name="convList[39].useYn" value="Y" >
									<label for="cnvUse_39">연중무휴</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_39" class="checkbox cnvUse" name="convList[39].payYn" value="Y" disabled>
									<label for="cnvPay_39"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_39" name="convList[39].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_39" class="btn_xsmall cnvUse" _popup="convenience" _title="연중무휴" _result_target="cnvDesc_39" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[40].cnvTpCd" value="PARK">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_40" class="checkbox cnvUseCheck" name="convList[40].useYn" value="Y" >
									<label for="cnvUse_40">주차</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_40" class="checkbox cnvUse" name="convList[40].payYn" value="Y" disabled>
									<label for="cnvPay_40"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_40" name="convList[40].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_40" class="btn_xsmall cnvUse" _popup="convenience" _title="주차" _result_target="cnvDesc_40" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[41].cnvTpCd" value="PBLUG">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_41" class="checkbox cnvUseCheck" name="convList[41].useYn" value="Y" >
									<label for="cnvUse_41">공용라운지</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_41" class="checkbox cnvUse" name="convList[41].payYn" value="Y" disabled>
									<label for="cnvPay_41"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_41" name="convList[41].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_41" class="btn_xsmall cnvUse" _popup="convenience" _title="공용라운지" _result_target="cnvDesc_41" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[42].cnvTpCd" value="PBPTY">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_42" class="checkbox cnvUseCheck" name="convList[42].useYn" value="Y" >
									<label for="cnvUse_42">공용 주방</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_42" class="checkbox cnvUse" name="convList[42].payYn" value="Y" disabled>
									<label for="cnvPay_42"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_42" name="convList[42].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_42" class="btn_xsmall cnvUse" _popup="convenience" _title="공용 주방" _result_target="cnvDesc_42" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[43].cnvTpCd" value="PRFR">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_43" class="checkbox cnvUseCheck" name="convList[43].useYn" value="Y" >
									<label for="cnvUse_43">정수기</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_43" class="checkbox cnvUse" name="convList[43].payYn" value="Y" disabled>
									<label for="cnvPay_43"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_43" name="convList[43].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_43" class="btn_xsmall cnvUse" _popup="convenience" _title="정수기" _result_target="cnvDesc_43" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[44].cnvTpCd" value="RFTOP">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_44" class="checkbox cnvUseCheck" name="convList[44].useYn" value="Y" >
									<label for="cnvUse_44">테라스/루프탑</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_44" class="checkbox cnvUse" name="convList[44].payYn" value="Y" disabled>
									<label for="cnvPay_44"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_44" name="convList[44].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_44" class="btn_xsmall cnvUse" _popup="convenience" _title="테라스/루프탑" _result_target="cnvDesc_44" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[45].cnvTpCd" value="SNACK">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_45" class="checkbox cnvUseCheck" name="convList[45].useYn" value="Y" >
									<label for="cnvUse_45">간단한 다과 및 음료</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_45" class="checkbox cnvUse" name="convList[45].payYn" value="Y" disabled>
									<label for="cnvPay_45"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_45" name="convList[45].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_45" class="btn_xsmall cnvUse" _popup="convenience" _title="간단한 다과 및 음료" _result_target="cnvDesc_45" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[46].cnvTpCd" value="STASH">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_46" class="checkbox cnvUseCheck" name="convList[46].useYn" value="Y" >
									<label for="cnvUse_46">개인락커</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_46" class="checkbox cnvUse" name="convList[46].payYn" value="Y" disabled>
									<label for="cnvPay_46"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_46" name="convList[46].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_46" class="btn_xsmall cnvUse" _popup="convenience" _title="개인락커" _result_target="cnvDesc_46" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[47].cnvTpCd" value="SWR">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_47" class="checkbox cnvUseCheck" name="convList[47].useYn" value="Y" >
									<label for="cnvUse_47">샤워시설</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_47" class="checkbox cnvUse" name="convList[47].payYn" value="Y" disabled>
									<label for="cnvPay_47"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_47" name="convList[47].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_47" class="btn_xsmall cnvUse" _popup="convenience" _title="샤워시설" _result_target="cnvDesc_47" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[48].cnvTpCd" value="TVBM">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_48" class="checkbox cnvUseCheck" name="convList[48].useYn" value="Y" >
									<label for="cnvUse_48">TV/프로젝터</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_48" class="checkbox cnvUse" name="convList[48].payYn" value="Y" disabled>
									<label for="cnvPay_48"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_48" name="convList[48].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_48" class="btn_xsmall cnvUse" _popup="convenience" _title="TV/프로젝터" _result_target="cnvDesc_48" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[49].cnvTpCd" value="WBD">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_49" class="checkbox cnvUseCheck" name="convList[49].useYn" value="Y" >
									<label for="cnvUse_49">화이트보드</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_49" class="checkbox cnvUse" name="convList[49].payYn" value="Y" disabled>
									<label for="cnvPay_49"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_49" name="convList[49].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_49" class="btn_xsmall cnvUse" _popup="convenience" _title="화이트보드" _result_target="cnvDesc_49" disabled>입력</button>
							</td>
						</tr>
						
						
						
						
						
						
						
							
						<tr>
							<input type="hidden" name="convList[51].cnvTpCd" value="WRHUS">
							<td class="item">
								<span>
									<input type="checkbox" id="cnvUse_51" class="checkbox cnvUseCheck" name="convList[51].useYn" value="Y" >
									<label for="cnvUse_51">창고서비스</label>
								</span>
							</td>
							<td class="charge_item">
								<span class="charge_checkbox">
									<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
									
									<input type="checkbox" id="cnvPay_51" class="checkbox cnvUse" name="convList[51].payYn" value="Y" disabled>
									<label for="cnvPay_51"></label>
								</span>
							</td>
							<td class="desc">
								<input type="hidden" id="cnvDesc_51" name="convList[51].cnvenDesc" value="">
								<!-- [D] #item_tv가 체크되어있지 않으면, button에 disabled속성을 추가해주세요. -->
								
								<button type="button" id="cnvDescBtn_51" class="btn_xsmall cnvUse" _popup="convenience" _title="창고서비스" _result_target="cnvDesc_51" disabled>입력</button>
							</td>
						</tr>
						
						
						
					</tbody>
				</table>
			</article>
		</section>
		</form>
		<div class="fixed_bar">
			<span class="btn_wrap"><a href="javascript:void(0)" class="fix_btn_prev" id="_preStep">이전</a></span>
			<span class="btn_wrap"><a href="javascript:void(0)" class="fix_btn_next" id="_nextStep">저장</a></span>
		</div>
	</div>
<!-- layer popup  -->

<!-- [D] layerpopup 편의시설 설명 -->
 <div class="layer_popup workspace" id="convenience" style="display:none;">
	<div class="popup_wrap">
		<div class="pop_header">
			편의시설 설명
		</div>
		<div class="pop_container" _result_target>
			<p class="pop_guide_txt border"><strong class="popupTitle">복사/인쇄기</strong>에 대한 설명, 이용방법, <br>(유료라면)가격을 텍스트로 입력해주세요.</p>
			<div class="box_form">
				<div class="tit">
					<label for="desc">
						편의시설 설명
					</label>
				</div>
				<span class="option">
					<span class="txt_count">
							<em id="convenienceDescCnt">0</em>자/<em>100</em>자
					</span>
				</span>
				<div class="input">
					<textarea name="" id="desc" placeholder="" _lcount="convenienceDescCnt" maxlength="100"></textarea>
				</div>
			</div>
			<div class="btns">
				<a href="#" class="btn btn_full btn_negative" _popCls="convenience">취소</a>
				<a href="#" class="btn btn_full btn_default" _popCls="convenience" id="convenienceDescEnter">확인</a>
			</div>
		</div>
		
		<a href="#" class="btn_pop_close" title="레이어팝업 닫힘" _popCls="convenience"><i class="sp_icon ico_pop_close">레이어팝업닫기</i></a>
	</div>
</div>
<!-- //layer popup -->
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
	currentStep : 'step5',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	
};
</script>
</html>