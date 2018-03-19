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
<div class="wrap main">
    <header class="header main">
        <h1><a href="javascript:void(0);" class="logo"><i class="sp_icon ico_index_logo">SpaceCloud</i></a></h1>
        <span class="logo_txt">호스트센터</span>
        
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
    <!-- wrap -->
    <div id="content_wraper" role="main">
	<div class="section_cover intro">
		<div class="intro_wrap">
			<div class="logo_intro sp_icon">스페이스 클라우드</div>
			<h2>지금 <em>바로 </em>공간을 공유해보세요!</h2>
			<p class="desc">스터디룸, 파티룸, 오피스 등 다양한 모임&amp;업무공간을<br> 스페이스클라우드를 통해 공유해보세요!</p>
			<div class="btn_area">
				<div class="btn_wrap">
					<a href="/rgst" class="btn nclk" _nclk="hit.submit">공간 등록하기</a>
				</div>
				<div class="btn_wrap">
					<a href="/download/guide/registmanual" class="btn btn_manual nclk" _nclk="hit.manual">공간 등록 매뉴얼</a>
				</div>
			</div>
			<p class="desc qna">궁금한 점이 있으신가요? <a href="https://talk.naver.com/ct/wc89we" target="_blank">1:1문의하기</a></p>
		</div>
	</div>
	<div class="section_cont">
		
		<div class="slide_wrap">
			<div id="scrollerWrap">
				<div id="scroller">
					<ul class="slides" id="_bannerList">
						
						<li class="slide ">
						
							
							
							<span style="background-image: url(https://scloud.pstatic.net/20180102_289/1514863556672UXXLd_PNG/20180102_main_banner_pc_1.png);" class="img"></span>
							
						
							<a href="http://partner.spacecloud.kr/board/notice#384" class="inner">
								<div class="inner_cell">
									<h3 class="h_promt">필독 공지사항</h3>
									<p class="tit_promt">
										<span class="quote">필독! 공간 내 CCTV 설치 및<br>운영에 대한 권고안</span>
									</p>
									<span class="btn_opacity">바로가기</span>
								</div>
							</a>
						</li>
						
						<li class="slide ">
						
							
							
							<span style="background-image: url(https://scloud.pstatic.net/20171023_208/1508748223447DVWLq_PNG/170627_event_banner_pc_01.png);" class="img"></span>
							
						
							<a href="http://partner.spacecloud.kr/board/notice?category=&search=사무공간#337" class="inner">
								<div class="inner_cell">
									<h3 class="h_promt">네이버공간지원사업 호스트모집</h3>
									<p class="tit_promt">
										<span class="quote">네이버 스토어팜 창업가를 위한<br>1인 사무 공간을 모집합니다!</span>
									</p>
									<span class="btn_opacity">바로가기</span>
								</div>
							</a>
						</li>
						
						<li class="slide ">
						
							
							
							<span style="background-image: url(https://scloud.pstatic.net/20170823_53/1503463591020sKWOC_PNG/20170822_banner_pc.png);" class="img"></span>
							
						
							<a href="http://partner.spacecloud.kr/board/notice?category=&search=네이버공간지원#310" class="inner">
								<div class="inner_cell">
									<h3 class="h_promt">네이버공간지원사업 호스트모집</h3>
									<p class="tit_promt">
										<span class="quote">네이버 스토어팜 창업가를 위한<br>사진 촬영 공간을 모집합니다!</span>
									</p>
									<span class="btn_opacity">바로가기</span>
								</div>
							</a>
						</li>
						
						<li class="slide ">
						
							
							
							<span style="background-image: url(https://scloud.pstatic.net/20170628_105/1498634773436UHlCu_PNG/170628_event_banner_pc.png);" class="img"></span>
							
						
							<a href="http://partner.spacecloud.kr/board/notice?category=&search=전문%20포토그래퍼가#297" class="inner">
								<div class="inner_cell">
									<h3 class="h_promt">사진촬영 서비스</h3>
									<p class="tit_promt">
										<span class="quote">지금! 공간등록하면<br>무료로 공간사진을<br>촬영해드립니다! </span>
									</p>
									<span class="btn_opacity">바로가기</span>
								</div>
							</a>
						</li>
						
						<li class="slide ">
						
							
							
							<span style="background-image: url(https://scloud.pstatic.net/20170324_126/1490325327311UV1BG_JPEG/170320_main_banner_pc.jpg);" class="img"></span>
							
						
							<a href="http://blog.naver.com/spacecloud/220954029421" class="inner">
								<div class="inner_cell">
									<h3 class="h_promt">스페이스클라우드 FAQ</h3>
									<p class="tit_promt">
										<span class="quote">공간등록과 운영<br>
