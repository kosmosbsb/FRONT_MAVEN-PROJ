<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
    <head>
    	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../resources/images/icons/faviconSC2.png"/>
        <title>공간등록</title>

        <!-- Bootstrap core CSS -->
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        
        <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">	
	
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
        <!-- Custom styles for this template -->
        <link href="../resources/css/style.css" rel="stylesheet">
        <link href="../resources/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="../resources/stylesheet" href="css/lightbox.min.css">
        <link href="../resources/css/responsive.css" rel="stylesheet">
        <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../resources/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/instafeed.min.js" type="text/javascript"></script>
        <script src="../resources/js/custom.js" type="text/javascript"></script>
        
        <script>
        $(function(){
        	var navListItems = $('div.setup-panel div a'),
	           allWells = $('.setup-content'),
	           allNextBtn = $('.nextBtn');

		    allWells.hide();
	
		    navListItems.click(function (e) {
		        e.preventDefault();
		        var $target = $($(this).attr('href')),
		                $item = $(this);
	
		        if (!$item.hasClass('disabled')) {
		            navListItems.removeClass('btn-primary').addClass('btn-default');
		            $item.addClass('btn-primary');
		            allWells.hide();
		            $target.show();
		            $target.find('input:eq(0)').focus();
		        }
		    });
	
		    allNextBtn.click(function(){
		        var curStep = $(this).closest(".setup-content"),
		            curStepBtn = curStep.attr("id"),
		            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
		            curInputs = curStep.find("input[type='text'],input[type='url']"),
		            isValid = true;
	
		        $(".form-group").removeClass("has-error");
		        for(var i=0; i<curInputs.length; i++){
		            if (!curInputs[i].validity.valid){
		                isValid = false;
		                $(curInputs[i]).closest(".form-group").addClass("has-error");
		            }
		        }
	
		        if (isValid)
		            nextStepWizard.removeAttr('disabled').trigger('click');
		    });
	
		    $('div.setup-panel div a.btn-primary').trigger('click');
        	
        	
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
        
		<style type="text/css">
		body {
			margin-top: 40px;
		}
		
		.stepwizard-step p {
			margin-top: 10px;
		}
		
		.stepwizard-row {
			display: table-row;
		}
		
		.stepwizard {
			display: table;
			width: 100%;
			position: relative;
		}
		
		.stepwizard-step button[disabled] {
			opacity: 1 !important;
			filter: alpha(opacity = 100) !important;
		}
		
		.stepwizard-row:before {
			top: 14px;
			bottom: 0;
			position: absolute;
			content: " ";
			width: 100%;
			height: 1px;
			background-color: #ccc;
			z-order: 0;
		}
		
		.stepwizard-step {
			display: table-cell;
			text-align: center;
			position: relative;
		}
		
		.btn-circle {
			width: 30px;
			height: 30px;
			text-align: center;
			padding: 6px 0;
			font-size: 12px;
			line-height: 1.428571429;
			border-radius: 15px;
		}
		</style>
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
								<a href="Register.jsp"><img src="../resources/images/custom/sclogo2.png"
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
										<li><a data-hover="About" href="../resources/about.html"><span>About</span></a></li>
										<li><a data-hover="Rooms" href="../resources/rooms.html"><span>Rooms</span></a></li>
										<li><a data-hover="Gallery" href="../resources/gallery.html"><span>Gallery</span></a></li>
										<li><a data-hover="Dinning" href="../resources/dinning.html"><span>Dinning</span></a></li>
										<li><a data-hover="News" href="../resources/news.html"><span>News</span></a></li>
										<li><a data-hover="Contact Us" href="../resources/contact.html"><span>contact
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
		
	
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src="../resources/images/icons/left-arrow.png"
				onmouseover="this.src = '../resources/images/icons/left-arrow-hover.png'"
				onmouseout="this.src = '../resources/images/icons/left-arrow.png'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src="../resources/images/icons/right-arrow.png"
				onmouseover="this.src = '../resources/images/icons/right-arrow-hover.png'"
				onmouseout="this.src = '../resources/images/icons/right-arrow.png'" alt="left"></a>

		</div>
		<div class="clearfix"></div>

		<!--service block--->
		<!-- 삭제 -->
		<!--gallery block--->

		<!----resort-overview--->
		<section class="resort-overview-block">
			<div class="album py-5 bg-light">
				<div class="container">
					<div class="stepwizard">
						<div class="stepwizard-row setup-panel">
							<div class="stepwizard-step">
								<a href="#step-1" type="button"
									class="btn btn-primary btn-circle">1</a>
								<p>Step 1</p>
							</div>
							<div class="stepwizard-step">
								<a href="#step-2" type="button"
									class="btn btn-default btn-circle" disabled="disabled">2</a>
								<p>Step 2</p>
							</div>
							<div class="stepwizard-step">
								<a href="#step-3" type="button"
									class="btn btn-default btn-circle" disabled="disabled">3</a>
								<p>Step 3</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<form role="form">
				<div class="row setup-content" id="step-1">
					<div class="col-xs-12">
						<div class="col-md-12">
							<h3>Step 1</h3>
							<div class="form-group">
								<label class="control-label">First Name</label> <input
									name="fname" maxlength="100" type="text" required="required"
									class="form-control" placeholder="Enter First Name" />
							</div>
							<div class="form-group">
								<label class="control-label">Last Name</label> <input
									name="lname" maxlength="100" type="text" required="required"
									class="form-control" placeholder="Enter Last Name" />
							</div>
							<button class="btn btn-primary nextBtn btn-lg pull-right"
								type="button">Next</button>
						</div>
					</div>
				</div>
			
				<div class="row setup-content" id="step-2">
					<div class="col-xs-12">
						<div class="col-md-12">
							<h3>Step 2</h3>
							<div class="form-group">
								<label class="control-label">Email</label> <input name="email"
									maxlength="200" type="email" required="required"
									class="form-control" placeholder="Enter Company Name" />
							</div>
							<div class="form-group">
								<label class="control-label">User Name</label> <input
									name="username" maxlength="200" type="text" required="required"
									class="form-control" placeholder="username" />
							</div>
							<button class="btn btn-primary nextBtn btn-lg pull-right"
								type="button">Next</button>
						</div>
					</div>
				</div>
			
				<div class="row setup-content" id="step-3">
					<div class="col-xs-12">
						<div class="col-md-12">
							<h3>Step 3</h3>
							<div class="form-group">
								<label class="control-label">Password</label> <input
									name="password" maxlength="200" type="password"
									required="required" class="form-control"
									placeholder="Enter Company Name" />
							</div>
							<div class="form-group">
								<label class="control-label">Repeat Password</label> <input
									name="rpassword" maxlength="200" type="text" required="required"
									class="form-control" placeholder="username" />
							</div>
							<button class="btn btn-success btn-lg pull-right" type="submit">Register
								Me!</button>
						</div>
					</div>
				</div>
			</form>
		</section>

		<!---footer--->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>
    </body>
</html>
