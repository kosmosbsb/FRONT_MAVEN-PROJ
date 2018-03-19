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
	<h2>개인정보처리방침</h2>
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
                    
                    
                        <a href="javascript:void(0);" id="_logout">로그아웃</a>
                    
                    <p class="copyright">Powered by <strong>NAVER</strong> © NSPACE Corp.</p>
                </div>
            </nav>
            <a href="javascript:void(0);" class="nav_menu_close"><i class="sp_icon ico_nav_close">메뉴 닫기</i></a>
        </div>
    </div>
    <a href="javascript:void(0);" class="btn_fixed_guest">스페이스클라우드로 이동<i class="sp_icon ico_go"></i></a>
</aside>
		<section  id="contents" class="contents search" role="main">
	<div class="heading_agree">
		<h3 class="h_agree_section">개인정보처리방침</h3>
		<p class="p_enforce_date">시행일자 : 2016년 7월 17일</p>
	</div>
	<div class="agree_wrap">
		<dl>
			<dt class="blind">SC 서비스 호스트 개인정보처리방침</dt>
			<dd>(주)앤스페이스(이하 ‘회사’라 한다)는 정보통신망이용촉진 및 정보보호 등에 관한 법률(이하 ‘정보통신망법’) 등에 따라 회원의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침을 수립·공개합니다.</dd>
			<dd>회사는 스페이스클라우드 온라인 중개 서비스(이하 ‘서비스’) 제공을 위하여 아래와 같이 개인정보를 수집·이용하고 있으며, 정보주체는 개인정보 처리를 거부할 권리가 있으나 아래의 내용은 서비스 제공을 위해 필요한 개인정보 처리로써 이를 거부할 시에는 서비스 이용에 어려움이 있을 수 있습니다.</dd>
			<dd>본 처리방침은 스페이스클라우드 개인정보처리방침을 바탕으로 하며, 호스트에게 추가적으로 관련된 지침을 안내합니다.</dd>
			<dt>제1조 수집하는 개인정보의 항목</dt>
			<dd>
				<ul>
					<li>- [필수] 등록 완료된 공간 정보(공간명, 대표자명, 주소 등 공간 정보, 세부공간명, 가격 등 세부공간 정보)</li>
					<li>- [선택] 유선전화번호, 계좌 정보(은행명, 계좌번호, 예금주), 사업자정보(사업자번호, 사업장주소, 사업자명, 업종, 업태)</li>
				</ul>
			</dd>
			<dt>제2조 개인정보의 수집·이용목적</dt>
			<dd>
				<ul>
					<li>- 서비스 제공, 본인 및 업체 확인, 불량회원의 부정 이용방지와 비인가 사용방지, 서비스 이용의사 확인, 가입 및 가입회수 제한, 분쟁조정을 위한 기록보전, 불만처리 등 민원처리, 고지사항 전달</li>
					<li>- 신규 서비스 개발 및 맞춤 서비스 제공, 서비스 이용에 대한 통계, 이벤트 정보 및 참여기회 제공, 광고성 정보 제공</li>
				</ul>
			</dd>
			<dt>제 3조 개인정보의 보유, 파기 및 이용기간 </dt>
			<dd>
				<ul>
					<li>- 회사는 회원 탈퇴 등, 개인정보 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.</li>
					<li>- 회원으로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 기간 동안 안전하게 보호합니다.</li>
					<li>- 서비스(호스트) 이용 동의 철회시 / 네이버 회원 탈퇴시
						<ol>
							<li>1)	서비스 사용기록(결제, 예약, 프로필등)를 이용 종료로 처리. 자료는 5년간 보관 합니다.</li>
							<li>2)	5년이 지난 개인정보 DB에서 삭제됩니다.</li>
						</ol>
					</li>
					<li>-	이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
						<ol>
							<li>1)	부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호가 있습니다.</li>
							<li>2)	결제도용, 카드깡 등 관련 법령 및 이용약관을 위반하는 부정거래기록(아이디, 이름, 휴대폰번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.</li>
						</ol>
					</li>
					<li>-  전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 회사는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
						<ol>
							<li>1)	전자상거래 등에서 소비자 보호에 관한 법률
								<ol>
									<li>a)	계약 또는 청약철회 등에 관한 기록: 5년 보관</li>
									<li>b)	대금결제 및 재화 등의 공급에 관한 기록: 5년 보관</li>
									<li>c)	소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관</li>
								</ol>
							</li>
							<li>2)	전자금융거래법
								<ol>
									<li>a)	전자금융에 관한 기록: 5년 보관</li>
								</ol>
							</li>
							<li>3)	통신비밀보호법
								<ol>
									<li>a)	로그인 기록: 3개월</li>
								</ol>
							</li>
						</ol>
					</li>
					<li>- 회원탈퇴, 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와 같이  개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다.
						<ol>
							<li>1)	법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다.</li>
							<li>2)	전자적 파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.</li>
						</ol>
					</li>
				</ul>
			</dd>
			<dd class="last">그 밖의 사항은 스페이스클라우드 개인정보처리방침에 따릅니다.</dd>
		</dl>
	</div>
</section>
		<div class="dimmed"></div>
	</div>
</body>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';


$(document).ready(function() {
	$('.tab_search li a').click(function () {
		$(this).parent().addClass('active').siblings().removeClass();
		$('.tab_cont').hide();
		var clicked = $(this).attr('href');
		$(clicked).show();
		return false;
	});

	$('.tab_search li a').eq(0).click();
});
</script>
</html>