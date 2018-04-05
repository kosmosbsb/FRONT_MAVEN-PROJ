<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="<c:url value='/resources/images/icons/faviconSC2.png'/>"/>
        <title>팀플SC</title>
        <!-- Bootstrap core CSS -->
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href=" <c:url value='/resources/css/style.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/fonts/antonio-exotic/stylesheet.css'/>" rel="stylesheet">
        <link rel="<c:url value='/resources/stylesheet'/>" href="css/lightbox.min.css">
        <link href="<c:url value='/resources/css/responsive.css'/>" rel="stylesheet">
        <script src="<c:url value='/resources/js/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/lightbox-plus-jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!-- /////////////////////////////////////////////////////////////////// -->
    </head>
    
    <style>
.main {
	width: 90%;
}

.app-content {
	padding-top: 30px;
	padding-left: 14%;
	padding-bottom: 30px;
	/* padding: 30px 120px; */
	position: relative;
	padding-bottom: 30px;
}

.search_btn {
	width: 138px;
	height: 50px;
	background-color: #704de4;
	color: white;
	font-size: 20px;
}

.box_search {
	position: relative;
	padding: 30px;
	border: 4px solid #704de4;
	background: #fff;
}

.search_text {
	height: 50px;
	font-size: 16px;
	width: 80%;
	margin-right: 10px;
}

.notice_area {
	margin-top: 67px;
	width: 140%;
	min-height: 103px;
	font-size: 14px;
	background-color: #fff;
	border-bottom: 1px solid #e0e0e0;
}

.center_wrap {
	min-height: 139px;
	padding: 31px 0;
	display: table;
	width: 100%;
	height: 100%;
	vertical-align: middle;
}

.center {
	display: table-cell;
	vertical-align: middle;
}

.result_wrap {
	font-size: 24px;
	font-family: "NanumBarunGothicUltralight", sans-serif;
}

.search_keyword {
	display: inline;
	color: #6d3afb;
	border-bottom: 1px solid #6d3afb;
	margin-left: 10%;
}

.btn_area {
	position: absolute;
	top: 50%;
	right: 14em;
}

.show_map_btn {
	border: 1px solid #fff;
	border-radius: 44px;
	width: 98px;
	height: 40px;
	border-color: #704de4;
	border-width: 2px;
	margin-left: 6px;
	text-align: center;
	padding: 10px 0 8px;
	display: inline-block;
	line-height: inherit;
	color: #704de4;
	position: relative;
}

.txt_location {
	font-family: "NanumBarunGothicBold", sans-serif;
	font-size: 17px;
	color: #704de4;
	font-weight: bold;
}

.filter_area {
	position: relative;
	height: 107px;
	margin-left: 13%;
}

.filter_item {
	display: inline-block;
	padding-left: 15px;
	font-size: 16px;
	padding: 17px 13px 15px;
	color: #656565;
	font-weight: bold;
}

/* /////////////////////////////////////////////////////////////////// */
.nav-tabs {
	border: none;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover
	{
	border-width: 0;
}

.nav-tabs>li>a {
	border: none;
	color: #666;
}

.nav-tabs>li.active>a, .nav-tabs>li>a:hover {
	border: none;
	color: #4285F4 !important;
	background: transparent;
}

.nav-tabs>li>a::after {
	content: "";
	background: #4285F4;
	height: 2px;
	position: absolute;
	width: 100%;
	left: 0px;
	bottom: -1px;
	transition: all 250ms ease 0s;
	transform: scale(0);
}

.nav-tabs>li.active>a::after, .nav-tabs>li:hover>a::after {
	transform: scale(1);
}

.tab-nav>li>a::after {
	background: #21527d none repeat scroll 0% 0%;
	color: #fff;
}

.tab-pane {
	padding: 15px 0;
}

.tab-content {
	padding: 20px
}

.card {
	background: #FFF none repeat scroll 0% 0%;
	box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3);
	margin-bottom: 30px;
}

#drop {
	padding-left: 60%;
}

/* /////////////////////////////////////////////////////////////////// */
.resort-overview-block {
	margin-top: -8em;
}

.btn_reserve {
	position: absolute;
	top: 0mm;
	right: 4mm;
	display: inline-block;
	text-align: center;
}

.btn_reserve_confirm {
	padding: 7px 20px 5px;
	font-size: 12px;
	line-height: 13px;
	background-color: rgba(112, 77, 228, 0.9);
	color: #fff;
	display: table-cell;
	vertical-align: middle;
}
</style>
    
    <body>
	<div id="page">
<!-----------Left.jsp------------------------------------------------------------------------------------------------->
		<jsp:include page="/WEB-INF/template/SideMenu.jsp"/>
		
