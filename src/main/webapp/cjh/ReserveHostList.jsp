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
        <script src="<c:url value='/resources/js/fullcalendar.js'/>" type="text/javascript"></script>
        <link href="<c:url value='/resources/css/fullcalendar.css'/>" rel="stylesheet">
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
			<table class="table table-hover table-bordered" id="sampleTable">

				<thead>
					<tr>
						<th>공간명</th>
						<th>처리여부</th>
						<th>예약자</th>
						<th>사진</th>
						<th>예약 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.reserveHostlist==null}" var="flag">
						<tr>
							<td colspan="5"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item" items="${reserveHostlist}" varStatus="loop">
						<tr>
							<td>${item.space_name}<a style="float:right" href="<c:url value='/NormalReserve/ReserveHostView.do?rn=${item.reserve_no}&sn=${item.space_no}'/>"
							class="btn btn-primary">예약 정보 상세보기</a></td>
							<td>
							<c:if test="${item.status==0}" var="flag">
							처리 대기중
							</c:if>
							<c:if test="${item.status==1}" var="flag">
							호스트가 승인함.
							</c:if>
							<c:if test="${item.status==2}" var="flag">
							호스트가 거부함.
							</c:if>
							<c:if test="${item.status==3}" var="flag">
							유저가 취소함
							</c:if>
							</td>
							<td>${item.n_nickname}</td>
							<td>${item.img_main}</td>
							<td>${item.regidate}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>

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
