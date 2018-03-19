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
        <form name="step2" id="step2">
	    <input type="hidden" name="spaceId" value="12228"/>
	    <input type="hidden" name="rgstTpCd" value="wsmod"/>
        <section id="contents" class="contents contents_register" role="main">
			 <div class="heading">
				<h3>기본 정보를 입력해주세요.</h3>
				<span class="option">
					<span class="txt_required">
						<span class="ico_required">*</span>
						필수입력
					</span>
				</span>
			</div>
			<div class="box_form">
        <div class="tit">
					<label for="space_name">
						공간 이름
						<span class="ico_required">*</span>
					</label>
				</div>
        <span class="option">
          <span class="txt_count">
            <em id="spcNmCnt">0</em>자/<em>18</em>자
          </span>
        </span>
				<div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
					<input type="text" id="space_name" name="spcNm" value="수련의 공간" placeholder="공간명을 입력해주세요." _errorEl="_spcNm_required" maxLength="18"  _lcount="spcNmCnt" required>
				</div>
				<p class="p_guide normal"><i class="sp_icon ico_alert"></i>사용 가능한 특수문자 : ( , ) , [ , ] , - , .(마침표), ,(쉼표)</p>
				<p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간이름 입력은 필수입니다.</p>
			</div>

		    <!-- [D] 공간 유형 -->
           	<input type="hidden" name="category" id="space_category" value="14">
       		<input type="hidden" name="seatCnt" id="space_seatCnt" value="10">
           	<input type="hidden" name="minRsvPp" id="space_minRsvPp" value="1">
           	<input type="hidden" name="maxRsvPp" id="space_maxRsvPp" value="10">
           	<input type="hidden" name="dimensionSize" id="space_dimensionSize" value="33.0"> 
           	<input type="hidden" name="seatTpCd" id="space_seatTpCd" value=""> 
            <div class="office_area">
                <div class="office_area_inner">
                	<div class="box_form">
                		<div class="tit">
							공간 유형
							<span class="ico_required">*</span>
						</div>
	                    <ul class="workspace_list">
	                        <li class="workspace_item " data-type="12">
	                            <a href="javascript:void(0);" class="item_inner">독립오피스</a>
	                        </li>
	                        <li class="workspace_item " data-type="13">
	                            <a href="javascript:void(0);" class="item_inner">코워킹스페이스</a>
	                        </li>
	                        <li class="workspace_item selected" data-type="14">
	                           <a href="javascript:void(0);" class="item_inner">일하기 좋은 카페</a>
	                        </li>
	                        <li class="workspace_item " data-type="15">
	                            <a href="javascript:void(0);" class="item_inner">공동 작업실</a>
	                        </li>
	                    </ul>
                 	</div>

                 	<!-- 독립오피스 -->
                 	<div class="office_box" id="workspace_item12" style="display:none;">
	                    <div class="description_office">
	                        <h4 class="heading_office"><i class="sp_workspace ico_star"></i>독립 오피스란?</h4>
	                        <p class="p_office">개인 또는 한 팀이 프라이빗하게 이용할 수 있는 입주형 사무공간입니다</p>
	                    </div>

	                    <div class="flex_wrap column2">
	                        <div class="box_form">
	                            <div class="tit">
	                                <label for="space_size">
	                                    공간사이즈(㎡)
	                                    <span class="ico_required">*</span>
	                                </label>
	                            </div>
	                            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                                <input type="text" id="space_size" class="dimensionSizeInput onlyNum" maxLength="8" placeholder="공간 사이즈를 입력해 주세요." value="33.0" >
	                            </div>
	                            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간사이즈 입력은 필수입니다.</p>
	                        </div>
	                        <div class="box_form">
	                            <div class="tit">
	                                <label for="spacenum">
	                                    공간 재고(서비스 가능한 룸 수)
	                                    <span class="ico_required">*</span>
	                                </label>
	                            </div>
	                            <div class="box_setting">
									<span class="input">
										<input type="tel" class="number_set seatCntInput" id="spacenum" min="1" max='1000' maxLength="4" value="10" >
									</span>
                                    <!-- [D] btn_minus/btn_plus 클릭 시, spacenum 값을 감소/증가시켜주세요. -->
									<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
									<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
								</div>
	                        </div>
	                    </div>

	                    <div class="box_form">
		                   	<div class="tit">
		                            수용인원(한 공간기준)
		                            <span class="ico_required">*</span>
		                    </div>
		                 	<div class="flex_wrap column2">
								<dl class="flex_box type_horizon">
									<dt class="flex tit">
										<label for="min1">최소 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set minRsvPpInput" id="min1" min="1" _minRelation='max1' maxLength="4" value="1" >
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, min1 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>
								<dl class="flex_box type_horizon">
									<dt class="flex tit">
										<label for="max1">최대 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set maxRsvPpInput" id="max1" min="1" _maxRelation='min1' maxLength="4" value="10" >
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, max1 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>

							</div>
						</div>
					</div>
					<!-- 코워킹스페이스 -->
					<div class="office_box" id="workspace_item13" style="display:none;">
	                    <div class="description_office">
	                        <h4 class="heading_office"><i class="sp_workspace ico_star"></i>코워킹스페이스란?</h4>
	                        <p class="p_office">개방된 공간에 개인 또는 여러 팀이 함께 이용할 수 있는 형태의 사무공간 입니다. 공간 운영 방식에 따라 자유석 또는 지정석으로 이용할 수 있습니다.</p>
	                    </div>
	                    <div class="flex_wrap column2">
	                        <div class="box_form">
								<div class="tit">
									좌석 종류
									<span class="ico_required">*</span>
								</div>
								<div class="checkbox_seat_type">
									<input type="checkbox" name="seat" id="seat_fixed" class="checkbox" data-cd="FIX"  _errorEl="seatTypeError" >
									<label for="seat_fixed">고정석</label>
								</div>
								<div class="checkbox_seat_type" id='seatTypeError'>
									<input type="checkbox" name="seat" id="seat_free" class="checkbox" data-cd="FRDM"  _errorEl="seatTypeError" >
									<label for="seat_free">자유석</label>
								</div>
								<p class="p_guide warn"><i class="sp_icon ico_alert"></i>좌석 종류를 한 가지 이상 선택하세요.</p>
	                        </div>

	                        <div class="box_form">
	                            <div class="tit">
                                	<label for="seatnum1">
                                        좌석수
	                                    <span class="ico_required">*</span>
	                                </label>
	                            </div>
	                            <div class="box_setting">
									<span class="input">
										<input type="tel" class="number_set seatCntInput" id="seatnum1" min="1" max='1000' _maxRelation='max2' maxLength="4" value="10" >
									</span>
                                    <!-- [D] btn_minus/btn_plus 클릭 시, seatnum1 값을 감소/증가시켜주세요. -->
									<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
									<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
								</div>
	                        </div>
	                    </div>

	                    <div class="box_form">
		                   	<div class="tit">
	                        	예약 가능 인원
	                            <span class="ico_required">*</span>
		                    </div>
		                 	<div class="flex_wrap column2">
								<dl class="flex_box type_horizon">
									<dt class="flex tit">
										<label for="min2">최소 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set minRsvPpInput" id="min2" min="1" _maxTargetEl='seatnum1' _minRelation='max2' maxLength="4" value="1" >
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, min2 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>
								<dl class="flex_box type_horizon">
									<dt class="flex tit">
										<label for="max2">최대 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set maxRsvPpInput" id="max2" min="1" _maxTargetEl='seatnum1' _maxRelation='min2' maxLength="4" value="10" >
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, max2 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>

							</div>
						</div>
					</div>
					<!-- 일하기 좋은 카페 -->
					<div class="office_box" id="workspace_item14" style="">
	                    <div class="description_office">
	                        <h4 class="heading_office"><i class="sp_workspace ico_star"></i>일하기 좋은 카페란?</h4>
	                        <p class="p_office">업무가 가능한 기본 편의시설(WIFI, 콘센트)을 갖추고, 예약시 한 자리에 종일 이용이 가능한 카페 입니다.</p>
	                    </div>
	                    <div class="flex_wrap column2">
	                        <div class="box_form">
	                            <div class="tit">
	                                <label for="seatnum2">
	                                    좌석 수
	                                    <span class="ico_required">*</span>
	                                </label>
	                            </div>
                            	<div class="box_setting">
									<span class="input">
										<input type="tel" class="number_set seatCntInput" id="seatnum2" min="1" max='1000' _maxRelation='max3' maxLength="4" value="10" required>
									</span>
                                    <!-- [D] btn_minus/btn_plus 클릭 시, seatnum2 값을 감소/증가시켜주세요. -->
									<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
									<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
								</div>
	                        </div>
	                        <div class="box_form">
			                   	<div class="tit">
		                        	예약 가능 인원
		                            <span class="ico_required">*</span>
			                    </div>
								<dl class="flex_box type_vertical">
									<dt class="flex tit">
										<label for="min3">최소 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set minRsvPpInput" id="min3" min="1" _maxTargetEl='seatnum2' _minRelation='max3' maxLength="4" value="1" required>
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, min3 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>
								<dl class="flex_box type_vertical">
									<dt class="flex tit">
										<label for="max3">최대 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set maxRsvPpInput" id="max3" min="1" _maxTargetEl='seatnum2' _maxRelation='min3' maxLength="4" value="10" required>
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, max3 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>
							</div>
	                    </div>
					</div>

					<!-- 공동 작업실 -->
					<div class="office_box" id="workspace_item15" style="display:none;">
	                    <div class="description_office">
	                        <h4 class="heading_office"><i class="sp_workspace ico_star"></i>공동 작업실이란?</h4>
	                        <p class="p_office">개인 또는 회사의 사무실 또는 작업실, 스튜디오, 랩실, 공방 등을 공유한 공간 입니다.</p>
	                    </div>
	                    <div class="flex_wrap column2">
	                        <div class="box_form">
	                            <div class="tit">
	                                <label for="seatnum3">
	                                    좌석 수
	                                    <span class="ico_required">*</span>
	                                </label>
	                            </div>
                            	<div class="box_setting">
									<span class="input">
										<input type="tel" class="number_set seatCntInput" id="seatnum3" min="1" max='1000' _maxRelation='max4' maxLength="4" value="10" >
									</span>
                                    <!-- [D] btn_minus/btn_plus 클릭 시, seatnum3 값을 감소/증가시켜주세요. -->
									<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
									<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
								</div>
	                        </div>
	                        <div class="box_form">
			                   	<div class="tit">
		                        	예약 가능 인원
		                            <span class="ico_required">*</span>
			                    </div>
								<dl class="flex_box type_vertical">
									<dt class="flex tit">
										<label for="min4">최소 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set minRsvPpInput" id="min4" min="1" _maxTargetEl='seatnum3' _minRelation='max4'maxLength="4" value="1" >
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, min4 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>
								<dl class="flex_box type_vertical">
									<dt class="flex tit">
										<label for="max4">최대 인원</label>
									</dt>
									<dd class="flex data">
										<div class="box_setting">
											<span class="input">
												<input type="tel" class="number_set maxRsvPpInput" id="max4" min="1" _maxTargetEl='seatnum3' _maxRelation='min4' maxLength="4" value="10" >
											</span>
                                            <!-- [D] btn_minus/btn_plus 클릭 시, max4 값을 감소/증가시켜주세요. -->
											<a href="javascript:void(0);" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
											<a href="javascript:void(0);" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
										</div>
									</dd>
								</dl>
							</div>
	                    </div>
					</div>
                </div>
            </div>
            <!-- [D] 공간 한줄 소개 -->
            <div class="box_form">
				<div class="tit">
					<label for="space_intro">
						공간 한줄 소개
						<span class="ico_required">*</span>
					</label>
				</div>
				<span class="option">
					<span class="txt_count">
						<em id="subTtlCnt">0</em>자/<em>27</em>자
					</span>
				</span>
				<div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
					<input type="text" name="subTtl" id="space_intro" placeholder="공간을 소개하는 한줄 문장을 입력해주세요."
                 _errorEl="_subTtl_required" maxLength="27" value="땀과 피를 흘리며 퍼포먼스를 향상시키기 위한 장소" _lcount="subTtlCnt" required>
				</div>
				<p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간을 소개하는 한 줄은 필수입니다.</p>
			</div>
            <!-- [D] 공간 소개 -->
            <div class="box_form">
				<div class="tit">
					<label for="space_text">
						공간 소개
						<span class="ico_required">*</span>
					</label>
				</div>
        <span class="option">
            <span class="txt_count"><em id="spcDescCnt">0</em>자/<em>500</em>자<span class="txt_guide">(최소 20자)</span></span>
        </span>
        <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
            <textarea id="space_text" name="spcDesc" placeholder="공간을 상세하게 소개해보세요. 공간의 특징이나 주변환경 등의 세부정보를 작성하시면 효과적입니다."
                      _errorEl="_spcDesc_required" minLength="20" maxLength="500" style="height:108px" _lcount="spcDescCnt" required >지하철 에서 도보 10분&#44; 시내 가까움.</textarea>
        </div>
				<p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간 소개는 필수 입력입니다.</p>
			</div>

			<!-- [D] 공간태그 -->
		<div class="box_form">
			<div class="tit">공간태그 <span class="ico_required">*</span></div>
			<p class="option">최대 5개</p>
			<div class="input_add _spaceTag"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
				<input type="text" name="spaceTagInput" maxLength="10" id="_spaceTagInput" _enter="spaceTagEnter" placeholder="태그를 입력해 주세요.">
				<div class="btn_box">
					<a href="javascript:void(0);" class="btn" id="spaceTagEnter"><span class="btn_inner">추가</span></a>
				</div>
			</div>
			<div class="tag_wrap" id="_tag_required">
				<input type="hidden" id="_tagRequiredTarget" _errorEl="_tag_required" value="Y" required>
				
					<span class="tag_detail">#마스터
						<input type="hidden" value="마스터" name="spcTag"/>
						<a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
					</span>
				
					<span class="tag_detail">#고행
						<input type="hidden" value="고행" name="spcTag"/>
						<a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
					</span>
				
					<span class="tag_detail">#채찍
						<input type="hidden" value="채찍" name="spcTag"/>
						<a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
					</span>
				
			</div>
			<p class="p_guide warn">
				<i class="sp_icon ico_alert"></i>
				공간태그는 필수 입력입니다.
			</p>
		</div>

			<!-- [D] 대표이미지 -->
			<div class="box_form">
				<span class="tit">
					대표이미지
					<span class="ico_required">*</span>
				</span>
				<p class="option">2048 *1158 권장, 최대 10MB</p>
        

