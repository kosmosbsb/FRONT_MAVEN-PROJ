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
        <form name="step7" id="step7">
	    <input type="hidden" name="spaceId" value="12228"/>
	    <input type="hidden" name="rgstTpCd" value="wsmod"/>
		<section id="contents" class="contents contents_register" role="main">
			<article>
				<div class="heading">
					<h3>정산 정보를 입력해주세요.</h3>
					<span class="option">
						<span class="txt_required">
							<span class="ico_required">*</span>
							 필수입력
						</span>
					</span>
				</div>
				<!-- [D] 최근 정산 정보가 없을 경우, display: none 처리해주세요 -->
				<div class="checkbox_wrap" style="display:none;">
					<input type="checkbox" class="checkbox" id="copy_recent">
					<label for="copy_recent">최근 정산 정보와 동일</label>
				</div>
				<script>
				var recentSettleInfo = {
					
					'corp_nam' : '',	// 상호명
					'corp_intro' : '',	// 대표자명
					'bizNo1': '',			// 사업자번호
					'bizNo2': '',
					'bizNo3': '',
					'bizrLics' : {
						'fileName': '',	//사업자등록증 파일이름(개발서버만 파일이름=경로이름, 사용자에게 '보이는 것'은 파일이름만)
						'path': '',		//사업자등록증 경로이름(hidden input)
					},
					'sp_adrs': '',			//사업장 주소
					'_email_addr': '',		//이메일 ID
					'_email_domain': '',	//이메일 도메인
					'phone21': '',	//정산연락처, 새로 추가된 스펙이라 기존 모임공간에서 넘어온 정보는 없음
					'phone22': '',
					'phone23': '',
					'bnkCd': '',			// 은행코드
					'acctNo': '',			// 계좌번호
					'dprtr': ''			// 예금주
				};
				</script>
				<div class="box_form">
	                <div class="tit">
	                    <label for="corp_nam">
	                        상호명 (개인/법인)
							<span class="ico_required">*</span>
	                    </label>
	                </div>
                    <span class="option">
                        <span class="txt_count">
                            <em id="corpNmCnt">0</em>자/<em>17</em>자
                        </span>
                    </span>
                    <div class="input" id="corpNmError">
	                    <input type="text" name="corpNm" id="corp_nam" value="락커룸" maxLength="17" _lcount="corpNmCnt" placeholder="업체명을 입력해 주세요." required>
	                </div>
	                <p class="p_guide warn"><i class="sp_icon ico_alert"></i>상호명은 필수 입력입니다.</p>
	            </div>
				<div class="box_form">
	                <div class="tit">
	                    <label for="corp_intro">
	                        대표자명
							<span class="ico_required">*</span>
	                    </label>
	                </div>
                    <span class="option">
                        <span class="txt_count">
                            <em id="repNmCnt">0</em>자/<em>10</em>자
                        </span>
                    </span>
                    <div class="input" id="repNmError">
	                    <input type="text" name="repNm" id="corp_intro" value="돔" maxLength="10" _lcount="repNmCnt" placeholder="대표자명을 입력해 주세요." required>
	                </div>
	                <p class="p_guide warn"><i class="sp_icon ico_alert"></i>대표자명은 필수 입력입니다.</p>
	            </div>
				<div class="flex_wrap column2">
                    <div class="box_form mobile">
                        <span class="tit">
                            <label for="bizNo1">
                                사업자 등록번호
                                <span class="ico_required">*</span>
                            </label>
                        </span>
	                    <div class="row phone" id="bizNoError">
	                        <div class="col4">
	                            <input type="tel" name="bizNoList" id="bizNo1" value="123" class="onlyNum" style="ime-mode: disabled;" title="사업자 등록번호 앞자리" maxlength="3" _errorEl="bizNoError" required>
	                        </div>
	                        <div class="col4">
	                            <input type="tel" name="bizNoList" id="bizNo2" value="34" class="onlyNum" style="ime-mode: disabled;" title="사업자 등록번호 중간자리" maxlength="2" _errorEl="bizNoError" required>
	                        </div>
	                        <div class="col4">
	                            <input type="tel" name="bizNoList" id="bizNo3" value="23423" class="onlyNum" style="ime-mode: disabled;" title="사업자 등록번호 뒷자리" maxlength="5" _errorEl="bizNoError" required>
	                        </div>
	                    </div>
	                    <p class="p_guide warn"><i class="sp_icon ico_alert"></i>사업자 등록번호는 필수 입력입니다.</p>
	                </div>
	                <div class="box_form"  id="isBizrForm">
	                    <span class="tit">
	                        사업자 등록증 첨부
							<span class="ico_required">*</span>
	                    </span>
                        <div class="file" id="bizrLicsPathError">
	                        <div class="inner">
								
									<em class="file_name" id="_fileUpload">다운로드-4cb2a589fa37.jpg
									<a href="javascript:void(0);" class="btn_delete" _reset="#bizrLicsPath"><i class="sp_icon ico_delete">삭제</i></a>
									</em>
								
	                        </div>
	                        <input type="hidden" name="bizrLicsPath" id="bizrLicsPath" value="/home1/irteam/owfs/contents/bizreg/2018/2/다운로드-4cb2a589fa37.jpg" required/>
	                        <div class="btn_box">
								<label class="btn" for="_bizLcns">
									<div>파일첨부</div>
									<input type="file" class="_fileRel" name="uploadFile" id="_bizLcns" _fileValidation="pdf|png|jpe?g" style="display:none;"/>
								</label>
	                        </div>
	                    </div>
	                    <p class="p_guide warn"><i class="sp_icon ico_alert"></i>사업자 등록증 첨부는 필수 입력입니다.</p>
	                </div>
	            </div>
	            <div class="box_form" id="_location">
					<span class="tit">
						<label for="sp_adrs">
	                        사업장 주소
							<span class="ico_required">*</span>
	                    </label>
	                    <span class="tit_check">
	                    	<input type="hidden" name="_spaceAddrInfo" id="_spaceAddrInfo" value="경기도 오산시 대원동 28-2 행복레져센터 지하 78층" />
	                        <input type="checkbox" name="sameSpaceAddr" id="every" class="checkbox" checked>
	                        <label for="every"><i class="sp_icon"></i>공간정보와 동일</label>
	                    </span>
					</span>
			        <div class="input" id="addrError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
			            <input type="text" name="bizAddr" id="sp_adrs" value="경기도 오산시 대원동 28-2 행복레져센터 지하 78층" _errorEl="addrError" placeholder="사업장 주소를 입력해주세요." required>
			        </div>
			        <p class="p_guide warn"><i class="sp_icon ico_alert"></i>사업장 주소는 필수 입력입니다.</p>
			    </div>
                <div class="box_form email">
					<span class="tit">
						<label for="space_email">
	                        정산용 이메일
	                        <span class="ico_required">*</span>
	                    </label>
					</span>
	                <div class="row" id="space_email">
	                    <div class="col">
	                        <input type="text" name="setlEmailAddr" id="_email_addr" title="이메일 주소" regExp="^[a-zA-Z0-9-_\,\.]+$" _errorEl="space_email" value="dkelrk1" required>
	                    </div>
	                    <div class="col">
	                        <span class="txt_at">@</span>
	                        <input type="text" name="setlEmailAddr" id="_email_domain" title="이메일 도메인" style="width:100%" placeholder="직접입력" regExp="[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$" value="naver.com"  _errorEl="space_email" required readonly>
	                    </div>
	                    <div class="col">
	                        <div class="select">
	                            <select title="이메일 도메인 선택" id="_email_selector">
	                                <!-- TODO 공통코드로 변경할 것.-->
	                                
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
	                <p class="p_guide normal">
	                    <i class="sp_icon ico_alert"></i>
	                    월별 정산 자료를 해당 메일로 보내드립니다.
	                </p>
	                <p class="p_guide warn"><i class="sp_icon ico_alert"></i>이메일 주소는 필수 입력입니다.</p>
	            </div>
				<div class="flex_wrap column2">
					<div class="box_form mobile">
						<span class="tit">
							<label for="phone21">
								정산용 연락처
								<span class="ico_required">*</span>
							</label>
						</span>
						<div class="row phone" id='setlTelNoError'><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
							<div class="col4">
								<input type="tel" name="setlTelNo" id="phone21" class="onlyNum" style="ime-mode: disabled;" value="010" title="정산용 연락처 앞자리" maxlength="3" required>
							</div>
							<div class="col4">
								<input type="tel" name="setlTelNo" id="phone22" class="onlyNum" style="ime-mode: disabled;" value="5061" title="정산용 연락처 중간자리" maxlength="4" required>
							</div>
							<div class="col4">
								<input type="tel" name="setlTelNo" id="phone23" class="onlyNum" style="ime-mode: disabled;" value="3035" title="정산용 연락처 뒷자리" maxlength="4" required>
							</div>
						</div>
						<p class="p_guide warn"><i class="sp_icon ico_alert"></i>정산용 연락처는 필수 입력입니다.</p>
					</div>
				</div>
			</article>
            <article id="accountArticle">
				<div class="heading">
					<h3>계좌 정보</h3>
					<span class="option">
						<span class="txt_required">
							<span class="ico_required">*</span>
							 필수입력
						</span>
					</span>
				</div>
                <div class="account" id="_accountError">
					<dl class="flex_box">
						<dt class="flex tit">
							<label for="bnkCd">
								은행명
								<span class="ico_required">*</span>
							</label>
						</dt>
						<dd class="flex">
							<div class="select">
                                <select name="bnkCd" id="bnkCd"  _errorEl="_accountError" required>
		                            <option value="">은행을 선택해 주세요.</option>
		                            
		                            	<option value="HANA" >하나은행</option>
		                            
		                            	<option value="WOORI" >우리은행</option>
		                            
		                            	<option value="NH" >농협</option>
		                            
		                            	<option value="SINH" >신한은행</option>
		                            
		                            	<option value="BOK" >한국은행</option>
		                            
		                            	<option value="KDB" >산업은행</option>
		                            
		                            	<option value="IBK" >기업은행</option>
		                            
		                            	<option value="KEB" selected>국민은행</option>
		                            
		                            	<option value="SUH" >수협중앙회</option>
		                            
		                            	<option value="SCJ" >SC제일은행</option>
		                            
		                            	<option value="CITY" >한국씨티은행</option>
		                            
		                            	<option value="DGB" >대구은행</option>
		                            
		                            	<option value="BUSB" >부산은행</option>
		                            
		                            	<option value="KJB" >광주은행</option>
		                            
		                            	<option value="JEJUB" >제주은행</option>
		                            
		                            	<option value="JBB" >전북은행</option>
		                            
		                            	<option value="KNB" >경남은행</option>
		                            
		                            	<option value="KEBHA" >외환은행</option>
		                            
		                            	<option value="SHC" >신협중앙회</option>
		                            
		                            	<option value="MGS" >새마을금고</option>
		                            
		                            	<option value="EPOST" >우체국</option>
		                            
		                        </select>
							</div>
						</dd>
					</dl>
					<dl class="flex_box">
						<dt class="flex tit">
							<label for="acctNo">
								계좌번호
								<span class="ico_required">*</span>
							</label>
						</dt>
						<dd class="flex">
							<div class="input">
                                <input type="tel" name="acctNo" id="acctNo" value="231423423545756753513453465675" maxLength="30" regExp="^[0-9]+[0-9-]+[0-9]+$" _errorEl="_accountError" required>
							</div>
						</dd>
					</dl>
					<dl class="flex_box">
						<dt class="flex tit">
							<label for="dprtr">
								예금주
								<span class="ico_required">*</span>
							</label>
						</dt>
						<dd class="flex">
							<div class="input">
                                <input type="text" name="dprtr" id="dprtr" value="박다홈" maxLength="30" _errorEl="_accountError" required>
							</div>
						</dd>
					</dl>
				</div>
				<p class="p_guide normal">
					<i class="sp_icon ico_alert"></i>
					스페이스클라우드를 통해 결제된 금액을 정산 받으실 <strong>사업장 통장 계좌</strong>를 입력해주세요.
				</p>
				<p class="p_guide warn usual">
					<i class="sp_icon ico_alert"></i>
					입금자명은 "(주)앤스페이스"로 정산됩니다.
				</p>
				<p class="p_guide warn usual">
					<i class="sp_icon ico_alert"></i>
					정보 오기입시 정산이 지연될 수 있으니 정확한 정보를 입력해주세요.
				</p>
			</article>
		</section>
	</form>
	<div class="fixed_bar">
		<span class="btn_wrap"><a href="javascript:void(0)" class="fix_btn_prev" id="_preStep">이전</a></span>
		<span class="btn_wrap"><a href="javascript:void(0)" class="fix_btn_next" id="_nextStep">저장</a></span>
	</div>
</div>
<div class="layer_popup" style="display:none;" id="cmplRgstWorkspace">
    <div class="popup_wrap">
        <div class="pop_header">공간 정보 등록 완료</div>
        <div class="pop_container">
            <p class="pop_tit">공간 정보 등록이 완료되었습니다.</p>
            <p class="pop_txt"><strong>공간 검수</strong> 후에 서비스에 노출하실 수 있습니다.</p>
            <div class="btns full">
                <a href="javascript:void(0)" class="btn btn_full btn_default _cmplRgstWorkspaceClose" _popCls="cmplRgstWorkspace">확인</a>
            </div>
        </div>
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
	currentStep : 'step7',	// step1~cmpl
	rgstTpCd : 'wsmod'	// rgst / mod
	
	
};
</script>
</html>