어렵지 않아요!<br>
자주 묻는 질문 모음</span>
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
				</a>
				
				<a href="javascript:void(0);" class="btn_slide_next _banNext">
					<i class="sp_icon ico_slide_next">다음으로 이동</i>
				</a>
			</div>
		</div>
		
		
		<div class="notice_wrap">
			<div class="title_wrap">
				<h3 class="title">공지사항</h3>
				<span class="desc">스페이스 클라우드의 다양한 소식을 알려줍니다.</span>
			</div>
			<ul class="notice_list">
				
				<li class="notice_item">
					<a href="/board/notice?page=1#393" class="notice_link">
						<strong>2018년 설연휴 기간 고객센터 운영 안내</strong>
						<em class="date">2018-02-13</em>
					</a>
				</li>
				
				<li class="notice_item">
					<a href="/board/notice?page=1#391" class="notice_link">
						<strong> [필독] 1공간 1유형 클린업 정책 안내 (+사전신청)</strong>
						<em class="date">2018-01-24</em>
					</a>
				</li>
				
				<li class="notice_item">
					<a href="/board/notice?page=1#389" class="notice_link">
						<strong>2018.01.16(화) 스페이스클라우드 고객센터 휴무 안내</strong>
						<em class="date">2018-01-15</em>
					</a>
				</li>
				
				<li class="notice_item">
					<a href="/board/notice?page=1#388" class="notice_link">
						<strong>연습실 지원 이벤트 제휴 호스트님을 모집합니다 (1/10-1/31) </strong>
						<em class="date">2018-01-10</em>
					</a>
				</li>
				
			<a href="/board/notice" class="link_more">
				<em>공지사항 더보기</em><span class="sp_workspace ico_arrow_more">공지사항 더보기</span>
			</a>
		</div>
		
		
		
		<div class="calculator_wrap">
			<div id="profit_calculator" class="calculator">
				<div class="calculator_header">
					<h3 class="title"><i class="sp_workspace ico_calculator"></i>공간공유 <br>예상수익 계산기</h3>
					<p class="desc">간단한 공간공유 예상수익 계산기입니다. <br>실제 지급액과는 차이가 있을 수 있습니다.</p>
				</div>
				
				<div class="calculator_body" data-calculator-body>
					<form>
						
						<div class="input_wrap">
							<strong class="calculator_label">예약단위</strong>
							<span class="input">
								<input type="radio" name="unit" id="unit_hour" value="unit_hour" class="radio" checked>
								<label for="unit_hour">시간단위</label>
							</span>
							<span class="input">
								<input type="radio" name="unit" id="unit_day" value="unit_day" class="radio">
								<label for="unit_day">일단위</label>
							</span>
							<span class="input">
								<input type="radio" name="unit" id="unit_month" value="unit_month" class="radio">
								<label for="unit_month">월단위</label>
							</span>
						</div>
						<div class="input_wrap">
							<label for="num_space" class="calculator_label">공유 공간/좌석 수</label>
							<span class="input col12 guide num">
								<input type="tel" id="num_space" maxlength="2" class="_input_number" data-key-enter="[data-calculator-submit]">
							</span>
						</div>
						<div class="input_wrap">
							<label for="price_space" class="calculator_label">가격</label>
							<span class="input col12 guide price">
								<input type="tel" id="price_space" title="시간 당 가격" maxlength="7" class="_input_money" data-key-enter="[data-calculator-submit]">
							</span>
						</div>
						
						<div class="input_wrap col_wrap">
							<strong class="calculator_label">공유</strong>
							<!-- [D] 시간단위 선택 시 -->
							<span class="input col col6 guide nhour">
								<input type="tel" id="hour_per_day" title="일일 공유 시간" maxlength="2" class="_input_number" data-key-enter="[data-calculator-submit]">
							</span>
							<!-- [D] 시간단위, 일단위 선택 시 -->
							<span class="input col col6 guide nday">
								<input type="tel" id="day_per_week" title="주당 공유 일 수" maxlength="1" class="_input_number" data-key-enter="[data-calculator-submit]">
							</span>
							<!-- [D] 월단위 선택 시 -->
							<span class="input col12 guide disabled">
								<input type="tel" title="없음" disabled>
							</span>
						</div>
						<a href="#" class="btn" role="button" data-calculator-submit>예상 수익 계산하기</a>
					</form>
					<div class="calculator_layer" data-result-layer>
						<strong class="result_title">월 예상 수익은?</strong>
						<p class="result_desc" data-result-desc>
							
						</p>
						
						<script id="template_hour" type="text/x-tmpl">
							<span class="line"><em>${space}개</em>의 공간을 <em>한시간에 ${price}원</em>에<br></span>
							<span class="line"><em>주 ${day}회,</em> <em>${hour}시간씩</em> 대관시!</span>
						</script>
						
						<script id="template_day" type="text/x-tmpl">
							<span class="line"><em>${space}개</em>의 공간을 <em>하루 ${price}원</em>에<br></span>
							<span class="line"><em>주 ${day}회</em> 대관시!</span>
						</script>
						
						<script id="template_month" type="text/x-tmpl">
							<span class="line"><em>${space}개</em>의 공간을 <em>월 ${price}원</em>에<br></span>
							<span class="line">대관시!</span>
						</script>

						<div class="result_value" data-result-total>
							
						</div>
						
						<script id="template_total" type="text/x-tmpl">
							<span class="text">월 예상 수익</span>
							<span class="total">\ <em>${profit}</em></span><br>
							<span class="commission">(서비스 수수료 \${commission})</span>
						</script>
						<a href="#" class="btn_close" data-result-close>
							<span class="sp_workspace btn_close_calculator">닫기</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>

