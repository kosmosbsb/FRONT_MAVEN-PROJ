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
        <form name="step6" id="step6">
	    <input type="hidden" name="spaceId" value="12228"/>
	    <input type="hidden" name="rgstTpCd" value="wsmod"/>
		<section id="contents" class="contents contents_register" role="main">
			<article class="price_info">
				<div class="heading">
					<h3>공간을 어떤 단위로 공유하실건가요?</h3>
	                <span class="option">
	                    <span class="txt_required">
	                        <span class="ico_required">*</span>
	                        필수입력
	                    </span>
	                </span>
				</div>
				<div class="col_wrap " id='priceUnitError'>
				    <div class="col col6">
				        <input type="checkbox" name="dayPricePolicy.expsYn" value="Y" id="unit_day" class="checkbox" checked _errorel='priceUnitError' _relative_div='pricePolicy_DAY' _group_name='priceUnit' required>
				        <label for="unit_day">일단위</label>
				    </div>
				    <div class="col col6">
				        <input type="checkbox" name="monthPricePolicy.expsYn" value="Y" id="unit_month" class="checkbox"  _errorel='priceUnitError' _relative_div='pricePolicy_MONTH' _group_name='priceUnit' required>
				        <label for="unit_month">월단위</label>
				    </div>
				</div>
				<p class="p_guide normal usual"><i class="sp_icon ico_alert"></i>예약을 승인하실 때, 할인 또는 추가 비용을 게스트에게 요청할 수 있으니 우선 기본 가격 기준으로 입력해주세요.</p>
				<p class="p_guide warn"><i class="sp_icon ico_alert"></i>예약 단위를 선택하셔야 가격 정보를 입력하실 수 있습니다!</p>
			</article>
			<div id="pricePolicy_DAY" style="">
				<article class="price_info">
					<div class="heading">
						<h3>일단위
							<span class="ico_required">
								*
								<span class="blind">필수입력</span>
							</span>
						</h3>
					</div>
					<div class="flex_wrap column2">
						<div class="box_form">
							<dl class="flex_box type_vertical" id='dayPricePolicy_stdPrcError'>
								<dt class="flex tit">
									<label for="price_day_default">기본 가격</label>
								</dt>
								<dd class="flex data">
									<span class="input won active">
										<input type="hidden" name="dayPricePolicy.rsvTpCd" value="DAY">
										<input type="tel" id="price_day_default" class="onlyNum commify _pricecheck" _pricecheck min='0' max='50000000' maxLength="10" name="dayPricePolicy.stdPrc" value="10000"  required _errorEl="dayPricePolicy_stdPrcError">
									</span>
								</dd>
							</dl>
							<p class="p_guide warn usual"><i class="sp_icon ico_alert"></i>반드시 VAT 포함가로 입력해주세요!</p>
							<p class="p_guide warn"><i class="sp_icon ico_alert"></i>가격은 0원(무료), 1,000원이상으로 입력해주세요. 10원 단위는 불가능합니다.</p>
						</div>
						<div class="box_form">
							<dl class="flex_box type_vertical">
								<dt class="flex tit">
									<label for="min_date">최소 예약일</label>
								</dt>
								<dd class="flex data">
									<div class="box_setting">
										<span class="input">
											<input type="tel" id="min_date" class="number_set" name="dayPricePolicy.minRsv" min="1" max='30' _minRelation='max_date' maxLength="2" value="1">
										</span>
										<!-- [D] btn_minus/btn_plus 클릭 시, min_date의 값을 감소/증가시켜주세요. -->
										<a href="#" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
										<a href="#" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
									</div>
								</dd>
							</dl>
							<dl class="flex_box type_vertical">
								<dt class="flex tit">
									<label for="max_date">최대 예약일</label>
								</dt>
								<dd class="flex data">
									<div class="box_setting">
										<span class="input">
											<input type="tel" id="max_date" class="number_set" name="dayPricePolicy.maxRsv" min="1" max='30' _maxRelation='min_date' maxLength="2" value="1">
										</span>
										<!-- [D] btn_minus/btn_plus 클릭 시, max_date의 값을 감소/증가시켜주세요. -->
										<a href="#" class="btn_minus"><i class="sp_icon ico_minus">1빼기</i></a>
										<a href="#" class="btn_plus"><i class="sp_icon ico_plus">1더하기</i></a>
									</div>
								</dd>
							</dl>
						</div>
					</div>
				</article>
				<article class="price_info">
					<div class="heading">
						<h3><label for="policy_day">일단위 가격 정책</label></h3>
                        <span class="option">
                            <span class="txt_count">
                                <em id='_priceInfoDayCnt'>0</em>자/<em>300</em>자
                            </span>
                        </span>
					</div>
					<div class="box_form">
						<div class="input">
							<textarea name="dayPricePolicy.detail" id="policy_day"  placeholder="예시) 7일 이상 이용시 20% 할인." maxlength="300" _lcount='_priceInfoDayCnt'>프리미엄 맴버쉽으로 기본 장비 지급</textarea>
						</div>
					</div>
					<p class="p_guide normal usual">
						<i class="sp_icon ico_alert"></i>
						일단위 기본가 이외에 할인/할증 정보가 있으면 위에 텍스트로 자세히 입력해주시고, 실제로 예약을 받으실 때는 위의 기준에 따라 최종 금액을 게스트에게 요청해주세요!
					</p>
				</article>
				<article class="price_info">
					<div class="heading">
						<h3>일단위 환불기준
							<span class="ico_required">
								*
								<span class="blind">필수입력</span>
							</span>
						</h3>
					</div>
					<div class="refund">
						<dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd8">이용 8일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd8" id="rfnd8">
		                        	<option value="100" selected>100 %</option>
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd7">이용 7일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd7" id="rfnd7">
		                        	
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" selected>90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" >80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" >70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" >60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" >50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" >30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" >10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd6">이용 6일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd6" id="rfnd6">
		                            
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" >90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" selected>80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" >70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" >60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" >50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" >30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" >10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd5">이용 5일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd5" id="rfnd5">
		                            
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" >90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" >80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" selected>70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" >60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" >50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" >30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" >10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd4">이용 4일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd4" id="rfnd4">
		                            
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" >90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" >80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" >70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" selected>60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" >50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" >30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" >10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd3">이용 3일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd3" id="rfnd3">
		                            
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" >90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" >80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" >70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" >60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" selected>50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" >30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" >10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd2">이용 2일 전</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd2" id="rfnd2">
		                            
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" >90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" >80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" >70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" >60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" >50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" selected>30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" >10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd1">이용 전날</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd1" id="rfnd1">
		                            
		                        		<option value="100" >100 %</option>
		                        	
		                        		<option value="95" >95 %</option>
		                        	
		                        		<option value="90" >90 %</option>
		                        	
		                        		<option value="85" >85 %</option>
		                        	
		                        		<option value="80" >80 %</option>
		                        	
		                        		<option value="75" >75 %</option>
		                        	
		                        		<option value="70" >70 %</option>
		                        	
		                        		<option value="65" >65 %</option>
		                        	
		                        		<option value="60" >60 %</option>
		                        	
		                        		<option value="55" >55 %</option>
		                        	
		                        		<option value="50" >50 %</option>
		                        	
		                        		<option value="45" >45 %</option>
		                        	
		                        		<option value="40" >40 %</option>
		                        	
		                        		<option value="35" >35 %</option>
		                        	
		                        		<option value="30" >30 %</option>
		                        	
		                        		<option value="25" >25 %</option>
		                        	
		                        		<option value="20" >20 %</option>
		                        	
		                        		<option value="15" >15 %</option>
		                        	
		                        		<option value="10" selected>10 %</option>
		                        	
		                        		<option value="5" >5 %</option>
		                        	
		                        		<option value="0" >환불불가</option>
		                        	
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
		            <dl class="flex_box">
		                <dt class="flex tit">
		                    <label for="rfnd0">이용 당일</label>
		                </dt>
		                <dd class="flex">
		                    총금액의
		                    <div class="select">
		                        <select name="dayPricePolicy.rfnd0" id="rfnd0">
	                        		<option value="0" selected>환불불가</option>
		                        </select>
		                    </div>
		                    환불
		                </dd>
		            </dl>
					</div>
					<p class="p_guide warn usual">
						<i class="sp_icon ico_alert"></i>
						환불/정산 관련 주의사항
					</p>
					<div class="flex_wrap column2 price_info">
						<div class="flex_box">
							<ul class="ul_guide">
								<li>이용기간이 2일 이상인 경우, 이용 첫날(당일) + 2영업일 이내에 정산해드립니다.</li>
								<li>이용 당일 이후에 발생하는 환불 건은 게스트와 직접 협의하시면 됩니다.</li>
								<li>5,000원 이상 결제 후 예약 취소시, 위의 기준으로 환불/정산 처리됩니다.</li>
								<li>5,000원 미만 결제하는 경우, 전액환불만 가능합니다.</li>
								<li>결제 후 2시간 이내에 취소하는 경우, 전액환불됩니다.</li>
							</ul>
						</div>
						<div class="flex_box">
							<p class="p_guide">
								이외에 자세한 내용은 운영정책을 참고해주세요.
								<br>
								<a href="/policySettlement" target="_blank">운영정책 바로가기</a>
							</p>
						</div>
					</div>
				</article>
			</div>
			<div id="pricePolicy_MONTH" style="display:none;">
				<article class="price_info">
					<div class="heading">
						<h3>1개월
							<span class="ico_required">
								*
								<span class="blind">필수입력</span>
							</span>
						</h3>
					</div>
					<div class="flex_wrap column2">
						<div class="box_form">
							<dl class="flex_box type_vertical" id='monthPricePolicy_stdPrcError'>
								<dt class="flex tit">
									<label for="price_month_default">기본 가격</label>
								</dt>
								<dd class="flex data">
									<span class="input won month active">
									<input type="hidden" name="monthPricePolicy.rsvTpCd" value="MONTH">
										<input type="tel" id="price_month_default" name="monthPricePolicy.stdPrc" class="onlyNum commify "  _pricecheck min='0' max='50000000' maxLength="10" value=""  _errorEl="monthPricePolicy_stdPrcError">
									</span>
								</dd>
							</dl>
						</div>
						
						
					</div>
					<p class="p_guide warn usual"><i class="sp_icon ico_alert"></i>반드시 VAT 포함가로 입력해주세요!</p>
					<p class="p_guide warn"><i class="sp_icon ico_alert"></i>가격은 0원(무료), 1,000원이상으로 입력해주세요. 10원 단위는 불가능합니다.</p>
					<p class="p_guide warn usual"><i class="sp_icon ico_alert"></i>스페이스클라우드에서는 1개월만 예약/결제 받으실 수 있습니다.</p>
					<p class="p_guide normal usual"><i class="sp_icon ico_alert"></i>1개월 기준은 30일입니다.</p>
				</article>
				<article class="price_info">
					<div class="heading">
						<h3><label for="policy_month">1개월 가격 정책</label></h3>
                        <span class="option">
                            <span class="txt_count">
                                <em id="_priceInfoMonthCnt">0</em>자/<em>300</em>자
                            </span>
                        </span>
					</div>
					<div class="box_form">
						<div class="input">
							<textarea name="monthPricePolicy.detail" id="policy_month" placeholder="예시) 1개월 이용 후 추가 이용시 DC 가능." maxlength="300" _lcount='_priceInfoMonthCnt'></textarea>
						</div>
					</div>
					<p class="p_guide normal usual">
						<i class="sp_icon ico_alert"></i>
						1개월 기본가 이외에 할인/할증 정보가 있으면 위에 텍스트로 자세히 입력해주시고, 실제로 예약을 받으실 때는 위의 기준에 따라 최종 금액을 게스트에게 요청해주세요!
					</p>
				</article>
				<article class="price_info">
					<div class="heading">
						<h3>1개월 환불기준
							<span class="ico_required">
								*
								<span class="blind">필수입력</span>
							</span>
						</h3>
					</div>
					<div class="box_form box_notice">
						<div class="list_wrap refund_rule">
							<dl class="flex_box refund">
								<dt class="flex tit">이용 8일 전</dt>
								<dd class="flex">총 금액의 100% 환불</dd>
							</dl>
							<dl class="flex_box refund">
								<dt class="flex tit">이용 7일 전 ~ 이용 전일</dt>
								<dd class="flex">총 금액의 90% 환불</dd>
							</dl>
							<dl class="flex_box refund">
								<dt class="flex tit">이용 당일</dt>
								<dd class="flex">환불 불가</dd>
							</dl>
						</div>
					</div>
					<p class="p_guide normal usual">
						<i class="sp_icon ico_alert"></i>
						1개월로 예약을 받는 경우, 스페이스클라우드 환불기준(위)이 적용됩니다.(수정 불가)
					</p>
					<p class="p_guide warn usual">
						<i class="sp_icon ico_alert"></i>
						환불/정산 관련 주의사항
					</p>
					<div class="flex_wrap column2">
						<div class="flex_box">
							<ul class="ul_guide">
								<li>이용기간이 2일 이상인 경우, 이용 첫날(당일) + 2영업일 이내에 정산해드립니다.</li>
								<li>이용 당일 이후에 발생하는 환불 건은 게스트와 직접 협의하시면 됩니다.</li>
								<li>5,000원 이상 결제 후 예약 취소시, 위의 기준으로 환불/정산 처리됩니다.</li>
								<li>5,000원 미만 결제하는 경우, 전액환불만 가능합니다.</li>
								<li>결제 후 2시간 이내에 취소하는 경우, 전액환불됩니다.</li>
							</ul>
						</div>
						<div class="flex_box">
							<p class="p_guide">
								이외에 자세한 내용은 운영정책을 참고해주세요.
								<br>
								<a href="/policySettlement" target="_blank">운영정책 바로가기</a>
							</p>
						</div>
					</div>
				</article>
			</div>
		</section>
		</form>
		<div class="fixed_bar">
			<span class="btn_wrap"><a href="javascript:void(0)" class="fix_btn_prev" id="_preStep">이전</a></span>
			<span class="btn_wrap"><a href="javascript:void(0)" class="fix_btn_next" id="_nextStep">저장</a></span>
		</div>
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
	currentStep : 'step6',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	
};
</script>
</html>