<div class="file" id="repImageYnError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	<div class="inner inner_img" id="srimgDest">
		<div id="_noneImg">이미지 파일을 추가해 주세요. (JPG, JPEG, PNG)</div>
		
		<input type="hidden" name="repImageYn" id="repImageYn" required/>
		
	</div>
	<div class="btn_box">
		<label class="btn" for="srimg">
			<div>파일첨부</div>
			<input type="file" class="_fileRel" name="uploadFile" id="srimg" style="display:none;" _single="true" accept="image/*">
		</label>
		
	</div>
</div>
<p class="p_guide warn"><i class="sp_icon ico_alert"></i>대표이미지는 필수 입력입니다.</p>
			</div>

			<!-- [D] 상품이미지 -->
			<div class="box_form">
				<span class="tit">이미지</span>
				<p class="option">
					 2048 *1158 권장, 한 장당 최대 10MB
					 <span class="txt_guide">(최대 10장)</span>
				</p>
        

<div class="file" id="repImageYnError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	<div class="inner inner_img" id="snimgDest">
		<div id="_noneImg">이미지 파일을 추가해 주세요. (JPG, JPEG, PNG)</div>
		
	</div>
	<div class="btn_box">
		<label class="btn" for="snimg">
			<div>파일첨부</div>
			<input type="file" class="_fileRel" name="uploadFile" id="snimg" style="display:none;"  accept="image/*">
		</label>
		
		<div class="nav_btn">
			<!-- [D] 클릭시 class="active" 추가 -->
			<a href="javascript:void(0);" class="btn_move" _type="prev" _targetEl="snimgDest"><i class="sp_icon ico_select_prev"></i><em class="blind">앞으로 순서 이동</em></a>
			<a href="javascript:void(0);" class="btn_move" _type="del" _targetEl="snimgDest"><i class="sp_icon ico_select_del"></i><em class="blind">삭제</em></a>
			<a href="javascript:void(0);" class="btn_move" _type="next" _targetEl="snimgDest"><i class="sp_icon ico_select_next"></i><em class="blind">뒤로 순서 이동</em></a>
		</div>
		
	</div>