<div class="app_area">
	<div class="inner_width">
		<ul class="app_list">
			<li class="mobile_app"><a href="https://spacecloud.kr/qr" target="_blank"><span>모바일 앱 다운로드</span></a></li>
			<li class="android"><a href="https://play.google.com/store/apps/details?id=com.hustay.swing.p3cfded673ced4983b0db9399638730cb" target="_blank" class="nclk" _nclk="hit.google"><span>Google play</span></a></li>
			<li class="ios"><a href="https://itunes.apple.com/kr/app/seupeiseukeullaudeu/id1025620281?l=en&mt=8" target="_blank" class="nclk" _nclk="hit.appstore"><span>App Store</span></a></li>
			<li class="qrcode"><a href="https://spacecloud.kr/qr" target="_blank" class="nclk" _nclk="hit.qr"><span>모바일 앱 다운로드 QR 코드</span></a></li>
		</ul>
	</div>
</div>
    
<!-- for the future usage -->
<footer class="footer">
    <div class="inner_width">
        <div class="top_area">
            <a href="javascript:void(0);" class="footer_logo">
                <span class="sp_icon logo_footer">spaceCloud</span>
            </a>
            <ul class="bar_list link_info">
                <li><a href="http://blog.naver.com/spacecloud" target="_blank" title="새창열림" class="nclk" _nclk="fot.blog">블로그</a></li>
                <li><a href="/agreement" class="nclk" _nclk="fot.agreement">이용약관</a></li>
                <li><a href="/policyPerson" class="nclk" _nclk="fot.privacy">개인정보처리방침</a></li>
                <li><a href="/policyOperate" class="nclk" _nclk="fot.policy">운영정책</a></li>
                <li><a href="https://talk.naver.com/ct/wc89we" target="_blank" title="새창열림" class="nclk" _nclk="fot.adtalk">고객 문의</a></li>
            </ul>
            <a href="javascript:void(0);" class="btn_toggle _nspaceinfo">
				<span class="btn_inner">
					(주)NSPACE 사업자정보 및 통신판매업자 신원정보
				</span>
            </a>
        </div>
        <div class="bottom_area _nspaceinfoarea">
            <ul class="bar_list company_info">
                <li class="first">상호명: 주식회사 앤스페이스</li>
                <li>대표: 정수현</li>
                <li>사업자등록번호: 230-81-03117</li>
                <li>통신판매업신고번호: 2015-서울성동-0027</li>
                <li class="business_info"><a href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2015303010330200027&area1=&area2=&currpage=1&searchKey=04&searchVal=2308103117&stdate=&enddate=" target="_blank" title="새창열림" class="nclk" _nclk="fot.info">사업자등록정보</a></li>
                <li>영업소재지: 서울시 성동구 왕십리로 2길 20 CND빌딩 3층</li>
                <li>이메일: <a href="mailto:office@spacecloud.kr">office@spacecloud.kr</a></li>
                <li>대표전화: 1599-4312(평일 오후 2시 ~ 오후 6시 30분)</li>
 				<li class="first"><a href="https://talk.naver.com/ct/wc89we" class="link" target="_blank" title="새창열림">온라인 1:1문의 바로가기</a>(평일 오전 10시 ~ 오후 6시 30분)</li>
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
                <li><a href="/agreement" class="nclk" _nclk="fot.agreement">이용약관</a></li>
                <li><a href="/policyPerson" class="nclk" _nclk="fot.privacy">개인정보처리방침</a></li>
                <li><a href="/policyOperate" class="nclk" _nclk="fot.policy">운영정책</a></li>
            </ul>
        </div>
        <p class="copyright">
            <span class="copy_mobile"><a href="http://www.nspace.co/" target="_blank" title="새창열림" class="nclk" _nclk="fot.nspace">ⓒNSPACE Corp.</a></span>
            <span class="copy_pc">Copyright <a href="http://www.nspace.co/" target="_blank" title="새창열림" class="nclk" _nclk="fot.nspace">NSPACE Corp.</a> All Rights Reserved.</span>
        </p>
    </div>
</footer>
    <div class="dimmed"></div>
</div>
<!-- //wrap -->
</body>

<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->

<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/index_page_min.js" type="text/javascript"></script>

<script type="text/javascript">
    var imageDomain = 'https://scloud.pstatic.net';
    var jsonPageData = {
        userTpCd : '',			// host / LCR / LCM
        hostId : '',	// host Id managed by LC
        regSpaceId : '',
        maxPossbleStep : ''
    };
</script>
</html>