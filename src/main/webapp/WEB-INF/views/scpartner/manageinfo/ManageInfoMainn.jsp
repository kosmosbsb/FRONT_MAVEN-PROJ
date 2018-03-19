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
			<h2>내 공간정보 관리</h2>
		</div>
		<a href="/" class="nav_prev except">
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
	<form autocomplete="off">
	<section id="contents" class="contents search" role="main">
		
		<div class="flex_wrap column3 fluid my_space_list">
			
				 
				 
				 <article class="box_space 12228">
					<div class="inner">
						<div class="img_box">
							<span class="img"><img height="100%" width="100%" src="https://scloud.pstatic.net/20180212_11/15184321097509k8yp_JPEG/school_t580.jpg?type=f369_208" onerror="errorImg(this)">
								<span class="closed" _spaceId="12228" style=""><em>비공개 중입니다.</em></span>
							</span>
							<span class="label_writing"  style="">작성중</span>
						</div>
						<div class="info_area">
							<p class="tit_space">수련의 공간</p>
							<ul class="state_list">
								<li class="date">등록일 2018.02.12.</li>
								<li class="btn">
									<em class="blind">공개여부</em>
									<div class="box_switch ">
										<input type="checkbox" class="_spcExpsYn _workspace" _inspStatCd="NEO" _hostMbrId="dkelrk1" _spaceId="12228" id="view_12228">
										<label class="btn_switch" for="view_12228">
											<span class="left">공개</span>
											<span class="right">비공개</span>
										</label>
									</div>
								</li>
							</ul>
						</div>
						
						
						<div class="btn_area _spaceManage">
							<a href="/wsmod?h=dkelrk1&spaceId=12228" class="space_modify">공간정보 수정</a>
							<a href="javascript:void(0);" class="product_modify _workspaceCopy disabled">공간복제</a>
							<a href="javascript:void(0);" _spaceId="12228" class="delete _spcDeletePopup">삭제</a>
						</div>
						
						
						
					</div>
				 </article>
				 
				 <article class="box_space 12226">
					<div class="inner">
						<div class="img_box">
							<span class="img"><img height="100%" width="100%" src="https://ssl.pstatic.net/spacecloud/static/center/20160215/photo_default_rectangle.jpg" onerror="errorImg(this)">
								<span class="closed" _spaceId="12226" style=""><em>비공개 중입니다.</em></span>
							</span>
							<span class="label_writing"  style="">작성중</span>
						</div>
						<div class="info_area">
							<p class="tit_space">공간이름을 지정하지 않았습니다.</p>
							<ul class="state_list">
								<li class="date">등록일 2018.02.12.</li>
								<li class="btn">
									<em class="blind">공개여부</em>
									<div class="box_switch ">
										<input type="checkbox" class="_spcExpsYn " _inspStatCd="NEO" _hostMbrId="dkelrk1" _spaceId="12226" id="view_12226">
										<label class="btn_switch" for="view_12226">
											<span class="left">공개</span>
											<span class="right">비공개</span>
										</label>
									</div>
								</li>
							</ul>
						</div>
						
						
						
						<div class="btn_area _spaceManage">
							<a href="/mod/step1?h=dkelrk1&spaceId=12226" class="space_modify">공간정보 수정</a>
							<a href="/manage/product/12226" class="product_modify">세부 공간 추가/수정</a>
							<a href="javascript:void(0);" _spaceId="12226" class="delete _spcDeletePopup">삭제</a>
						</div>
						
						
					</div>
				 </article>
				 
				 <article class="box_space 12225">
					<div class="inner">
						<div class="img_box">
							<span class="img"><img height="100%" width="100%" src="https://ssl.pstatic.net/spacecloud/static/center/20160215/photo_default_rectangle.jpg" onerror="errorImg(this)">
								<span class="closed" _spaceId="12225" style=""><em>비공개 중입니다.</em></span>
							</span>
							<span class="label_writing"  style="">작성중</span>
						</div>
						<div class="info_area">
							<p class="tit_space">공간이름을 지정하지 않았습니다.</p>
							<ul class="state_list">
								<li class="date">등록일 2018.02.12.</li>
								<li class="btn">
									<em class="blind">공개여부</em>
									<div class="box_switch ">
										<input type="checkbox" class="_spcExpsYn " _inspStatCd="NEO" _hostMbrId="dkelrk1" _spaceId="12225" id="view_12225">
										<label class="btn_switch" for="view_12225">
											<span class="left">공개</span>
											<span class="right">비공개</span>
										</label>
									</div>
								</li>
							</ul>
						</div>
						
						
						
						<div class="btn_area _spaceManage">
							<a href="/mod/step1?h=dkelrk1&spaceId=12225" class="space_modify">공간정보 수정</a>
							<a href="/manage/product/12225" class="product_modify">세부 공간 추가/수정</a>
							<a href="javascript:void(0);" _spaceId="12225" class="delete _spcDeletePopup">삭제</a>
						</div>
						
						
					</div>
				 </article>
				 
				 
				 
			
		</div>
		<span class="btn_wrap">
			<a href="/rgst" class="btn btn_full btn_secondary">새 공간 등록하기</a>
		</span>
		
			<div class="paging">
				
					<a href="javascript:void(0);" class="btn_prev_list"><i class="sp_icon ico_prev_list">이전목록 10개로 이동</i></a><a href=javascript:void(0); class="num active">1</a>