<!-----------Top.jsp-------------------------------------------------------------------------------------------------->
		<header class="header-container" style="background-color: #FFd014; height:4.5em;" >
			<div class="container">
				<div class="top-row">
					<div class="row">
						<div class="col-md-1" align="left" style="margin-top: -20px; right: 200px;">
							<a id="history">
								<img src='<c:url value='/resources/images/icons/prev_ico.png'/>'/>
							</a>
						</div>
						
						<div>
							<div id="logo" style="margin-top: -1.8em; right: 150px; position: relative;">
								<a href='<c:url value="/index.jsp"/>'>
									<img src="<c:url value='/resources/images/custom/sclogo2.png'/>" alt="logo" width=160px height=38px>
								</a>
								<!--<a href="index.html"><span>vacay</span>home</a>-->
							</div>
						</div>
						
						
					</div>
				</div>
			</div>
		</header>
<!-- -----middle--------------------------------------------------------------------------------------------------- -->
	<main class="main">
<!--3/30 --------------------------------------------------------------------- -->	
  <div class="app-content" >
    <div class="box_search">
	    <dl>
		    <dt>
		    	<label style="font-size: 16px;">공지사항 검색</label>
		    </dt>
		</dl>
	      <form role="search" method="post" action="<c:url value="/Notice/List.do"/>">
	          <input type="text" class="search_text" placeholder="검색어를 입력해주세요." name="searchWord">
	     	 <button type="submit" class="search_btn"><img src='<c:url value="/resources/images/icons/search_ico2.png"/>'>검색</button>
	      </form>
    </div>
  </div>
  <!-- ------------------------------------------------------------------------------- -->
  	<section class="notice_area">
  		<div class="center_wrap">
  			<div class="center">
  				<div class="result_wrap">
  					<a class="search_keyword">키워드</a>
  					<span>(으)로 검색한 결과입니다.</span>
  				</div>
	  		<div class="btn_area">
	  			<a class="show_map_btn" role="button">
	  				<img class="map_pt" src="<c:url value='/resources/images/icons/map_pt.png'/>">
	  				<span class="txt_location">지도</span>
	  			</a>
	  			<a class="show_map_btn" role="button">
	  				<img class="map_pt" src="<c:url value='/resources/images/icons/filter_ico.png'/>">
	  				<span class="txt_location">필터</span>
	  			</a>
	  		</div>
  			</div>
  		</div>
  	</section>
	<section class="filter_area">
		<div>
			<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active">
							<a href="#home" aria-controls="home" role="tab" data-toggle="tab">전체</a>
						</li>
							<li role="presentation">
						<a href="#profile"aria-controls="profile" role="tab" data-toggle="tab">시간단위</a>
							</li>
						<li role="presentation">
							<a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">일단위</a>
						</li>
						<li role="presentation">
							<a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">월단위</a>
						</li>
					<ul class="nav navbar-nav" id="drop">
						<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">베스트 공간 순 
							<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">가격 낮은 순</a></li>
								<li><a href="#">가격 높은 순</a></li>
								<li><a href="#">이용후기 많은 순</a></li>
							</ul>
						</li>
					</ul>
			</ul>
		</div>
	</section>      
<!--공간 --------------------------------------------------------------- -->	
		<section class="resort-overview-block">
			<div class="album py-5 bg-light">
				<div class="container">

					<div class="row">
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="https://scloud.pstatic.net/20171207_250/1512608347224aKJNv_JPEG/DSC_3920.jpg?type=f369_208"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
									<span class="btn_reserve">
										<span class="btn_reserve_confirm">승인<br/>결제</span>
									</span>
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="https://scloud.pstatic.net/20171207_250/1512608347224aKJNv_JPEG/DSC_3920.jpg?type=f369_208"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="https://scloud.pstatic.net/20171207_250/1512608347224aKJNv_JPEG/DSC_3920.jpg?type=f369_208"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="https://scloud.pstatic.net/20171207_250/1512608347224aKJNv_JPEG/DSC_3920.jpg?type=f369_208"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="https://scloud.pstatic.net/20171207_250/1512608347224aKJNv_JPEG/DSC_3920.jpg?type=f369_208"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="https://scloud.pstatic.net/20171207_250/1512608347224aKJNv_JPEG/DSC_3920.jpg?type=f369_208"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<!--공간 --------------------------------------------------------------- -->	

	</main>

<!-----------footer--------------------------------------------------------------------------------------------------->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--페이징 상단버튼------------------------------------------------------------------>
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a> 
	</div>
  </body>
</html>

<script>
        $(function(){
        	$("#menu-close").click(function(e) {
                e.preventDefault();
                $("#sidebar-wrapper").toggleClass("active");
            });
            
            $("#menu-toggle").click(function(e) {
                e.preventDefault();
                $("#sidebar-wrapper").toggleClass("active");
            });
        });
        
        $(function(){
        	$("#history").click(function(){
        		history.back();
        	})
        });
        
        $(function(){
		    $(".notice_view").hide();
			 $(".notice_view_area").click(function () {
				$(this).next().toggle("slow"); 
			});  
        });
        

        
 </script>
