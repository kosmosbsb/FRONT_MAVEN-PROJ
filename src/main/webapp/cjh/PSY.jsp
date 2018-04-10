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
		<div class="row">
		<script>
		$(function(){
			
			$("#buttonId").on('click',function(){
				//console.log($("#taginputId").val()==null? "null":"null아님");
				if($("#taginputId").val()==""){
					$("#tagoutputId").val("");
				}
				else{
				$("#tagoutputId").val($("#tagoutputId").val()+"#"+$("#taginputId").val());
				$("#taginputId").val("");
				}
			});
			
			$("#faciloutputId").change(function(){
				$("#faciloutputId").val("");
			});
			
			$("#buttonId2").on('click',function(){
				//console.log($("#taginputId").val()==null? "null":"null아님");
				if($("#facilinputId").val()==""){
					$("#faciloutputId").val("");
				}
				else{
					if($("#faciloutputId").val()==""){
						$("#faciloutputId").val($("#facilinputId").val())
						$("#facilinputId").val("");
					}
					else{
						$("#faciloutputId").val($("#faciloutputId").val()+"\r\n"+$("#facilinputId").val());
						$("#facilinputId").val("");
					}
				}
				console.log("#faciloutputId"+$("#faciloutputId").val());
				$("#facilhiddenId").val($("#faciloutputId").val());
				console.log("#facilhiddenId"+$("#facilhiddenId").val());
			});
			
			$("#faciloutputId").change(function(){
				$("#faciloutputId").val("");
			});
			
		});
		</script>
		<div style="margin:auto;width:80%;">
			<div class="col-lg-4">
				<div class="input-group">
				<span class="input-group-addon">태그를 입력하고 버튼을 누르세요!</span>
				<input type="text" name="taginputName" class="form-control" id="taginputId">
				<span class="input-group-addon" id="buttonId">버튼</span>
				<!-- <button id="buttonId" class="btn btn-primary">버튼이다</button> -->
				</div>
			</div>
			<div class="col-lg-8">
				<div class="input-group">
				<span class="input-group-addon">입력된 태그들(#로 구분하세요!)</span>
				<input type="text" name="tagoutputName" class="form-control" id="tagoutputId">
				</div>
			</div>
		</div>
		
		<div style="margin:auto;width:80%;margin-top:50px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="input-group">
				<span class="input-group-addon">시설 안내사항을 입력하고 버튼을 누르세요!</span>
				<input type="text" name="taginputName" class="form-control" id="facilinputId">
				<span class="input-group-addon" id="buttonId2">버튼</span>
				<!-- <button id="buttonId" class="btn btn-primary">버튼이다</button> -->
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<textarea class="form-control custom-control" rows="5" style="resize:none" id="faciloutputId"></textarea>
				<input type="hidden" value="" id="facilhiddenId">
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
