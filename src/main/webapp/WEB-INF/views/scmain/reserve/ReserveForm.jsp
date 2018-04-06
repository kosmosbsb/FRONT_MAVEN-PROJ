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
        <script src="<c:url value='/resources/js/moment.js'/>" type="text/javascript"></script>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
        
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
			<form class="form-horizontal" action="<c:url value='/NormalReserve/ReserveForm.do'/>" method="post" id="rform">
				<fieldset>
					<input name="sn" form="rform" type="hidden" value="${param.sn}">
					<!-- Form Name -->
					<legend>예약 양식을 작성해주세요.</legend>
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="peopleNumber">인원</label>
						<div class="col-md-2">
							<input id="peopleNumber" name="peopleNumber" type="text"
								placeholder="숫자를 입력" class="form-control input-md" required="">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="reservePhone">예약자
							연락처</label>
						<div class="col-md-4">
							<input id="reservePhone" name="reservePhone" type="text"
								placeholder="00011112222" class="form-control input-md"
								required="">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="reserveEmail">예약자
							이메일</label>
						<div class="col-md-4">
							<input id="reserveEmail" name="reserveEmail" type="text"
								placeholder="reserver123@reserve.com"
								class="form-control input-md" required="">

						</div>
					</div>

					<!-- Textarea -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="reserveComment">질문
							사항</label>
						<div class="col-md-4">
							<textarea class="form-control" id="reserveComment"
								name="reserveComment">질문사항을 입력 (선택사항)</textarea>
						</div>
					</div>
					<div class='form-group'>
						<div class="col-md-6 col-md-offset-2">
						<label class="col-md-4 control-label" for="datetimepicker6">시작 날짜</label>
							<div class='input-group date' id='datetimepicker6'>
								<input name="startDate" form="rform" type='text' class="form-control" /> <span
									class="input-group-addon"> <span
									class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
					<div class='form-group'>
						<div class="col-md-6 col-md-offset-2">
						<label class="col-md-4 control-label" for="datetimepicker7">끝 날짜</label>
							<div class='input-group date' id='datetimepicker7'>
								<input name="endDate" form="rform" type='text' class="form-control" /> <span
									class="input-group-addon"> <span
									class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button form="rform" id="singlebutton" name="singlebutton"
								class="btn btn-primary">예약 신청</button>
						</div>
					</div>
					<script type="text/javascript">
					$(function() {
						$('#datetimepicker6').datetimepicker();
						$('#datetimepicker7').datetimepicker({
							useCurrent : false
						//Important! See issue #1075
						});
						$("#datetimepicker6").on(
								"dp.change",
								function(e) {
									$('#datetimepicker7')
											.data("DateTimePicker").minDate(
													e.date);
								});
						$("#datetimepicker7").on(
								"dp.change",
								function(e) {
									$('#datetimepicker6')
											.data("DateTimePicker").maxDate(
													e.date);
								});
					});
				</script>
				</fieldset>
			</form>
			
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
