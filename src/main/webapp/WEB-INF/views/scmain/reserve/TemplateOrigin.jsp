<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
        <script>//사이드바 메뉴 스크립트
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
        </script>
    </head>
    <body>
	<div id="page">
		<!--사이드 바 -->
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
						<div class="col-sm-6 visible-sm">
							<div class="text-right">
								<button type="button" class="book-now-btn">Book Now</button>
							</div>
						</div>
						<div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
							<nav class="navbar navbar-default">
								<div class="navbar-header page-scroll">
									<button data-target=".navbar-ex1-collapse"
										data-toggle="collapse" class="navbar-toggle" type="button">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>

								</div>
								<div
									class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
									<ul class="list-unstyled nav1 cl-effect-10">
										<li><a data-hover="Home" class="active"><span>Home</span></a></li>
										<li><a data-hover="About" href="about.html"><span>About</span></a></li>
										<li><a data-hover="Rooms" href="rooms.html"><span>Rooms</span></a></li>
										<li><a data-hover="Gallery" href="gallery.html"><span>Gallery</span></a></li>
										<li><a data-hover="Dinning" href="dinning.html"><span>Dinning</span></a></li>
										<li><a data-hover="News" href="news.html"><span>News</span></a></li>
										<li><a data-hover="Contact Us" href="contact.html"><span>contact
													Us</span></a></li>
									</ul>

								</div>
							</nav>
						</div>
						<div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
							<div class="text-right">
								<button type="button" class="book-now-btn">Book Now</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--end-->
		<div class="clearfix"></div>

		<!----resort-overview--->
		<section class="resort-overview-block">
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>예약내용</h1>
				<thead>
					<tr>
						<th>예약번호</th>
						<th>신청일</th>
						<th>공간명</th>
						<th>예약 시작 날짜</th>
						<th>예약 끝 날짜</th>
						<th>인원</th>
						<th>최종 결제 가격</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.psyList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item" items="${psyList}" varStatus="loop">
						<tr>
							<td>${item.reserve_no}</td>
							<td>${item.regidate}</td>
							<td>${item.space_name}</td>
							<td>${item.startdate}</td>
							<td>${item.enddate}</td>
							<td>${item.reserve_person}</td>
							<td>${item.totalprice}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>예약자 정보</h1>
				<thead>
					<tr>
						<th>예약자 이름</th>
						<th>예약자 연락처</th>
						<th>예약자 이메일</th>
						<th>질문 사항</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.reserverList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item2" items="${reserverList}" varStatus="loop">
						<tr>
							<td>${item2.reserve_name}</td>
							<td>${item2.reserve_phone}</td>
							<td>${item2.reserve_email}</td>
							<td>${item2.ask}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>환불 규정 안내</h1>
				<thead>
					<tr>
						<th>이용 8일 전</th>
						<th>이용 7일 전</th>
						<th>이용 6일 전</th>
						<th>이용 5일 전</th>
						<th>이용 4일 전</th>
						<th>이용 3일 전</th>
						<th>이용 2일 전</th>
						<th>이용 전날</th>
						<th>이용 당일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.refundList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item3" items="${refundList}" varStatus="loop">
						<tr>
							<td><fmt:formatNumber value="${item3.leftday8 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday7 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday6 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday5 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday4 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday3 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday2 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday1 * 100}" type="number" pattern="#" />%</td>
							<td><fmt:formatNumber value="${item3.leftday0 * 100}" type="number" pattern="#" />%</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>공간 간략한 정보</h1>
				<thead>
					<tr>
						<th>공간명</th>
						<th>주소</th>
						<th>연락처</th>
						<th>longitude</th>
						<th>latitude</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.spaceList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item4" items="${spaceList}" varStatus="loop">
						<tr>
							<td>${item4.space_name}</td>
							<td>${item4.address}</td>
							<td>${item4.phone}</td>
							<td>DB에 반영했으면 하지만 지금은 없는 컬럼</td>
							<td>DB에 반영했으면 하지만 지금은 없는 컬럼</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>처리 결과</h1>
				<thead>
					<tr>
						<th>예약 취소 날짜</th>
						<th>취소 사유</th>
						<th>예약 시작 날짜</th>
						<th>예약 끝 날짜</th>
						<th>예약일까지 남은 날짜</th>
						<th>예약 인원</th>
						<th>환불 가격</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.moneyList==null}" var="fuck">
						<tr>
							<td colspan="7"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not fuck}">
					<c:forEach var="item5" items="${moneyList}" varStatus="loop">
						<tr>
							<td>${item5.regidate}</td>
							<td>${item5.cancel_comment}</td>
							<td>${item5.startdate}</td>
							<td>${item5.enddate}</td>
							<td>${item5.diff}</td>
							<td>${item5.reserve_person}</td>
							<td>${item5.refundprice}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<!-- Button trigger modal -->
			<c:if test="${fuck}">
			<button style="display: flex; justify-content: center;" type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModalCenter">예약 취소하기</button>
			</c:if>
			<!-- Modal -->
			
			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Modal
								title</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" id="form1" action="<c:url value='/NormalReserve/ReserveCancel.do'/>" method="post">
								<fieldset>
								
								<!-- Form Name -->
								<legend>예약 취소 양식</legend>
								
								<!-- Textarea -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="textarea">취소 사유</label>
								  <div class="col-md-4">                     
								    <textarea class="form-control" id="textarea" name="comment"></textarea>
								    <input type="hidden" name="rn" value="${param.rn}">
								  	<input type="hidden" name="sn" value="${param.sn}">
								  </div>
								</div>
								
								</fieldset>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" form="form1" class="btn btn-primary">예약 취소 신청</button>
						</div>
					</div>
				</div>
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