</div>
<p class="p_guide warn"><i class="sp_icon ico_alert"></i>대표이미지는 필수 입력입니다.</p>
			</div>

			<div class="box_form">
				<div class="tit">
					<label for="space_story">공간 스토리</label>
				</div>
				<span class="option">최대 5개</span>
				<div class="input_add"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
					<input type="text" id="space_story" placeholder="공간의 생생한 블로그/포스트 후기 링크를 등록해보세요.">
					<div class="btn_box _addStory">
						<a href="javascript:void(0);" class="btn" id="_storyBtn">
							<span class="btn_inner">추가</span>
						</a>
						<!-- [D] 링크 추가 중일 경우 버튼 노출  -->
						<a href="javascript:void(0);" class="btn type_link" id="_storyOnBtn" style="display:none;">
							<em class="m_hidden">링크</em> 추가 중
						</a>
					</div>
				</div>
				<div id="applied_story" class="input_add_text" style="display:none;">
					
				</div>
				<p class="p_guide normal">
					<i class="sp_icon ico_alert"></i>
					네이버 블로그/포스트에서 작성된 링크만 노출하실 수 있습니다.
				</p>
			</div>
			
			<!-- [D] 주소 -->
			<div class="box_form" id="_location">
				<span class="tit">
					<label for="sp_adrs">
						주소(위치)
						<span class="ico_required">*</span>
					</label>
				</span>
        <div class="file"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
            <input type="hidden" name="cortarNo" id="_cortarNo" value="4137012200" _errorEl="addrError"  required/>
            <input type="hidden" name="lat" id="_lat" value="37.135685" _errorEl="addrError"  required/>
            <input type="hidden" name="lng" id="_lng" value="127.08483" _errorEl="addrError"  required/>
            <input type="text" class="_openSearchAddressPopUp" name="spaceAddr" id="_spaceAddress" value="경기도 오산시 대원동 28-2" placeholder="주소를 등록해주세요."  readonly>
            <div class="btn_box">
                <a href="javascript:void(0);" class="btn _openSearchAddressPopUp" title="주소 등록">주소등록</a>
            </div>
        </div>
        <div class="input" id="addrError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
            <input type="text" name="spcDtlAddr" id="sp_adrs" value="행복레져센터 지하 78층" _errorEl="addrError" placeholder="상세 주소를 입력해주세요." required>
        </div>
        <p class="p_guide warn"><i class="sp_icon ico_alert"></i>주소(위치)는 필수 입력입니다.</p>
    </div>
  </section>
