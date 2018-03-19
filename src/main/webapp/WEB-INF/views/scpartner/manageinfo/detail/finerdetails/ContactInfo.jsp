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
        <form name="step3" id="step3">
	    <input type="hidden" name="spaceId" value="12228"/>
	    <input type="hidden" name="rgstTpCd" value="wsmod"/>
        <section id="contents" class="contents contents_register" role="main">
            <div class="heading">
                <h3>연락처 정보를 입력해주세요.</h3>
                <span class="option">
                    <span class="txt_required">
                        <span class="ico_required">*</span>
                        필수입력
                    </span>
                </span>
            </div>
             <!-- [D] 이메일 -->
            <div class="box_form email">
                <span class="tit" id="space_email">
                    <label for="email1">
                        이메일
                        <span class="ico_required">*</span>
                    </label>
                </span>
                <div class="row" id="emailError">
	                <div class="col">
						<input type="text" name="email" id="_email_addr" title="이메일 주소" regExp="^[a-zA-Z0-9-_\,\.]+$" _errorEl="emailError" value="dkelrk1" required>
	                </div>
	                <div class="col">
	                    <span class="txt_at">@</span>
	                    <input type="text" name="email" id="_email_domain" title="이메일 도메인" value="naver.com" regExp="[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$" style="width:100%" placeholder="직접입력" _errorEl="space_email" required readonly>
	                </div>
	                <div class="col">
	                    <div class="select">
	                        <select title="이메일 도메인 선택" id="_email_selector">
	                            
	                                <option value="naver.com" selected>naver.com</option>
	                            
	                                <option value="chol.com" >chol.com</option>
	                            
	                                <option value="dreamwiz.com" >dreamwiz.com</option>
	                            
	                                <option value="empal.com" >empal.com</option>
	                            
	                                <option value="gmail.com" >gmail.com</option>
	                            
	                                <option value="hanafos.com" >hanafos.com</option>
	                            
	                                <option value="hanmail.net" >hanmail.net</option>
	                            
	                                <option value="hanmir.com" >hanmir.com</option>
	                            
	                                <option value="hitel.net" >hitel.net</option>
	                            
	                                <option value="hotmail.com" >hotmail.com</option>
	                            
	                                <option value="korea.com" >korea.com</option>
	                            
	                                <option value="lycos.co.kr" >lycos.co.kr</option>
	                            
	                                <option value="nate.com" >nate.com</option>
	                            
	                            <option value="NONE" >직접입력</option>
	                        </select>
	                    </div>
	                </div>
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>이메일은 필수 입력입니다.</p>
	        </div>
            <!-- [D] 휴대폰, 대표전화 -->
            <div class="flex_wrap column2">
                <div class="box_form mobile" id="cellPhone">
                    <span class="tit">
                        <label for="phone11">
                            휴대폰
                            <span class="ico_required">*</span>
                        </label>
                    </span>
                    <!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
                    <div class="row phone" id="mobileError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
                        <div class="col4">
                            <div class="select">
                                <select name="mobile1" id="phone11" title="휴대폰 앞자리" class="virtualNum">
                                    
                                        <option value="010" selected>010</option>
                                    
                                        <option value="011" >011</option>
                                    
                                        <option value="016" >016</option>
                                    
                                        <option value="017" >017</option>
                                    
                                        <option value="018" >018</option>
                                    
                                        <option value="019" >019</option>
                                    
                                </select>
                            </div>
                        </div>
                        <div class="col4">
                            <input type="tel" name="mobile1" id="phone12" title="휴대폰 중간자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="5061" required>
                        </div>
                        <div class="col4">
                            <input type="tel" name="mobile1" id="phone13" title="휴대폰 뒷자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="3035" required>
                        </div>
                    </div>
                    <div class="row phone" id="_addMobileDiv" style="display:none;"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
						<div class="col4">
							<div class="select">
								<select name="mobile2" id="phone21" title="휴대폰 앞자리" disabled>
									
										<option value="010" >010</option>
									
										<option value="011" >011</option>
									
										<option value="016" >016</option>
									
										<option value="017" >017</option>
									
										<option value="018" >018</option>
									
										<option value="019" >019</option>
									
								</select>
							</div>
						</div>
						<div class="col4">
							<input type="tel" name="mobile2" id="phone22" title="휴대폰 중간자리" maxLength="4" class="onlyNum" _errorEl="mobileError" style="ime-mode: disabled;" value=""  disabled required>
						</div>
						<div class="col4">
							<input type="tel" name="mobile2" id="phone23" title="휴대폰 뒷자리" maxLength="4" class="onlyNum" _errorEl="mobileError" style="ime-mode: disabled;" value=""  disabled required>
						</div>
					</div>
	                <p class="p_guide warn"><i class="sp_icon ico_alert"></i>휴대폰은 필수 입력입니다.</p>
	                <p class="p_guide normal">
	                    <i class="sp_icon ico_alert"></i>
	                    해당 휴대폰 문자로 예약 관련 현황 관련 메시지를 받아 보실 수 있습니다.
	                    추가 휴대폰에도 동일한 메시지를 발송합니다. (최대 2대)
	                </p>
	                <span class="option option_btn">
	                    <a href="javascript:void(0);" class="btn_add mobile_add">
	                        <i class="sp_icon ico_add"></i>
	                        추가
	                    </a>
	                </span>
	            </div>
                <div class="box_form mobile">
                  <span class="tit">
                      <label for="phone21">
                          대표전화 <span class="ico_required">*</span>
                      </label>
                      <span class="tit_check">
                          <input type="checkbox" name="set" id="_sameCphNo" class="checkbox" checked>
                          <label for="_sameCphNo"><i class="sp_icon"></i>휴대폰과 동일</label>
                      </span>
                  </span>
                  <div class="row phone">
                      <div class="col4">
                          <input type="tel" name="telephone" id="phone31" value="010" maxLength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 앞자리" required>
                      </div>
                      <div class="col4">
                          <input type="tel" name="telephone" id="phone32" value="5061" maxLength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 중간자리" required>
                      </div>
                      <div class="col4">
                          <input type="tel" name="telephone" id="phone33" value="3035" maxLength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 뒷자리" required>
                      </div>
                  </div>
                  <div class="virtual_area complete" id="_virtualAreaEl">
                      <span class="btn_virtual " style="" id="_virtualNumberBtn" data-already="false">설정완료</span>
                      <span class="result_number">0504-0905-7637</span>
                  </div>
                  <input type="hidden" name="virtual" id="virtualNo" _errorEl="_virtualAreaEl" value="0504-0905-7637" required>
                  <p class="p_guide normal">
                      <i class="sp_icon ico_alert"></i>
                      문의를 받을 전화번호를 입력한 다음 가상번호를 설정하세요. 설정된 가상번호가 예약 화면에 노출됩니다.
                  </p>
                  <p class="p_guide warn">
                      <i class="sp_icon ico_alert"></i>
                      가상번호 설정은 필수입니다.
                  </p>
              </div>
          </div>
        </section>
        </form>
        <!-- //contents -->
        <!-- [D] 컨텐츠 길이가 790 이하일 경우 class="fixed" 추가 / 모바일일경우 400이하일 때 class="fixed"추가 -->
        <div class="fixed_bar">
            <span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_prev" id="_preStep">이전</a></span>
            <span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_next" id="_nextStep">저장</a></span>
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
	currentStep : 'step3',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	
};
</script>
</html>