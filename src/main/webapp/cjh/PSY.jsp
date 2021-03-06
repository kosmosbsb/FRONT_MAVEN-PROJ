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
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/fullcalendar.js'/>" type="text/javascript"></script>
        <link href="<c:url value='/resources/css/fullcalendar.css'/>" rel="stylesheet">
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
        
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
		<script>
		
			$(document).ready(function() {
			    var date = new Date();
				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();
				console.log(d);
				console.log(m);
				console.log(y);
				
				/*  className colors
				
				className: default(transparent), important(red), chill(pink), success(green), info(blue)
				
				*/		
				
				  
				/* initialize the external events
				-----------------------------------------------------------------*/
			
				$('#external-events div.external-event').each(function() {
				
					// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
					// it doesn't need to have a start or end
					var eventObject = {
						title: $.trim($(this).text()) // use the element's text as the event title
					};
					
					// store the Event Object in the DOM element so we can get to it later
					$(this).data('eventObject', eventObject);
					
					// make the event draggable using jQuery UI
					$(this).draggable({
						zIndex: 999,
						revert: true,      // will cause the event to go back to its
						revertDuration: 0  //  original position after the drag
					});
					
				});
			
			
				/* initialize the calendar
				-----------------------------------------------------------------*/
				
				var calendar =  $('#calendar').fullCalendar({
					header: {
						left: 'title',
						center: 'agendaDay,agendaWeek,month',
						right: 'prev,next today'
					},
					editable: true,
					firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
					selectable: true,
					defaultView: 'month',
					
					axisFormat: 'h:mm',
					columnFormat: {
		                month: 'ddd',    // Mon
		                week: 'ddd d', // Mon 7
		                day: 'dddd M/d',  // Monday 9/7
		                agendaDay: 'dddd d'
		            },
		            titleFormat: {
		                month: 'MMMM yyyy', // September 2009
		                week: "MMMM yyyy", // September 2009
		                day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
		            },
					allDaySlot: false,
					selectHelper: true,
					select: function(start, end, allDay) {
						var title = prompt('Event Title:');
						if (title) {
							calendar.fullCalendar('renderEvent',
								{
									title: title,
									start: start,
									end: end,
									allDay: allDay
								},
								true // make the event "stick"
							);
						}
						calendar.fullCalendar('unselect');
					},
					droppable: true, // this allows things to be dropped onto the calendar !!!
					drop: function(date, allDay) { // this function is called when something is dropped
					
						// retrieve the dropped element's stored Event Object
						var originalEventObject = $(this).data('eventObject');
						
						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({}, originalEventObject);
						
						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.allDay = allDay;
						
						// render the event on the calendar
						// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
						$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
						
						// is the "remove after drop" checkbox checked?
						if ($('#drop-remove').is(':checked')) {
							// if so, remove the element from the "Draggable Events" list
							$(this).remove();
						}
						
					},
					
					events: [
						{
							title: 'All Day Event'
						},
						{
							title: 'Meeting',
							start: new Date(y, m, d, 10, 30),
							allDay: false,
							className: 'important'
						},
						{
							title: 'Lunch',
							start: new Date(y, m, d, 12, 0),
							end: new Date(y, m, d, 14, 0),
							allDay: false,
							className: 'important'
						},
						{
							title: 'Click for Google',
							start: new Date(2018, 5, 26),
							end: new Date(2018, 5, 27),
							url: 'http://google.com/',
							className: 'success'
						},
						{
							title: 'end'
						}
					],			
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
		<div style="margin:auto;width:80%;margin-top:50px;">
			<form id="formtest" action="<c:url value='/CJH/ControllerTest.do'/>"></form>
			<button form="formtest" id="singlebutton" name="singlebutton" class="btn btn-primary">예약 신청</button>
		</div>
		<div style="margin:auto;width:80%;margin-top:50px;">
		

		<div id='wrap'>
		<div id='calendar'></div>
		<div style='clear:both'></div>
		
		
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
    <style>
		#wrap {
			width: 1100px;
			margin: 0 auto;
			}
			
		#external-events {
			float: left;
			width: 150px;
			padding: 0 10px;
			text-align: left;
			}
			
		#external-events h4 {
			font-size: 16px;
			margin-top: 0;
			padding-top: 1em;
			}
			
		.external-event { /* try to mimick the look of a real event */
			margin: 10px 0;
			padding: 2px 4px;
			background: #3366CC;
			color: #fff;
			font-size: .85em;
			cursor: pointer;
			}
			
		#external-events p {
			margin: 1.5em 0;
			font-size: 11px;
			color: #666;
			}
			
		#external-events p input {
			margin: 0;
			vertical-align: middle;
			}
	
		#calendar {
	/* 		float: right; */
	        margin: 0 auto;
			width: 900px;
			background-color: #FFFFFF;
			  border-radius: 6px;
	        box-shadow: 0 1px 2px #C3C3C3;
			-webkit-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
	-moz-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
	box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
			}
	
	</style>
</html>
