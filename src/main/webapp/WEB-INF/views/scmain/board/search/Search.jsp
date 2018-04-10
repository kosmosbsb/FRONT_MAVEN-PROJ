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
	border: none;
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

.btn_reserve_day {
	padding: 7px 9px 5px;
	font-size: 12px;
	line-height: 15px;
	background-color: rgba(6, 147, 237, 0.9);
	color: #fff;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
}

.card-body {
	position: relative;
	padding: 18px 20px 14px;
	background-color: #fff;
}

.card-text {
	margin-top: 0em;
	padding-bottom: 0px;
	font-family: "NanumBarunGothic", sans-serif;
	font-size: 19px;
	line-height: 23px;
	font-weight: bold;
	overflow: hidden;
	text-overflow: ellipsis;
	color: #000;
}

.tags {
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 12px;
	color: #656565;
	margin-top: 0em;
}

.tag_area_name:before {
	content: "";
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/tag_point.png'/>");
	width: 9px;
	height: 12px;
	padding-right: 1em;
}

.tag_area_name:after {
	content: "|";
	display: inline-block;
	right: 0;
	/* background-color: #ccc;  */
	top: 50%;
	width: 2px;
	height: 11px;
	margin-top: -5px;
	margin-left: 2px;
	color: #ccc 2px solid;
}

.info_price {
	height: 23px;
	padding-top: 2px;
	margin-top: 11px;
	font-size: 12px;
	color: #656565;
}

.price {
	font-size: 20px;
	font-family: "NanumBarunGothic", sans-serif;
	color: #6d3afb;
	font-weight: normal;
}

.txt_unit {
	color: #656565;
	margin-left: 1px;
	vertical-align: 10%;
}

.npay_ico {
	content: "";
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/npay_ico.png'/>");
	font-size: 0px;
	margin-top: 2px;
	margin-left: 0px;
	vertical-align: middle;
	margin-bottom: 10px;
	width: 41px;
	height: 18px;
}

.info_number_love {
	position: absolute;
	right: 20px;
	bottom: 16px;
	font-size: 12px;
}

.review_number {
	position: relative;
	padding-left: 18px;
	margin-right: 6px;
	font-size: 12px;
	color: #656565;
}

.love_number {
	position: relative;
	padding-left: 17px;
	font-size: 12px;
	color: #656565;
}

.review_ico {
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/review_ico.png'/>");
	font-size: 0px;
	width: 18px;
	height: 18px;
	position: absolute;
	left: 120em;
}

.love_ico {
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/love_ico.png'/>");
	font-size: 0px;
	width: 18px;
	height: 18px;
	position: absolute;
	left: 120em;
	bottom: 0%;
}

#space_box {
	text-decoration: none;
}
/*//////////////////////////////////호버  */
#upper_img {
	max-height: 225px;
	max-width: 359.5px;
	width: 363px;
	height: 225px;
	overflow: hidden;
}

#upper_img * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.45s ease-in-out;
	transition: all 0.45s ease-in-out;
}

#space_box:hover img, 
#space_box.hover img {
	-webkit-transform: scale(1.15);
	transform: scale(1.15);
}

#space_list{
	padding-left: 10%;
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
                        <a href='<c:url value="/spacecloud.do"/>'>
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
             <label style="font-size: 16px;">공간 검색</label>
          </dt>
      </dl>
         <form role="search" method="post" action="<c:url value="/Search/Search.do"/>">
             <input type="text" class="search_text" placeholder="검색어를 입력해주세요." name="searchSpace">
            <button type="submit" class="search_btn"><img src='<c:url value="/resources/images/icons/search_ico2.png"/>'>검색</button>
         </form>
    </div>
  </div>
  <!-- ------------------------------------------------------------------------------- -->
     <section class="notice_area">
        <div class="center_wrap">
           <div class="center">
              <div class="result_wrap">
                 <a class="search_keyword">${searchSpace}</a>
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
      <section class="resort-overview-block" id="space_list">
         <div class="album py-5 bg-light">
            <div class="container">
               <div class="row">
               <c:forEach var="item" items="${spaceList}" varStatus="loop">
                  <div class="col-md-4"
                     style="margin-top: 10px; margin-bottom: 10px;">
                     <a href="#" id="space_box">
	                     <div class="card mb-4 box-shadow">
	                        <div id="upper_img">
	                        <img class="card-img-top"
	                           data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
	                           alt="Thumbnail [100%x225]"
	                           src="<c:url value="/resources/images/room1.png"/>"
	                           data-holder-rendered="true"
	                           style="height: 225px; width: 100%; display: block;">
	                        </div>
	                           <span class="btn_reserve">
	                              <span class="btn_reserve_confirm">승인<br/>결제</span>
	                              <span class="btn_reserve_day">월단위<br/>예약가능</span>
	                           </span>
	                        <div class="card-body">
	                           <h3 class="card-text">${item.space_name}</h3>
	                           <div class="tags">
	                              <span class="tag_area_name">강남</span>
	                              <span>#소호사무실</span>
	                              <span>#주소지이용</span>
	                              <span>#비상주서비스</span>
	                              <span>#사업자등록</span>
	                           </div>
	                           <div class="info_price">
	                           		<strong class="price">${item.price_weekday}</strong>
	                           		<span class="txt_unit">원/월(인)</span>
	                           		<i class="npay_ico">네이버페이</i>
	                           </div>
	                           <div class="info_number_love">
	                           		<span class="review_number">
	                           			<i class="review_ico">리뷰수</i>
	                           			<em>0</em>
	                           		</span>
	                           		<span class="love_number">
	                           			<i class="love_ico">좋아요</i>
	                           			<em>${item.heart}</em>
	                           		</span>
	                           </div>
	                        </div>
	                     </div>
                     </a>
                  </div>
                </c:forEach>  
                  
                  
                  
                  
                  
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
        
        
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
</script>