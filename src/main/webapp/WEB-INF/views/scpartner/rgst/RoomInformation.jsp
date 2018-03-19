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



	
	
		<div class="nav_progress">
			<span class="bar_progress"><em></em></span>
			
				
					<div class="tab_steps divide7">
						<a href="javascript:void(0);" _step="step1"><em>01.</em>공간 유형
							선택</a> <a href="javascript:void(0);" _step="step2"><em>02.</em>공간정보</a>
						<a href="javascript:void(0);" _step="step3"><em>03.</em>사업자정보</a>
						<a href="javascript:void(0);" _step="step4"><em>04.</em>예약운영</a> <a
							href="javascript:void(0);" _step="step5"><em>05.</em>세부 공간 추가</a>
						<a href="javascript:void(0);" _step="step6"><em>06.</em>일정/가격</a>
						<a href="javascript:void(0);" _step="step7"><em>07.</em>옵션</a>
					</div>
				
				
				
			
		</div>
	






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
	    <input type="hidden" name="spaceId" value="12230"/>
	    <section id="contnts" class="contents" role="main">
	        <div class="heading">
	            <h3>공간 정보를 입력해주세요.</h3>
				<span class="option">
					<span class="txt_required">
						<span class="ico_required">*</span>
						필수입력
					</span>
				</span>
	        </div>
	        <!-- START : 공간 기본 정보 -->
	        <div class="box_form" id="_spcNm_required">
	            <div class="tit">
	                <label for="space_name">
	                    공간명
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
					<span class="option">
						<span class="txt_count">
							<em id="spcNmCnt">0</em>자/<em>18</em>자
						</span>
					</span>
	            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" name="spcNm" id="space_name" placeholder="공간명을 입력해주세요."
	                       _errorEl="_spcNm_required" maxLength="18" value="" _lcount="spcNmCnt" required>
	            </div>
	            <p class="p_guide normal"><i class="sp_icon ico_alert"></i>사용 가능한 특수문자 : ( , ) , [ , ] , - , .(마침표), ,(쉼표)</p>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간명은 필수 입력입니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit" id="_subTtl_required">
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
	                       _errorEl="_subTtl_required" maxLength="27" value="" _lcount="subTtlCnt" required>
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간을 소개하는 한 줄은 필수입니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit" id="_spcDesc_required">
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
	                          _errorEl="_spcDesc_required" minLength="20" maxLength="500" style="height:108px" _lcount="spcDescCnt" required ></textarea>
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간 소개는 필수 입력으로 최소20자 최대 500자 까지 가능합니다.</p>
	        </div>
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
	                
	                    <span class="tag_detail">#비지니스
	                        <input type="hidden" value="비지니스" name="spcTag"/>
	                        <a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
	                    </span>
	                
	                    <span class="tag_detail">#스포츠
	                        <input type="hidden" value="스포츠" name="spcTag"/>
	                        <a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
	                    </span>
	                
	                    <span class="tag_detail">#올나잇
	                        <input type="hidden" value="올나잇" name="spcTag"/>
	                        <a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
	                    </span>
	                
	                    <span class="tag_detail">#이색카페
	                        <input type="hidden" value="이색카페" name="spcTag"/>
	                        <a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
	                    </span>
	                
	                    <span class="tag_detail">#워크샵
	                        <input type="hidden" value="워크샵" name="spcTag"/>
	                        <a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
	                    </span>
	                
	            </div>
	            <p class="p_guide warn">
	                <i class="sp_icon ico_alert"></i>
	                공간태그는 필수 입력입니다.
	            </p>
	        </div>
	        <div class="box_form">
	            <div class="tit">
	                <label for="space_name">
	                    시설안내
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
				<span class="option">
					<span class="txt_count">
						<em id="spcFctsGuideCnt">0</em>자/<em>100</em>자
					</span>
				</span>
	            <div class="input_add" id="_spcFctsGuide"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" id="_spcFctsGuideInput" placeholder="최대 10개까지 작성가능합니다." _enter="fctsEnter" _lcount="spcFctsGuideCnt" maxLength="100">
	                <div class="btn_box">
	                    <a href="javascript:void(0);" class="btn _addGuide" _type="spcFctsGuide" id="fctsEnter">
	                        <span class="btn_inner">추가</span>
	                    </a>
	                </div>
	            </div>
	            <div class="input_add_text" id="_spcFctsGuideList" style="display:none;">
	                <input type="hidden" id="_fctsRequiredTarget" _errorEl="_spcFctsGuide" value="" required>
	                
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>시설안내는 필수 입력입니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit">
	                <label for="space_name">
	                    예약시 주의사항
	                    <span class="ico_required">*</span>
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
	                <input type="hidden" id="_attnMttrRequiredTarget" _errorEl="_spcAttnMttr" value="" required>
	                
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>예약시 주의사항은 필수 입력입니다.</p>
	        </div>
			<!-- START : 휴무/휴시 -->
			<div class="flex_wrap column2">
				<div class="box_form officehour">
					<span class="tit">
						<label for="slsStrtHour">
							이용시간
							<span class="ico_required">*</span>
						</label>
					</span>
					<div class="row">
						<div class="select">
							<select class="_slsHour" name="slsStrtHour" id="slsStrtHour" title="이용시작 시작 시 선택">
								
									<option value="0" >0 시</option>
								
									<option value="1" >1 시</option>
								
									<option value="2" >2 시</option>
								
									<option value="3" >3 시</option>
								
									<option value="4" >4 시</option>
								
									<option value="5" >5 시</option>
								
									<option value="6" >6 시</option>
								
									<option value="7" >7 시</option>
								
									<option value="8" >8 시</option>
								
									<option value="9" selected>9 시</option>
								
									<option value="10" >10 시</option>
								
									<option value="11" >11 시</option>
								
									<option value="12" >12 시</option>
								
									<option value="13" >13 시</option>
								
									<option value="14" >14 시</option>
								
									<option value="15" >15 시</option>
								
									<option value="16" >16 시</option>
								
									<option value="17" >17 시</option>
								
									<option value="18" >18 시</option>
								
									<option value="19" >19 시</option>
								
									<option value="20" >20 시</option>
								
									<option value="21" >21 시</option>
								
									<option value="22" >22 시</option>
								
									<option value="23" >23 시</option>
								
							</select>
						</div>
						<span class="txt_hour">부터</span>

						<div class="select">
							<select class="_slsHour" name="slsEndHour" id="slsEndHour" title="이용종료 시간 시 선택">
								
									<option value="1" >1 시</option>
								
									<option value="2" >2 시</option>
								
									<option value="3" >3 시</option>
								
									<option value="4" >4 시</option>
								
									<option value="5" >5 시</option>
								
									<option value="6" >6 시</option>
								
									<option value="7" >7 시</option>
								
									<option value="8" >8 시</option>
								
									<option value="9" >9 시</option>
								
									<option value="10" >10 시</option>
								
									<option value="11" >11 시</option>
								
									<option value="12" >12 시</option>
								
									<option value="13" >13 시</option>
								
									<option value="14" >14 시</option>
								
									<option value="15" >15 시</option>
								
									<option value="16" >16 시</option>
								
									<option value="17" >17 시</option>
								
									<option value="18" >18 시</option>
								
									<option value="19" >19 시</option>
								
									<option value="20" >20 시</option>
								
									<option value="21" selected>21 시</option>
								
									<option value="22" >22 시</option>
								
									<option value="23" >23 시</option>
								
									<option value="24" >24 시</option>
								
							</select>
						</div>
						<span class="txt_hour">까지</span>
					</div>
					<p class="p_guide warn"><i class="sp_icon ico_alert"></i>이용시간은 필수 입력입니다.</p>
					<p class="p_guide normal"><i class="sp_icon ico_alert"></i>실제로 공간공유가 가능한 시간을 입력해주세요.</p>
				</div>
				<div class="box_form">
	                <span class="tit"><label for="holiday">정기휴무</label> <span class="ico_required">*</span>
						<span class="tit_check">
		                    <input type="checkbox" name="hdayBrkYn" id="_holidayBrkDay" class="checkbox" value="Y"  >
		                    <label for="_holidayBrkDay"><i class="sp_icon"></i>공휴일 휴무</label>
	                	</span>
					</span>
	                <div class="dayoff  ">
	                    <div class="select">
	                        <select name="brkDayTpCd" id="holiday">
								<option value="NONE">휴무없음</option>
								
									
								
									
								
									
										<option value="WEKLY" >매주</option>
									
								
									
										<option value="ODDW" >격주(홀수주)</option>
									
								
									
										<option value="EVENW" >격주(짝수주)</option>
									
								
									
										<option value="WEEK1" >매월 첫째주</option>
									
								
									
										<option value="WEEK2" >매월 둘째주</option>
									
								
									
										<option value="WEEK3" >매월 셋째주</option>
									
								
									
										<option value="WEEK4" >매월 넷째주</option>
									
								
									
										<option value="LSTWK" >매월 마지막주</option>
									
								
									
										<option value="LSTDY" >매월 말일</option>
									
								
									
										<option value="MNTLY" >매월(직접지정)</option>
									
								
	                        </select>
	                    </div>
	                    <ul class="check_list week" id="weekError">
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_MON" value="MON" >
	                                <label for="date_MON">월</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_TUE" value="TUE" >
	                                <label for="date_TUE">화</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_WED" value="WED" >
	                                <label for="date_WED">수</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_THU" value="THU" >
	                                <label for="date_THU">목</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_FRI" value="FRI" >
	                                <label for="date_FRI">금</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_SAT" value="SAT" >
	                                <label for="date_SAT">토</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorEl="weekError" name="daywCd" id="date_SUN" value="SUN" >
	                                <label for="date_SUN">일</label>
	                            </li>
	                        
	                        </li>
	                    </ul>
						<!-- 직접지정시 노출  -->
						<div class="select specific">
							<select name="directDay" id="directDay" required disabled>
								
									<option value="1" >1일</option>
								
									<option value="2" >2일</option>
								
									<option value="3" >3일</option>
								
									<option value="4" >4일</option>
								
									<option value="5" >5일</option>
								
									<option value="6" >6일</option>
								
									<option value="7" >7일</option>
								
									<option value="8" >8일</option>
								
									<option value="9" >9일</option>
								
									<option value="10" >10일</option>
								
									<option value="11" >11일</option>
								
									<option value="12" >12일</option>
								
									<option value="13" >13일</option>
								
									<option value="14" >14일</option>
								
									<option value="15" >15일</option>
								
									<option value="16" >16일</option>
								
									<option value="17" >17일</option>
								
									<option value="18" >18일</option>
								
									<option value="19" >19일</option>
								
									<option value="20" >20일</option>
								
									<option value="21" >21일</option>
								
									<option value="22" >22일</option>
								
									<option value="23" >23일</option>
								
									<option value="24" >24일</option>
								
									<option value="25" >25일</option>
								
									<option value="26" >26일</option>
								
									<option value="27" >27일</option>
								
									<option value="28" >28일</option>
								
									<option value="29" >29일</option>
								
									<option value="30" >30일</option>
								
									<option value="31" >31일</option>
								
							</select>
						</div>
						<p class="p_guide warn"><i class="sp_icon ico_alert"></i>정기휴무는 필수 입력입니다.</p>
	                    <!-- //직접지정시 노출  -->
	                </div>
	            </div>
	        </div>
	        <!-- END : 휴무/휴시 -->
	
	        <div class="box_form">
	            <div class="tit">
	                <label for="space_url">
	                    웹사이트
	                </label>
	            </div>
	            <div class="input">
	                <input type="text" name="hmpgUrl" id="space_url" placeholder="웹사이트 URL을 입력해주세요.(예시:http://spacecloud.kr)" regExp="(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?" value="" _lcount="hmpgUrlCnt">
	            </div>
	        </div>
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
	
	        <div class="box_form email">
				<span class="tit" id="space_email">
					<label for="space_email">
						이메일
						<span class="ico_required">*</span>
					</label>
				</span>
	            <div class="row" id="emailError">
	                <div class="col">
						<input type="text" name="email" id="_email_addr" title="이메일 주소" regExp="^[a-zA-Z0-9-_\,\.]+$" _errorEl="emailError" value="swwt12" required>
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
	        <!-- START : 연락처 -->
	        <div class="flex_wrap column2">
	            <div class="box_form mobile" id="cellPhone">
                    <span class="tit">
                        <label for="phone11">
                            휴대폰
                            <span class="ico_required">*</span>
                        </label>
                    </span>
	                <div class="row phone" id="mobileError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                    <div class="col4">
	                        <div class="select">
	                            <select name="mobile1" id="phone11" title="휴대폰 앞자리" class='virtualNum'>
	                                
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
	                        <input type="tel" name="mobile1" id="phone12" title="휴대폰 중간자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="6397" required>
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="mobile1" id="phone13" title="휴대폰 뒷자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="5401" required>
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
	                        <input type="checkbox" name="set" id="_sameCphNo" class="checkbox" >
	                        <label for="_sameCphNo"><i class="sp_icon"></i>휴대폰과 동일</label>
	                    </span>
					</span>
	                <div class="row phone">
	                    <div class="col4">
	                        <input type="tel" name="telephone" id="phone31" value="" maxLength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 앞자리" required>
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="telephone" id="phone32" value="" maxLength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 중간자리" required>
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="telephone" id="phone33" value="" maxLength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 뒷자리" required>
	                    </div>
	                </div>
					<div class="virtual_area " id="_virtualAreaEl">
						<span class="btn_virtual btn_default"  style="cursor:pointer;" id="_virtualNumberBtn" data-already="false">가상번호설정</span>
						<span class="result_number"></span>
					</div>
					<input type="hidden" name="virtual" id="virtualNo" _errorEl="_virtualAreaEl" value="" required>
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
	        <!-- END : 연락처 -->
	
	        <!-- START : 주소 등록 -->
	        <div class="box_form" id="_location">
				<span class="tit">
					<label for="sp_adrs">
						주소(위치)
						<span class="ico_required">*</span>
					</label>
				</span>
	            <div class="file"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="hidden" name="cortarNo" id="_cortarNo" value="" _errorEl="addrError"  required/>
	                <input type="hidden" name="lat" id="_lat" value="0.0" _errorEl="addrError"  required/>
	                <input type="hidden" name="lng" id="_lng" value="0.0" _errorEl="addrError"  required/>
	                <input type="text" class="_openSearchAddressPopUp" name="spaceAddr" id="_spaceAddress" value="" placeholder="주소를 등록해주세요."  readonly>
	                <div class="btn_box">
	                    <a href="javascript:void(0);" class="btn _openSearchAddressPopUp" title="주소 등록">주소등록</a>
	                </div>
	            </div>
	            <div class="input" id="addrError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" name="spcDtlAddr" id="sp_adrs" value="" _errorEl="addrError" placeholder="상세 주소를 입력해주세요." required>
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>주소(위치)는 필수 입력입니다.</p>
	        </div>
	        <!-- END : 주소 등록 -->

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
	    </section>
	</form>
	<div class="fixed_bar xdivide3">
		<span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_prev" id="_preStep">이전</a></span>
	    
	    <span class="btn_wrap"><a href="javascript:void(0);" class="fix_btn_next" id="_nextStep">다음</a></span>
	</div>
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
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/rgst_page_min.js" type="text/javascript"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/space_manage_page_min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/maps3.js?_v20151103"></script>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/search_address_map_min.js" type="text/javascript"></script>

<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';
var jsonPageData = {
	userTpCd : '',			// host / LCR / LCM
	hostId : '',	// host Id managed by LC
	maxPossbleStep : 'step2',	// step2~cmpl
	spaceId : '12230', 
	productId : '', 
	currentStep : 'step2',	// step1~cmpl
	rgstTpCd : 'rgst'	// rgst / mod
	
	,imageList : []	// [{imagePathList}]
	
	
};
</script>
</html>