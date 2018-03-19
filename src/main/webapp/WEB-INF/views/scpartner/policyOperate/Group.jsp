
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
	<h2>공간 관리 정책</h2>
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
	<div class="agree_wrap type_operation">
		<ul class="tab_search divide2">
			<li><a href="#meet">모임 공간</a></li>
			<li><a href="#workSpace">공유오피스</a></li>
		</ul>
		<div class="tab_cont" id="meet"> 
			<div class="heading_agree">
				<h3 class="h_agree_section">모임 공간 관리 정책</h3>
				<p class="p_enforce_date">시행일자 : 2018년 01월 12일</p>
				<a href="/policyOperate/20171113" class="btn_agree_view">
					<span class="txt_agree_view">이전 공간 관리 정책 보러가기</span>
				</a>
			</div>
			<p class="p_operate_desc">본 정책은 스페이스클라우드 호스트 이용약관에 따라 작성되었으며, 본 정책에서 사용되는 용어의 정의는 스페이스클라우드 호스트 이용약관과 동일합니다.</p>
			<dl>
				<dt>1. 등록 가능 공간 3원칙</dt>
				<dd>
					<ol>
						<li>(1) 가격이 정확히 명시되어 있는 공간</li>
						<li>(2) 시간단위 또는 일단위 대관가격이 설정되어 있는 공간</li>
						<li>(3) 분리되어있는 독립된 공간</li>
					</ol>
				</dd>
				<dt>2. 등록 불가 공간</dt>
				<dd>
					<p>서비스의 발전 및 목적에 따라, (1),(2),(5),(7)번을 제외한 아래 다른 공간은 등록될 수 있습니다. 단, 이 경우 운영진이 직접 등록한 공간에 한합니다.</p>
					<ol>
						<li>(1) 가격이 정확히 명시되지 않은 공간
							<ol>
								<li>-	가격을 0원으로 설정 후 가격을 따로 협의 후 결정하는 공간</li>
								<li>-	등록된 가격과 실제 가격이 다른 공간</li>
							</ol>
						</li>
						<li>(2) 공간이 아닌 다른 재화 및 서비스를 판매하기 위한 목적으로 등록된 공간
							<ol>
								<li>-	클래스 및 체험을 반드시 이용해야 하는 경우(단, 공간을 다른 목적으로 대관할 수 있다면 등록가능)</li>
								<li>예) 도예공방을 자체 클래스를 수강할 필요 없이 다른 모임의 세미나 장소, 파티룸 등으로 이용하는 경우 등록 가능</li>
								<li>-	매장에서 판매하는 재화/서비스를 반드시 구입해야 하는 공간</li>
								<li>예) 공간 대관 시 식사 또는 음료를 필수로 주문해야 하는 경우 등</li>
							</ol>
						</li>
						<li>(3) 좌석/테이블 단위로 예약을 받는 공간(재고형 공간)
							<ol>
								<li>-	클래스 및 체험을 반드시 이용해야 하는 경우(단, 공간을 다른 목적으로 대관할 수 있다면 등록가능)</li>
								<li>예) 독서실, 보드게임 카페</li>
							</ol>
						</li>
						<li>(4) 1개월 단위로 계약 또는 예약을 하여 사용하여야 하는 공간
							<ol>
								<li>예) 체육관, 헬스장</li>
							</ol>
						</li>
						<li>(5) 스페이스클라우드 서비스의 예약 기능을 통하지 않고, 직거래를 유도하는 공간
							<ol>
								<li>-	서비스가 제공하는 등록된 가상번호가 아닌,  다른 직통전화를 등록한 공간.</li>
								<li>예) 예약은 전화로만 받습니다.</li>
							</ol>
						</li>
						<li>(6) 주거  및 숙박 시설은 현재 스페이스클라우드에서 서비스하지 않습니다.
							<ol>
								<li>-	숙박업소 및 게스트 하우스, 부동산 (매매, 전월세 등), 쉐어하우스</li>
							</ol>
						</li>
						<li>(7) 기타 등록불가 공간: 일반적인 미풍양속에 저해되는, 성인, 퇴폐 음란업소</li>
					</ol>
				</dd>
				<dt>3. 공간 노출 중지</dt>
				<dd>
					<ol>
						<li>1) 정의
							<ol>
								<li>-	공간 노출 중지란, 스페이스클라우드의 약관 및 본 운영정책에 따라, 등록된 공간 중 부적합한 공간을 스페이스클라우드 사이트 (<a href="https://spacecloud.kr">https://spacecloud.kr</a>) 에서 노출 중지 하는 것을 말합니다.</li>
							</ol>
						</li>
						<li>2) 공간 노출 중지 사유
							<ol>
								<li>- 하기와 같은 공간은 검수 및 예약 관리 확인시 부적합하다고 판단되면, 게스트의 신고, 스페이스클라우드 운영진의 직접 차단을 통해, 노출 중지 될 수 있습니다.
									<ol>
										<li>a)	예약 관리 부적합으로 인한 노출 중지</li>
										<ul>
											<li>- 예약 미승인 취소 연속 3회 또는 누적 5건인 공간</li>
											<li>- 예약된 장소가 아닌 다른 장소를 게스트에게 제공하여, 게스트가 이의를 제기한 때.</li>
											<li>- 게스트가 호스트의 부주의로 인하여 공간을 사용하지 못할 때</li>
										</ul>
										<li>b) 공간검수 시 문제가 있는 공간
											<ul>
												<li>- 공간정보 및 이미지가 잘못 등록된 공간
													<ol>
														<li>* 공간유형, 가격, 이용시간/정기휴무일 등이 잘못 설정되어 있는 경우</li>
														<li>* 이미지가 가이드라인에 맞지 않게 등록되어 있는 경우(공지사항<a href="http://partner.spacecloud.kr/board/notice?category=&amp;search=[%ED%95%84%EB%8F%85]%20%EA%B3%B5%EA%B0%84%20%EC%9D%B4%EB%AF%B8%EC%A7%80%20%EB%93%B1%EB%A1%9D%20%EA%B0%80%EC%9D%B4%EB%93%9C%EB%9D%BC%EC%9D%B8%20%EC%9E%85%EB%8B%88%EB%8B%A4.&#10;">(링크)</a> 참조)</li>
														<li>* 공간소개, 태그, 예약시 주의사항 등이 부실하게 작성된 경우 </li>
													</ol>
												</li>
												<li>- 음란물, 불법 게시물이 포함된 공간
													<ol>
														<li>* 음란 사이트, 음란 이미지 등이 포함되어 제 3자에게 성적 수치심을 주는 게시물인 경우</li>
														<li>* 불법 사행성, 도박, 마약, 성매매, 인신매매 등 불법 정보를 포함한 게시물인 경우</li>
													</ol>
												</li>
												<li>- 저작권자에게 게재를 동의 받지 않은 사진(타사 로고포함)이 등록된 공간
													<ol>
														<li>* 공간 사진에 타사 로고가 노출되는 등, 원작성자의 동의를 받지 않아 원작성자 또는 법적대리인이 노출중지를 요청하는 경우 </li>
														<li>* 타인의 저작권을 침해하는 사진이 게시된 경우</li>
													</ol>
												</li>
												<li>- 개인정보 유출 게시물
													<ol>
														<li>* 타인의 개인정보(성명, 주민등록번호, 주소, 금융정보 등)가 포함되어 개인정보 유출 위험이 있는 경우</li>
													</ol>
												</li>
											</ul>
										</li>
										<li>c) 공간 어뷰징 발생시
											<ul>
												<li>-	공간 검색 상위 노출을 위해, 예약율, 예약 횟수, 댓글을 조작하여 다른 선의의 게스트 또는 호스트에게 피해를 줄 때.</li>
												<li>-	공식적으로 휴시 처리 또는, 예약추가기능을 사용하지 않고, 예약 유형 전환(1,2번 -> 3번) 등으로 예약 수를 조작할 때.</li>
												<li>-	공간 이용 후기를 내부인 또는 지인이 달거나, 타 호스트에게 허위사실을 댓글로 작성하여 피해를 준 사실이 확인 되었을 때. </li>
											</ul>
										</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>3) 운영진 조치 후 절차
							<p>스페이스클라우드 운영진은 공간 노출 중지 사유를 검토 후 다음과 같은 조치를 취합니다.</p>
							<ol>
								<li>- 운영진은 노출 중지 후 해당 사유를 호스트에게 전달하며, 호스트는 사유에 따라 수정 해야 합니다.</li>
								<li>- 공간 검수시 문제가 있는 공간은 수정 완료 확인 후 노출하여 드립니다.</li>
								<li>- 예약 관리 부적합으로 인하여 노출 중지 된 공간은 하기와 같이 처리합니다.
									<ol>
										<li>* 미승인으로 인한 취소인 경우, 호스트의 확인 후, 익일 노출, 3회 동일사 유 반복시 영구 노출 중지</li>
										<li>* 예약된 장소가 아닌 다른 장소를 게스트에게 제공한 경우 1회 주의, 2회 영구 노출 중지</li>
									</ol>
								</li>
								<li>- 공간 어뷰징 적발시 하기와 같이 처리 합니다.
									<ol>
										<li>* 1회 경고, 2회 공간 검색 순위 최하단 노출 </li>
										<li>* 3회 공간 미노출 1주일, 4회 스페이스클라우드 서비스 이용 불가.</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>4) 공간 미노출 예외사항
							<p>아래 와 같은 상황이 발생시, 호스트가 확정된 예약을 취소해야 할 수도 있습니다. 이러한 경우에는, 운영진 확인 후 공간 노출을 중지 후, 다시 운영이 가능하실 때 노출하여 드립니다.</p>
							<ol>
								<li>- 호스트 또는 가족의 사망 또는 질병으로 인하여 예약관리가 어려운 때</li>
								<li>- 자연재해 또는 국가 비상사태 등으로 인하여, 공간을 운영할 수 없을 때</li>
								<li>- 공간의 파손/손상으로 인하여 공간 운영이 어려운 때</li>
								<li>- 공간의 이전 또는 리모델링 중 일 때.</li>
							</ol>
						</li>
					</ol>
				</dd>
				<dt>4. 예약 유형 방식에 대한 안내.</dt>
				<dd>
					<p>스페이스클라우드는 아래와 같은 4가지의 예약 유형을 제공 하고 있습니다.</p>
					<ol>
						<li>1) 바로결제 유형: 호스트가 예약을 승인할 필요 없이, 게스트가 즉시 예약, 결제하는 유형.</li>
						<li>2) 승인결제 유형: 호스트가 예약을 승인한 후, 게스트가 결제를 할 수 있는 유형.</li>
						<li>3) 승인예약 유형: 호스트가 예약을 승인한 후, 결제는 게스트와 직접 처리하는 유형.</li>
					</ol>
					<table>
						<caption class="blind">예약 유형 방식</caption>
						<colgroup>
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th>예약유형</th>
								<th>호스트 승인</th>
								<th>온라인 결제 제공</th>
								<th>예약 가능시간</th>
								<th>호스트 관리부담</th>
							</tr>
						</thead>
						<tbody>
						<tr>
							<td class="td_tit">1) 바로결제</td>
							<td>불필요</td>
							<td>즉시 결제 가능</td>
							<td>예약 3시간 전까지 일단위는 전일까지</td>
							<td>높음</td>
						</tr>
						<tr>
							<td class="td_tit">2) 승인결제</td>
							<td>필요</td>
							<td>승인 후 결제 가능</td>
							<td>예약일, 시간 2일 전까지만 가능</td>
							<td>중간</td>
						</tr>
						<tr>
							<td class="td_tit">3) 승인예약(결제불가)</td>
							<td>필요</td>
							<td>결제 불가</td>
							<td>예약일,시간 2일 전까지만 가능</td>
							<td>낮음</td>
						</tr>
						</tbody>
					</table>
				</dd>
				<dt>5. 분쟁의 처리</dt>
				<dd>
					<ol>
						<li>1) 회사는 거래의 당사자가 아닌 예약 및 결제를 시스템으로서 제공하는 중개인으로서 분쟁상황 발생시 책임은 게스트와 호스트 양 당사자에게 있습니다. </li>
						<li>2) 회사는 시스템에 기록, 결제된 ‘공간 대관비’ 에 대해서만 환불, 취소와 같은 시스템적 도움을 제공하며, 그외에 부가적 비용(EX: 게스트의 이동비, 체류비, 강사초빙비, 공간의 물품파손 등)에 대해서는 책임을 지지 않습니다. 해당 비용에 대해서는 게스트와 호스트간 양자간 협의를 바탕으로 처리하여야 합니다. </li>
						<li>3) 게스트와 호스트간 문제가 없도록, 공간 이용전 사진, CCTV 등 영상자료 확보, 시설파손 등에 대한 계약을 따로 작성하시길 권유드립니다.</li>
						<li>4) 스페이스클라우드에 있는 공간 사진은, 호스트 및 사진작가가 찍은 사진으로, 실제 공간 이용시 차이는 있을 수 있습니다. </li>
						<li>5) 기본적으로 양 당사자가 협의를 하는 것을 원칙으로 하며, 법적 소송, 분쟁 등이 발생했을 경우 최종 결과에 대하여 다음과 같이 처리됩니다.
							<ul>
								<li>- 게스트 환불처리 및 호스트 미노출 처리</li>
								<li>
									<ul>
										<li>a) 스페이스클라우드를 통해 결제된 내역에 대해서만 환불처리 및 공간 미노출 등 가능한 범위에서 진행하며, 추가적인 피해 보상은 따로 처리하셔야 합니다.</li>
										<li>b) 호스트의 공간 미노출은 사유 발생시 1회 1일 공간 미노출 / 2회 3일 공간 미노출 / 3회 영구 미노출로 진행됩니다.</li>
										<li>c) 이용에 문제가 있는 경우
											<ul>
												<li>- 사용인원이 시스템에 적혀있는 내용과 다를 때 </li>
												<li>- 실제 사용 공간 평수, 또는 이용면적이 다를 때 (50평 공간이라 적어두었으나, 실제는 15평 등으로 이용할 수 있는 면적이 다를 때)</li>
												<li>- 공간의 위생상태 불량(쓰레기, 악취), 소음, 시설에 문제가 있음을 게스트에게 호스트가 사전에 공지하지 않아 사용을 못하였을 때  또는 사진 또는 영상 등으로 그 상황을 확인 할 수 있는 경우 호스트의 환불 대상입니다.</li>
												<li>- 호스트가 공간을 열어주지 않았거나, 연락이 되지 않아 공간이용을 하지 못하였을 때. 이용완료 시점부터 5영업일 내로 연락하셔야 하며, 그 이후에는 처리해드리지 않습니다. 호스트는 스페이스클라우드 확인 요청시 3영업일 내로 답변하여야하며, 답변이 없을 경우 환불됩니다.</li>
											</ul>
											<ul>
												<li>c)의 경우 호스트가 최선을 다해, 그에 상응하는 수단을 준비하고, 게스트와 협의 및 공간이용이 되었을 때는 환불이 불가하거나 사용한 시간을 제외하고 환불이 될 수 있습니다.</li>
											</ul>
										</li>
										<li>d) 예약 중복으로 인하여 다른 공간을 소개 받은 경우. 기본적으로 환불 대상이나, 게스트와 호스트간 협의 후 다른 공간을 소개 받아 사용하신 경우에는 환불 대상이 되지 않습니다. </li>
										<li>e) 게스트가 이용 중 겪은 불편사항에 대해서 남긴 정당한(욕설 및 비꼼 등이 없는 경우) 이용후기 및 점수에 대해 불만을 가지고 게스트에게 연락하여 지워줄 것을 강요하거나  법적 행위를 통한 방법으로 협박한 경우(고소, 변호사 선임 등) 또는 게스트의 실명을 거론하여 개인정보를 노출시킨 경우</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>6) 게스트 이용 정지
							<ul>
								<li>a) 불편사항을 과장,허위로 이용후기로 남기거나, 처리를 요청하는 경우 사실 확인 후 이용후기 블락 및 게스트 ID 의 블락 처리 합니다.</li>
								<li>b) 호스트가 게스트의 불편사항을 즉시 확인하고 처리를 위해 최선을 다하고 (다른 공간 사용 및 재 이용시 추가 사용 가능하도록 등) 현장에서 게스트와 협의가 되었으나, 스페이스클라우드에 환불 등 호스트 처벌을 요청한 경우 블락 처리 합니다.</li>
								<li>c) 공간을 이용하고, 이용하지 않았다고 허위신고를 할 때 블락 처리 합니다.</li>
							</ul>
						</li>
						<li>7) 이용 후기
							<p>작성된 이용 후기에 대한 책임은 게스트와 호스트에게 있습니다</p>
							<ul>
								<li>a) 이용후기 작성시 업로드 가능한 이미지는 공간 사진 및 이용한 공간과 관련된 사진(공간 내 소품 등)만 가능하며, 저작권 위반 및 공간과 관계없는 이미지(선정성, 광고, 공간 사진이 아닌 경우 등) 일 경우 통보 없이 운영진이 블락할 수 있습니다.</li>
								<li>b) 이용후기에 업로드 된 이미지에 인물이 있는 경우, 업로드 전 인물에 대한 허락을 받으시거나, 그렇지 않은 경우 모자이크 등 블러 처리를 해주시길 바랍니다.</li>
								<li>c) 이용후기에 욕설이 있거나, 실명 또는 연락처 등으로 개인정보가 노출된 경우 통보 없이 블락됩니다.</li>
								<li>d) 이용후기에 대한 블락은 기본적으로 호스트와 게스트간 협의 또는 게스트의 요청이 있어야만 블락됩니다.</li>
							</ul>
						</li>
						<li>8) 영상정보처리기기 설치 및 운영
							<ul>
								<li>a) 스페이스클라우드에 공간을 유통하는 운영자 (이하 호스트)의 경우 범죄 예방, 화재 예방, 고객 안전 및 시설 보호를 위하여 CCTV 및 영상 정보 처리 기기를 설치-운영할 수 있습니다.</li>
								<li>b) 위의 목적으로 영상정보처리기기를 설치 및 운영한 경우 아래의 내용을 반드시 공간 현장에 안내문으로 부착하여 고객이 인지하도록 하여야 합니다.
									<ul>
										<li>(1) 범죄 예방, 시설 보호, 화재 예방 등 안전의 목적으로 실내에 "CCTV가 설치되어 있는 사실 명기"</li>
										<li>(2) CCTV의 촬영 시간 명기</li>
										<li>(3) CCTV의 설치 장소, 설치 대수 표기</li>
										<li>(4) 실내의 경우 CCTV 카메라 위치 및 '촬영중 부착문' 표기 ( * 카메라 위장은 이용자에게 '불법 촬영'으로 판단될 수 있으므로 카메라 옆에 CCTV 촬영중 부착 필수)</li>
										<li>(5) CCTV 관리 책임자 및 연락처 표기</li>
										<li>(6) 영상물 보관기간, 보관장소 및 처리 방법 표기 (* 통상 공공기관 기준으로 30일 자동보관 후 폐기함을 명기하고 있습니다)</li>
										<li>(7) 스페이스클라우드 온라인 예약 페이지에 CCTV 및 영상정보처리기기 설치 명기</li>
									</ul>
								</li>
								<li>c) 위 b) 사항의 (1)~(7)가이드에 준수 되지 않은 경우는 개인정보보호법 위반으로 스페이스클라우드에서는 아래와 같은 서비스 제재가 이어집니다.
									<ul>
										<li>(1) 스페이스클라우드에서 해당 공간 즉시 미노출 및 해당 업체 재등록 불가</li>
										<li>(2) 해당 게스트에 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</li>
										<li>(3) 해당 공간을 예약한 스페이스클라우드 이용 예정자에게 위반 상황 통지 및 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</li>
									</ul>
								</li>
							</ul>
						</li>
					</ol>
				</dd>
				<dt>[부칙] (2018. 01. 12 개정)</dt>
				<dd>(시행일) 본 정책은 2018년 01월 12일부터 시행합니다. <br>본 정책은 스페이스클라우드 호스트 이용약관에 따라 작성되었으며 본 정책에서 사용되는 용어의 정의는 스페이스클라우드 호스트 이용약관과 동일합니다.</dd>
			</dl>
		</div>
		
		<div class="tab_cont" id="workSpace">
			<div class="heading_agree">
				<h3 class="h_agree_section">공유 오피스 공간 운영 정책</h3>
				<p class="p_enforce_date">시행일자 : 2018년 01월 12일</p>
				<a href="/policyOperate/20171113" class="btn_agree_view">
					<span class="txt_agree_view">이전 공간 관리 정책 보러가기</span>
				</a>
			</div>
			<p class="p_operate_desc">본 정책은 스페이스클라우드 호스트 이용약관에 따라 작성되었으며, 본 정책에서 사용되는 용어의 정의는 스페이스클라우드 호스트 이용약관과 동일합니다.</p>
			<dl>
				<dt>1. 등록 가능한 공유 오피스 공간</dt>
				<dd>
					<ol>
						<li>1) 등록 가능한 공간 유형
							<ol>
								<li>a) 독립오피스 (서비스드오피스, 소호오피스)</li>
								<li>b) 코워킹스페이스 (쉐어 오피스, 공용 사무실, 핫데스크)</li>
								<li>c) 공동 작업실 (랩실, 스튜디오, 공방 등)</li>
								<li>d) 일하기 좋은 카페</li>
							</ol>
						</li>
						<li>2) 공간 등록 기준
							<ol>
								<li>a) 사용자에게 업무 환경을 제공하는 공간만 등록이 가능합니다.</li>
								<li>b) 일단위, 또는 월단위 공간 <strong class="underline">가격(VAT포함)</strong> 이 정확히 명시되어 있는 공간</li>
								<li>c) 기존 부동산 시장의 임대 사무실이 아닌, 1인 ~ 10인 정도의 구성원을 대상으로 업무 공간 서비스를 제공하는 공간 (인터넷 환경, 안정적인 좌석, 현장 운영자가 상주 하는 공간)</li>
								<li>d) 예치금 또는 보증금이 있는 공간, 해당 내용을 가격 정책에 명시 하여야 합니다.</li>
								<li>e) 이용계약서 작성이 필수인 경우, 해당 내용을 공간 소개에 명시 하여야 합니다.</li>
							</ol>
						</li>
					</ol>
				</dd>
				<dt>2. 등록 불가 공간</dt>
				<dd>
					<ol>
						<li>1) 가격을 정확히 명시하지 않은 공간
							<ul>
								<li>- 기본 가격을 0원으로 설정 후 가격을 따로 협의 후 결정하는 공간</li>
								<li>- 가격 정책에 입력한 가격과 실제 결제 금액이 상이하게 다른 공간</li>
								<li>- 기본 가격에 예치금 또는 보증금을 포함한 공간 (별도 표기는 가능)</li>
							</ul>
						</li>
						<li>2)	공간이 아닌 다른 재화 및 서비스를 판매하기 위한 목적으로 등록된 공간
							<ol>
								<li>a) 클래스 및 체험을 반드시 이용해야 하는 경우</li>
								<li>b) 공간에서 판매하는 재화/서비스를 반드시 구입해야 하는 공간<br>&nbsp;&nbsp;예) 공간 대관 시 식사 또는 음료를 필수로 주문해야 하는 경우 등</li>
								<li>c) 사무 공간을 제공하면서, 제공하는 회사의 업무를 처리해야 하는 경우<br>&nbsp;&nbsp;예) 디자인 또는 용역을 수행 할 경우 공간 할인을 제공하여 유도하는 경우</li>
								<li>d) 특정 회원 유치를 목적으로 종교, 정당, 다단계 판매 관 기관이 공간을 공유하는 경우</li>
							</ol>
						</li>
						<li>3)	스페이스클라우드 서비스의 예약 기능을 통하지 않고, 직거래를 유도하는 공간
							<ul>
								<li>- 서비스가 제공하는 등록된 가상번호가 아닌, 다른 직통전화를 등록한 공간. <br>&nbsp;&nbsp;예) 예약은 전화로만 받습니다.</li>
							</ul>
						</li>
						<li>4) 하기의 공간은 현재 공유 오피스에서 서비스하지 않습니다.
							<ul>
								<li>- 스페이스클라우드에 등록된 모임 전용 공간 (파티룸, 연습실, 스터디룸, 회의실 등)</li>
								<li>- 숙박업소 및 게스트 하우스</li>
								<li>- 부동산 (매매, 전월세 등)</li>
								<li>- 부동산 (일반 상가, 오피스텔, 사무실 임대)</li>
								<li>- 쉐어하우스</li>
							</ul>
						</li>
						<li>5) 기타 등록 불가 공간: 일반적인 미풍양속에 저해되는, 성인, 퇴폐 음란업소</li>
					</ol>
				</dd>
				<dt>3. 공간의 검수와 노출 중지</dt>
				<dd>
					<ol>
						<li>1) 공유 오피스 공간 검수
							<ol>
								<li>a) 공간 등록 후 검수가 완료되어야, 공간이 노출됩니다.</li>
								<li>b) 검수 기간은 최대 5 영업일 이내 입니다.</li>
								<li>c) 검수 결과는 문자 및 메일로 안내됩니다.</li>
							</ol>
						</li>
						<li>2) 노출 중지
							<ol>
								<li>a) 정의
									<ol>
										<li>- 공간 노출 중지란, 스페이스클라우드의 약관 및 본 운영정책에 따라, 등록된 공간 중 부적합한 공간을 스페이스클라우드 사이트 (<a href="https://spacecloud.kr">https://spacecloud.kr</a>) 에서 노출 중지 하는 것을 말합니다.</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>3) 공간 노출 중지 사유
							<ol>
								<li>- 하기와 같은 공간은 검수 및 예약 관리 확인, 게스트의 신고를 통해 확인 후 스페이스클라우드 운영진이 해당 공간에 대하여 노출 중지 할 수 있습니다.
									<ol>
										<li>a)	예약 관리 부적합으로 인한 노출 중지</li>
										<ul>
											<li>* 공유 오피스 등록 기준에 부합하지 않는 공간</li>
											<li>* 예약 미승인 취소 연속 3회 또는 누적 5건인 공간</li>
											<li>* 예약된 장소가 아닌 다른 장소를 게스트에게 제공하여, 게스트가 이의를 제기한 때</li>
											<li>* 게스트가 호스트의 부주의로 인하여 공간을 사용하지 못할 때</li>
										</ul>
										<li>b) 공간검수 시 문제가 있는 공간
											<ul>
												<li>* 공간유형, 가격, 이용시간/정기휴무일 등이 잘못 설정되어 있는 경우</li>
												<li>* 이미지가 가이드라인에 맞지 않게 등록되어 있는 경우(공지사항 참조)</li>
												<li>* 공간소개, 태그, 예약시 주의사항 등이 부실하게 작성된 경우</li>
											</ul>
										</li>
										<li>c) 음란물, 불법 게시물이 포함된 공간
											<ul>
												<li>* 음란 사이트, 음란 이미지 등이 포함되어 제 3자에게 성적 수치심을 주는 게시물의 경우</li>
												<li>* 불법 사행성, 도박, 마약, 성매매, 인신매매 등 불법 정보를 포함한 게시물인 경우 </li>
											</ul>
										</li>
										<li>d) 저작권자에게 게재를 동의받지 않은 사진(타사 로고포함)이 등록된 공간
											<ul>
												<li>* 공간 사진에 타사 로고가 노출되는 등, 원작성자의 동의를 받지 않아 원작성자 또는 법적대리인이 노출중지를 요청하는 경우</li>
												<li>* 타인의 저작권을 침해하는 사진이 게시된 경우</li>
											</ul>
										</li>
										<li>e) 개인정보 유출 게시물
											<ul>
												<li>* 타인의 개인정보(성명, 주민등록번호, 주소, 금융정보 등)가 포함되어 개인정보 유출 위험이 있는 경우</li>
											</ul>
										</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>4) 공간 어뷰징 발생시
							<ul>
								<li>-	공간 검색 상위 노출을 위해, 예약율, 예약 횟수, 댓글을 조작하여 다른 선의의 게스트 또는 호스트에게 피해를 줄 때.</li>
								<li>-	공식적으로 휴시 처리 또는, 예약추가기능을 사용하지 않고, 예약 유형 전환(1,2번 -> 3번) 등으로 예약 수를 조작할 때.</li>
								<li>-	공간 이용 후기를 내부인 또는 지인이 달거나, 타 호스트에게 허위사실을 댓글로 작성하여 피해를 준 사실이 확인 되었을 때. </li>
							</ul>
						</li>
						<li>5) 운영진 조치 후 절차
							<p>스페이스클라우드 운영진은 공간 노출 중지 사유를 검토 후 다음과 같은 조치를 취합니다.</p>
							<ol>
								<li>- 운영진은 노출 중지 후 해당 사유를 호스트에게 전달하며, 호스트는 사유에 따라 수정 해야 합니다.</li>
								<li>- 공간 검수시 문제가 있는 공간은 수정 완료 확인 후 노출하여 드립니다.</li>
								<li>- 예약 관리 부적합으로 인하여 노출 중지 된 공간은 하기와 같이 처리합니다.
									<ol>
										<li>* 미승인으로 인한 취소인 경우, 호스트의 확인 후, 익일 노출, 3회 동일사 유 반복시 영구 노출 중지</li>
										<li>* 예약된 장소가 아닌 다른 장소를 게스트에게 제공한 경우 1회 주의, 2회 영구 노출 중지</li>
									</ol>
								</li>
								<li>- 공간 어뷰징 적발시 하기와 같이 처리 합니다.
									<ol>
										<li>* 1회 경고, 2회 공간 검색 순위 최하단 노출 </li>
										<li>* 3회 공간 미노출 1주일, 4회 스페이스클라우드 서비스 이용 불가.</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>6) 공간 미노출 예외사항
							<p>아래 와 같은 상황이 발생시, 호스트가 확정된 예약을 취소해야 할 수도 있습니다. 이러한 경우에는, 운영진 확인 후 공간 노출을 중지 후, 다시 운영이 가능하실 때 노출하여 드립니다.</p>
							<ol>
								<li>- 호스트 또는 가족의 사망 또는 질병으로 인하여 예약관리가 어려운 때</li>
								<li>- 자연재해 또는 국가 비상사태 등으로 인하여, 공간을 운영할 수 없을 때</li>
								<li>- 공간의 파손/손상으로 인하여 공간 운영이 어려운 때</li>
								<li>- 공간의 이전 또는 리모델링 중 일 때.</li>
							</ol>
						</li>
					</ol>
				</dd>
			
				<dt>4. 예약 유형 방식에 대한 안내</dt>
				<dd>
					<p>공유 오피스는 아래와 같은 2가지의 예약 유형을 제공 하고 있습니다.</p>
					<ol>
						<li>1) 일단위 예약: 1일~최대 30일까지 1일 단위로 예약을 할 수 있는 유형</li>
						<li>2) 월단위 예약: 1개월 단위로만 예약을 할 수 있는 유형</li>
					</ol>
				</dd>
			
				<dt>5. 분쟁의 처리</dt>
				<dd>
					<ol>
						<li>1) 회사는 거래의 당사자가 아닌 예약 및 결제를 시스템으로서 제공하는 중개인으로서 분쟁상황 발생시 책임은 게스트와 호스트 양 당사자에게 있습니다. </li>
						<li>2) 회사는 시스템에 기록, 결제된 ‘공간 대관비’ 에 대해서만 환불, 취소와 같은 시스템적 도움을 제공하며, 그외에 부가적 비용(EX: 게스트의 이동비, 체류비, 강사초빙비, 공간의 물품파손 등)에 대해서는 책임을 지지 않습니다. 해당 비용에 대해서는 게스트와 호스트간 양자간 협의를 바탕으로 처리하여야 합니다. </li>
						<li>3) 게스트와 호스트간 문제가 없도록, 공간 이용전 사진, CCTV 등 영상자료 확보, 시설파손 등에 대한 계약을 따로 작성하시길 권유드립니다.</li>
						<li>4) 스페이스클라우드에 있는 공간 사진은, 호스트 및 사진작가가 찍은 사진으로, 실제 공간 이용시 차이는 있을 수 있습니다. </li>
						<li>5) 기본적으로 양 당사자가 협의를 하는 것을 원칙으로 하며, 법적 소송, 분쟁 등이 발생했을 경우 최종 결과에 대하여 다음과 같이 처리됩니다.
							<ul>
								<li>- 게스트 환불처리 및 호스트 미노출 처리</li>
								<li>
									<ul>
										<li>a) 스페이스클라우드를 통해 결제된 내역에 대해서만 환불처리 및 공간 미노출 등 가능한 범위에서 진행하며, 추가적인 피해 보상은 따로 처리하셔야 합니다.</li>
										<li>b) 호스트의 공간 미노출은 사유 발생시 1회 1일 공간 미노출 / 2회 3일 공간 미노출 / 3회 영구 미노출로 진행됩니다.</li>
										<li>c) 이용에 문제가 있는 경우
											<ul>
												<li>- 사용인원이 시스템에 적혀있는 내용과 다를 때 </li>
												<li>- 실제 사용 공간 평수, 또는 이용면적이 다를 때 (50평 공간이라 적어두었으나, 실제는 15평 등으로 이용할 수 있는 면적이 다를 때)</li>
												<li>- 공간의 위생상태 불량(쓰레기, 악취), 소음, 시설에 문제가 있음을 게스트에게 호스트가 사전에 공지하지 않아 사용을 못하였을 때  또는 사진 또는 영상 등으로 그 상황을 확인 할 수 있는 경우 호스트의 환불 대상입니다.</li>
												<li>- 호스트가 공간을 열어주지 않았거나, 연락이 되지 않아 공간이용을 하지 못하였을 때, 이용완료 시점부터 5영업일 내로 연락하셔야 하며, 그 이후에는 처리해드리지 않습니다. 호스트는 스페이스클라우드 확인 요청시 3영업일 내로 답변하여야하며, 답변이 없을 경우 환불됩니다.</li>
											</ul>
											<ul>
												<li>c)의 경우 호스트가 최선을 다해, 그에 상응하는 수단을 준비하고, 게스트와 협의 및 공간이용이 되었을 때는 환불이 불가하거나 사용한 시간을 제외하고 환불이 될 수 있습니다.</li>
											</ul>
										</li>
										<li>d) 예약 중복으로 인하여 다른 공간을 소개 받은 경우. 기본적으로 환불 대상이나, 게스트와 호스트간 협의 후 다른 공간을 소개 받아 사용하신 경우에는 환불 대상이 되지 않습니다. </li>
										<li>e) 게스트가 이용 중 겪은 불편사항에 대해서 남긴 정당한(욕설 및 비꼼 등이 없는 경우) 이용후기 및 점수에 대해 불만을 가지고  게스트에게 연락하여 지워줄 것을 강요하거나  법적 행위를 통한 방법으로 협박한 경우(고소, 변호사 선임 등) 또는 게스트의 실명을 거론하여 개인정보를 노출시킨 경우</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>6) 게스트 이용 정지
							<ul>
								<li>a) 불편사항을 과장,허위로 이용후기로 남기거나, 처리를 요청하는 경우 사실 확인 후 이용후기 블락 및 게스트 ID 의 블락 처리 합니다.</li>
								<li>b) 호스트가 게스트의 불편사항을 즉시 확인하고 처리를 위해 최선을 다하고 (다른 공간 사용 및 재 이용시 추가 사용 가능하도록 등) 현장에서 게스트와 협의가 되었으나, 스페이스클라우드에 환불 등 호스트 처벌을 요청한 경우 블락 처리 합니다.</li>
								<li>c) 공간을 이용하고, 이용하지 않았다고 허위신고를 할 때 블락 처리 합니다. </li>
							</ul>
						</li>
						<li>7) 이용 후기
							<p>작성된 이용 후기에 대한 책임은 게스트와 호스트에게 있습니다.</p>
							<ul>
								<li>a) 이용후기 작성시 업로드 가능한 이미지는 공간 사진 및 이용한 공간과 관련된 사진(공간 내 소품 등)만 가능하며, 저작권 위반 및 공간과 관계없는 이미지(선정성, 광고, 공간 사진이 아닌 경우 등) 일 경우 통보 없이 운영진이 블락할 수 있습니다.</li>
								<li>b) 이용후기에 업로드 된 이미지에 인물이 있는 경우, 업로드 전 인물에 대한 허락을 받으시거나, 그렇지 않은 경우 모자이크 등 블러 처리를 해주시길 바랍니다.</li>
								<li>c) 이용후기에 욕설이 있거나, 실명 또는 연락처등으로 개인정보가 노출된 경우 통보 없이 블락 됩니다.</li>
								<li>d) 이용후기에 대한 블락은 기본적으로 호스트와 게스트간 협의 또는 게스트의 요청이 있어야만 블락됩니다.</li>
							</ul>
						</li>
						<li>8) 영상정보처리기기 설치 및 운영
							<ul>
								<li>a) 스페이스클라우드에 공간을 유통하는 운영자 (이하 호스트)의 경우 범죄 예방, 화재 예방, 고객 안전 및 시설 보호를 위하여  CCTV 및 영상 정보 처리 기기를 설치-운영할 수 있습니다.</li>
								<li>b) 위의 목적으로 영상정보처리기기를 설치 및 운영한 경우 아래의 내용을 반드시 공간 현장에 안내문으로 부착하여 고객이 인지하도록 하여야 합니다.
									<ul>
										<li>(1) 범죄 예방, 시설 보호, 화재 예방 등 안전의 목적으로 실내에 "CCTV가 설치되어 있는 사실 명기"</li>
										<li>(2) CCTV의 촬영 시간 명기</li>
										<li>(3) CCTV의 설치 장소, 설치 대수 표기</li>
										<li>(4) 실내의 경우 CCTV 카메라 위치 및 '촬영중 부착문' 표기 ( * 카메라 위장은 이용자에게 '불법 촬영'으로 판단될 수 있으므로 카메라 옆에 CCTV 촬영중 부착 필수)</li>
										<li>(5) CCTV 관리 책임자 및 연락처 표기</li>
										<li>(6) 영상물 보관기간, 보관장소 및 처리 방법 표기 (* 통상 공공기관 기준으로 30일 자동보관 후 폐기함을 명기하고 있습니다)</li>
										<li>(7) 스페이스클라우드 온라인 예약 페이지에 CCTV 및 영상정보처리기기 설치 명기</li>
									</ul>
								</li>
								<li>c) 위 b) 사항의 (1)~(7)가이드에 준수 되지 않은 경우는 개인정보보호법 위반으로 스페이스클라우드에서는 아래와 같은 서비스 제재가 이어집니다.
									<ul>
										<li>(1) 스페이스클라우드에서 해당 공간 즉시 미노출 및 해당 업체 재등록 불가</li>
										<li>(2) 해당 게스트에 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</li>
										<li>(3) 해당 공간을 예약한 스페이스클라우드 이용 예정자에게 위반 상황 통지 및 전액 환불 집행 (스페이스클라우드 결제고객에 해당)</li>
									</ul>
								</li>
							</ul>
						</li>
					</ol>
				</dd>
				<dt>[부칙] 시행일 2018. 01. 12</dt>
				<dd>본 운영정책은 2018년 01월 12일부터 시행합니다.</dd>
			</dl>
		</div>
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