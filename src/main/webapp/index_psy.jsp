<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="resources/images/icons/faviconSC2.png"/>
        <title>팀플SC</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="resources/css/style.css" rel="stylesheet">
        <link href="resources/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="resources/stylesheet" href="css/lightbox.min.css">
        <link href="resources/css/responsive.css" rel="stylesheet">
        <script src="<c:url value='/resources/js/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/lightbox-plus-jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/moment.js'/>" type="text/javascript"></script>
        
        <!--  -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
        
        <!--  -->
        
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
        </script>
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
								<a href="index.html"><img src="resources/images/custom/sclogo2.png"
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
										<li><a data-hover="About" href="resources/about.html"><span>About</span></a></li>
										<li><a data-hover="Rooms" href="resources/rooms.html"><span>Rooms</span></a></li>
										<li><a data-hover="Gallery" href="resources/gallery.html"><span>Gallery</span></a></li>
										<li><a data-hover="Dinning" href="resources/dinning.html"><span>Dinning</span></a></li>
										<li><a data-hover="News" href="resources/news.html"><span>News</span></a></li>
										<li><a data-hover="Contact Us" href="resources/contact.html"><span>contact
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
		
		<div id="myCarousel1" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1"></li>
				<li data-target="#myCarousel1" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/images/custom/170707_workspace_curation_banner.png"
						style="width: 100%; height: 500px" alt="First slide">
					<div class="carousel-caption">
						<h2>
							자유롭게 일 하기 좋은<br>일일 공유오피스
						</h2>
					</div>
				</div>
				<div class="item">
					<img src="resources/images/custom/180228_curation_banner_1.png"
						style="width: 100%; height: 500px" alt="Second slide">
					<div class="carousel-caption">
						<h2>
							도심 속에서 모이기 좋은<br> MT공간
						</h2>
					</div>
				</div>
				<div class="item">
					<img src="resources/images/custom/180228_curation_banner_3.png"
						style="width: 100%; height: 500px" alt="Third slide">
					<div class="carousel-caption">
						<h2>
							팀플 모임을 위한<br> 집중력 최고의 스터디룸
						</h2>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src="resources/images/icons/left-arrow.png"
				onmouseover="this.src = 'resources/images/icons/left-arrow-hover.png'"
				onmouseout="this.src = 'resources/images/icons/left-arrow.png'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src="resources/images/icons/right-arrow.png"
				onmouseover="this.src = 'resources/images/icons/right-arrow-hover.png'"
				onmouseout="this.src = 'resources/images/icons/right-arrow.png'" alt="left"></a>

		</div>
		<div class="clearfix"></div>

		<!--service block--->
		<!-- 삭제 -->
		<!--gallery block--->

		<!----resort-overview--->
		<section class="resort-overview-block">
			<div class="container">
				<div class='col-md-5'>
					<div class="form-group">
						<label>Date To:</label>
						<div class='input-group date' id='datetimepicker6'>
							<input type='text' class="form-control" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
				<div class='col-md-5'>
					<div class="form-group">
						<label>Date From:</label>
						<div class='input-group date' id='datetimepicker7'>
							<input type='text' class="form-control" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
			</div>

			<script type="text/javascript">
				$(function() {
					$('#datetimepicker6').datetimepicker({
						format: 'HH:mm'
						//disabledDates: ['2018-04-25', '2018-04-26'],
						//hoursDisabled: [0, 1, 2, 3, 4, 5, 6, 7, 8, 18, 19, 20, 21, 22, 23]
						//daysOfWeekDisabled: [0,3,6]
					});
					$('#datetimepicker7').datetimepicker({
						format: 'HH:mm'
						
					});
					$("#datetimepicker6").on(
							"dp.change",
							function(e) {
								$('#datetimepicker7').data("DateTimePicker")
										.minDate(e.date);
							});
					$("#datetimepicker7").on(
							"dp.change",
							function(e) {
								$('#datetimepicker6').data("DateTimePicker")
										.maxDate(e.date);
							});
				});
			</script>
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
