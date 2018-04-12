<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String contextRoot = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="<c:url value='/resources/images/icons/faviconSC2.png'/>"/>
        <title>SpaceCloud</title>

        <!-- Bootstrap core CSS -->
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" >
        <!-- Custom styles for this template -->
        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/fonts/antonio-exotic/stylesheet.css'/>" rel="stylesheet">
        <link rel="<c:url value='/resources/stylesheet'/>" href="css/lightbox.min.css">
        <link href="<c:url value='/resources/css/responsive.css'/>" rel="stylesheet">
        <script src="<c:url value='/resources/js/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/lightbox-plus-jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>
        
    </head>
    <body>
	<div id="page">
		<!-- 이거 그 머냐 사이드 -->
		<jsp:include page="/WEB-INF/template/SideMenu.jsp"/>
		
		<!---header top---->
		<!--header--->
				<header class="header-container" style="background-color: #FFC600">
			<div class="container">
				<div class="top-row">
					<div class="row">
						<div class="col-md-2 col-sm-6 col-xs-6">
							<div id="logo">
								<a href="index.html"><img src="<c:url value='/resources/images/custom/sclogo2.png'/>"
									alt="logo" width=160px height=38px></a>
								<!--<a href="index.html"><span>vacay</span>home</a>-->
							</div>
						</div>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div style="margin-left:40%; width:100%;">
							<p style="font-size:30px;font-style: inherit;color: #693CED">공간 뷰</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--end-->
		<!-- 다수 케러셀 보류 -->
		<div id="myCarousel1" class="carousel slide" data-ride="carousel">
			

			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1"></li>
				<li data-target="#myCarousel1" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="<c:url value='/resources/images/custom/170707_workspace_curation_banner.png'/>"
						style="width: 100%; height: 500px" alt="First slide">
					<div class="carousel-caption">
						<h2>
							
						</h2>
					</div>
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/custom/180228_curation_banner_1.png'/>"
						style="width: 100%; height: 500px" alt="Second slide">
					<div class="carousel-caption">
						<h2>
							
						</h2>
					</div>
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/custom/180228_curation_banner_3.png'/>"
						style="width: 100%; height: 500px" alt="Third slide">
					<div class="carousel-caption">
						<h2>
							
						</h2>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src="<c:url value='/resources/images/icons/left-arrow.png'/>"
				onmouseover="this.src = '<c:url value='/resources/images/icons/left-arrow-hover.png'/>'"
				onmouseout="this.src = '<c:url value='/resources/images/icons/left-arrow.png'/>'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src="<c:url value='/resources/images/icons/right-arrow.png'/>"
				onmouseover="this.src = '<c:url value='/resources/images/icons/right-arrow-hover.png'/>'"
				onmouseout="this.src = '<c:url value='/resources/images/icons/right-arrow.png'/>'" alt="left"></a>

		</div>
		<!----resort-overview--->
		<!----resort-overview--->
		<section class="resort-overview-block">
			<div style="margin:auto; width:80%;">
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>공간 소개</h1>
				<thead>
					<tr>
						<th>공간번호</th>
						<th>공간명</th>
						<th>소개</th>
						<th>검색 태그</th>
						<th>상세설명</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.spaceInfo==null}" var="pana">
						<tr>
							<td colspan="5"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not pana}">
					<c:forEach var="item1" items="${spaceInfo}" varStatus="loop">
					<c:set var="spaceNo" value="${spaceInfo.space_no}"/>
					<tr>
						<td>${item1.space_no}</td>
						<td>${item1.space_name}</td>
						<td>${item1.intro_main}</td>
						<td>${item1.space_tag}</td>
						<td>${item1.intro_detail}</td>
					</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			</div>
			<div style="margin:auto; width:80%; margin-top: 80px;">
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>호스트 소개</h1>
				<thead>
					<tr>
						<th>호스트명</th>
						<th>호스트 소개!</th>
						<th>문의 메일</th>
						<th>문의 전화</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.spaceHostInfo==null}" var="panb">
						<tr>
							<td colspan="4"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not panb}">
					<c:forEach var="item2" items="${spaceHostInfo}" varStatus="loop">
					<tr>
						<td>${item2.h_nickname}</td>
						<td>${item2.introduce}</td>
						<td>${item2.mail}</td>
						<td>${item2.phone}</td>
					</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			</div>
			<div style="margin:auto; width:80%; margin-top: 80px;">
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>공간 예약 관련 정보</h1>
				<thead>
					<tr>
						<th>운영시간</th>
						<th>정기 휴일</th>
						<th>최소, 최대 예약 날짜</th>
						<th>최소, 최대 예약 인원</th>
						<th>가격 인당/공간당 기준</th>
						<th>예약 일당/시간당 기준</th>
						<th>단위당 가격</th>
						<th>주의할 사항</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.spaceResInfo==null}" var="panc">
						<tr>
							<td colspan="8"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not panc}">
					<c:forEach var="item3" items="${spaceResInfo}" varStatus="loop">
					<tr>
						<td>${item3.oper_time}</td>
						<td>${item3.regularly_close}</td>
						<td>${item3.min_day}~${item.max_day}</td>
						<td>${item3.min_person}~${item.max_person}</td>
						<td>${item3.price_standard}</td>
						<td>${item3.time_or_day}</td>
						<td>${item3.price_weekday}</td>
						<td>${item3.precaution}</td>
					</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			</div>
			<div style="margin:auto; width:80%; margin-top: 50px;">
			<a style="float:center" href="<c:url value='/NormalReserve/ReserveForm.do?sn=${spaceNo}'/>"
							class="btn btn-primary btn-block">예약하기</a>
			</div>
		</section>

		<!---footer--->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>

        </div>
    </body>
</html>