<a href="javascript:void(0);" class="btn_next_list"><i class="sp_icon ico_next_list">다음목록 10개로 이동</i></a>
				
			</div>
		
	</section>
	</form>
	<!-- //contents -->
</div>

<div class="layer_popup" id="_onReserveExist" style="display:none;">
	<div class="popup_wrap alert">
		<div class="pop_container">
			<p class="pop_guide_txt">
				<strong>""</strong>공간에 <br>
				진행 중인 예약이 존재합니다. <br>
				예약취소 및 이용완료 후 삭제가 가능합니다.
			</p>
			<div class="btns full">
				<a href="javascript:void(0);" _popcls="_onReserveExist" class="btn btn_full btn_negative">닫기</a>
			</div>
		</div>
	</div>
</div>


<div class="layer_popup" id="_deleteSpacePopup" style="display:none">
	<div class="popup_wrap alert">
		<div class="pop_container">
			<p class="pop_guide_txt" id="deletedSpaceInfo">
				<input type="hidden" name="deletedSpaceId" id="deletedSpaceId" value=""/>
				<strong>"파티하우스 루이"</strong>
				공간을 삭제하시겠습니까?
			</p>
			<div class="btns">
				<a href="javascript:void(0);" class="btn btn_full btn_negative" _popcls="_deleteSpacePopup">닫기</a>
				<a href="javascript:void(0);" class="btn btn_full btn_default" id="_deleteSpace">삭제</a>
			</div>
		</div>
	</div>
</div>


<!-- 세부공간이 없는 데 공개 선택하는 경우 -->
<div class="layer_popup" id="_spaceExpsYButNoProduct" style="display:none;">
    <div class="popup_wrap alert">
        <div class="pop_container">
            <p class="pop_guide_txt">
                최소 1개의 세부 공간이 등록되어 있어야, <br>
                공개 설정이 가능합니다.
            </p>
            <div class="btns">
                <a href="javascript:void(0);" class="btn btn_full btn_negative" _popcls="_spaceExpsYButNoProduct">닫기</a>
                <a href="javascript:void(0);" id="_addProduct" class="btn btn_full btn_default">세부 공간 추가</a>
            </div>
        </div>
    </div>
</div>
<!-- [D] 세부공간 모두 비공개 설정시 -->
<div class="layer_popup" id="_productExpsNSoSpaceToN" style="display:none">
    <div class="popup_wrap alert">
        <div class="pop_container">
            <p class="pop_guide_txt">
                전체 세부공간을 비공개 설정하시면,<br>
                공간도 자동으로 비공개 설정됩니다.
            </p>
            <div class="btns">
                <a href="javascript:void(0);" class="btn btn_full btn_negative"  _popcls="_productExpsNSoSpaceToN">취소</a>
                <a href="javascript:void(0);" class="btn btn_full btn_default">확인</a>
            </div>
        </div>
    </div>
</div>

<!-- [D] 세부공간 공개 설정 시 공간도 공개-->
<div class="layer_popup" id="_productExpsYButSpaceExpsN" style="display:none;">
    <div class="popup_wrap alert">
        <div class="pop_container">
            <p class="pop_guide_txt">
                세부공간을 공개 설정하시면,<br>
                공간도 자동으로 공개 설정되어<br>
                스페이스클라우드 서비스에 노출됩니다.
            </p>
            <div class="btns">
                <a href="javascript:void(0);" class="btn btn_full btn_negative" _popcls="_productExpsYButSpaceExpsN">취소</a>
                <a href="javascript:void(0);" class="btn btn_full btn_default">확인</a>
            </div>
        </div>
    </div>
</div>
<div class="layer_popup" id="_inspectionError" style="display:none">
    <div class="popup_wrap alert">
        <div class="pop_container">
            <p class="pop_guide_txt strong">
                사유 : <strong id="_inspReason"></strong>
            </p>
            <p class="pop_sub_txt">
                위의 사유로 관리자가 호스트님의 공간을<br>비공개처리하였습니다. <br>
                자세한 내용은 관리자에게 문의해주세요.<br>감사합니다.
            </p>
            <div class="btns">
                <a href="javascript:void(0);" class="btn btn_full btn_negative" _popcls="_inspectionError">닫기</a>
                <a href="https://talk.naver.com/ct/wc89we" target="_blank" class="btn btn_full btn_default">문의하기</a>
            </div>
        </div>
    </div>
</div>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_min.js" type="text/javascript"></script>
<!--[if lt IE 10]>
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/jquery_core_ie10_min.js" type="text/javascript"></script>
<![endif]-->
<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180129075647/min/space_manage_page_min.js" type="text/javascript"></script>
	<div class="dimmed"></div>
</body>
<script type="text/javascript">
var imageDomain = 'https://scloud.pstatic.net';
</script>
</html>