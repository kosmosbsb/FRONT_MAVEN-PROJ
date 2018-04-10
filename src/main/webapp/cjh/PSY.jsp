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
        <script>
        //console.log("what");
        //console.log();
        </script>
        <style>
        @import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
		
		label{
			position: relative;
			cursor: pointer;
			color: #666;
			font-size: 30px;
		}
		
		input[type="checkbox"], input[type="radio"]{
			position: absolute;
			right: 9000px;
		}
		
		/*Check box*/
		input[type="checkbox"] + .label-text:before{
			content: "\f096";
			font-family: "FontAwesome";
			speak: none;
			font-style: normal;
			font-weight: normal;
			font-variant: normal;
			text-transform: none;
			line-height: 1;
			-webkit-font-smoothing:antialiased;
			width: 1em;
			display: inline-block;
			margin-right: 5px;
		}
		
		input[type="checkbox"]:checked + .label-text:before{
			content: "\f14a";
			color: #2980b9;
			animation: effect 250ms ease-in;
		}
		
		input[type="checkbox"]:disabled + .label-text{
			color: #aaa;
		}
		
		input[type="checkbox"]:disabled + .label-text:before{
			content: "\f0c8";
			color: #ccc;
		}
		
		/*Radio box*/
		
		input[type="radio"] + .label-text:before{
			content: "\f10c";
			font-family: "FontAwesome";
			speak: none;
			font-style: normal;
			font-weight: normal;
			font-variant: normal;
			text-transform: none;
			line-height: 1;
			-webkit-font-smoothing:antialiased;
			width: 1em;
			display: inline-block;
			margin-right: 5px;
		}
		
		input[type="radio"]:checked + .label-text:before{
			content: "\f192";
			color: #8e44ad;
			animation: effect 250ms ease-in;
		}
		
		input[type="radio"]:disabled + .label-text{
			color: #aaa;
		}
		
		input[type="radio"]:disabled + .label-text:before{
			content: "\f111";
			color: #ccc;
		}
		
		/*Radio Toggle*/
		
		.toggle input[type="radio"] + .label-text:before{
			content: "\f204";
			font-family: "FontAwesome";
			speak: none;
			font-style: normal;
			font-weight: normal;
			font-variant: normal;
			text-transform: none;
			line-height: 1;
			-webkit-font-smoothing:antialiased;
			width: 1em;
			display: inline-block;
			margin-right: 10px;
		}
		
		.toggle input[type="radio"]:checked + .label-text:before{
			content: "\f205";
			color: #16a085;
			animation: effect 250ms ease-in;
		}
		
		.toggle input[type="radio"]:disabled + .label-text{
			color: #aaa;
		}
		
		.toggle input[type="radio"]:disabled + .label-text:before{
			content: "\f204";
			color: #ccc;
		}
		
		
		@keyframes effect{
			0%{transform: scale(0);}
			25%{transform: scale(1.3);}
			75%{transform: scale(1.4);}
			100%{transform: scale(1);}
		}
        </style>
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
		<div class="container">
		<h2>1. Customs Checkboxes</h2>
			<div class="col-md-4">
				<form><!-- input 에 checked 혹은 disabled 옵션 있음 -->
					<div class="form-check">
						<label> <input type="checkbox" name="check">
							<span class="label-text">회의실</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check"> <span
							class="label-text">작업실</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check"> <span
							class="label-text">공연장</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check">
							<span class="label-text">스터디룸</span>
						</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				<form>
					<div class="form-check">
						<label> <input type="checkbox" name="check">
							<span class="label-text">세미나실</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check"> <span
							class="label-text">레저시설</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check"> <span
							class="label-text">연습실</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check">
							<span class="label-text">엠티장소</span>
						</label>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				<form>
					<div class="form-check">
						<label> <input type="checkbox" name="check">
							<span class="label-text">다목적홀</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check"> <span
							class="label-text">파티룸</span>
						</label>
					</div>
					<div class="form-check">
						<label> <input type="checkbox" name="check"> <span
							class="label-text">카페</span>
						</label>
					</div>
				</form>
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