</form>
        <!-- //contents -->
        <!-- [D] 컨텐츠 길이가 790 이하일 경우 class="fixed" 추가 / 모바일일경우 400이하일 때 class="fixed"추가 -->
        <div class="fixed_bar">
            <span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_prev" id="_preStep">이전</a></span>
            <span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_next" id="_nextStep">저장</a></span>
        </div>
        <div class="p_notification">성공적으로 저장되었습니다.</div>
    </div>
<!-- layer popup  : 위치 중앙 정렬 스크립트 필요 -->

<div class="layer_popup address oversize" id="map" style="display:none;" >
    <div class="popup_wrap">
        <div class="pop_header">주소등록</div>
        <div class="pop_container">
            <div class="box_form">
                    <span class="tit">
                        <label for="sp_adrspop">
                            주소검색
                            <span class="ico_required">*</span>
                        </label>
                    </span>
                <div class="search_wrap">
                    <div class="input">
                        <input type="text" name="" id="sp_adrspop" _enter="_mapSearchBtn" placeholder="주소 전체를 입력해주세요. ">
                    </div>
                    <p class="p_guide normal">
                        <i class="sp_icon ico_alert"></i>
                        구 주소, 신 주소 둘다 가능 (Ex) 경기도 성남시 분당구 정자동 178-1(경기도 성남시 분당구 불정로 6)
                    </p>
                    <a href="javascript:void(0);" class="btn btn_full btn_default" id="_mapSearchBtn"><i class="sp_icon ico_btn_search"></i>검색</a>
                </div>

            </div>
            <div class="map_area none">
                <!-- [D] 검색 후 중복지역 있는 경우 -->
                <input type="hidden" id="_mapAddress" name="mapAddress" value="" />
                <input type="hidden" id="_markerLat" name="_markerLat" value="" />
                <input type="hidden" id="_markerLng" name="_markerLng" value=""/>
                <p class="p_map_guide" id="_multi_map_result" style="display:none;">
                </p>
                <div class="map" id="_mapLayer" style="border:1px solid #e0e0e0;">
                </div>
            </div>
            <div class="btns">
                <a href=javascript:void(0); class="btn btn_full btn_negative" id="_closeSearchAddr" _popcls="map">닫기</a>
                <a href=javascript:void(0); class="btn btn_full btn_default" id="_registAddr">주소등록</a>
            </div>
        </div>
        <a href=javascript:void(0); class="btn_pop_close" title="레이어팝업 닫힘" _popcls="map"><i class="sp_icon ico_pop_close">레이어팝업닫기</i></a>
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
	currentStep : 'step2',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	,imageList : [{"imgSeq":220879,"originFile":"/home1/irteam/owfs/contents/temp/school_t580.jpg","imgUrl":"/20180212_11/15184321097509k8yp_JPEG/school_t580.jpg","imgTpCd":"SRIMG"},{"imgSeq":220880,"originFile":"/home1/irteam/owfs/contents/temp/ajEAV4x_460s.jpg","imgUrl":"/20180212_274/1518432114066jcJ7n_JPEG/ajEAV4x_460s.jpg","imgTpCd":"SNIMG"}]	// [{imagePathList}]
	
	
};
</script>
</html>