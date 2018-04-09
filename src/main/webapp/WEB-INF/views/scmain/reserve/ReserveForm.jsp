<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
					<input name="timeorday" form="rform" type="hidden" value="${reserveFormType[0].price_standard}">
					<input name="sn" form="rform" type="hidden" value="${param.sn}">
					<!-- Form Name -->
					<legend>예약 양식을 작성해주세요.</legend>
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="peopleNumber">인원</label>
						<div class="col-md-2">
							<input id="peopleNumber" name="peopleNumber" type="number"  min="${reserveFormType[0].min_person}" max="${reserveFormType[0].max_person}"
								placeholder="숫자를 입력" class="form-control input-md" required="">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="reservePhone">예약자
							연락처</label>
						<div class="col-md-4">
							<input id="reservePhone" name="reservePhone" type="tel" pattern="[0-9]{3}[0-9]{4}[0-9]{4}"
								placeholder="00011112222" class="form-control input-md"
								required="">
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="reserveEmail">예약자
							이메일</label>
						<div class="col-md-4">
							<input id="reserveEmail" name="reserveEmail" type="email"
								placeholder="reserver123@reserve.com"
								class="form-control input-md" required="">

						</div>
					</div>

					<!-- Textarea -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="reserveComment">질문
							사항</label>
						<div class="col-md-4">
							<textarea class="form-control" id="reserveComment" placeholder="질문사항을 입력 (선택사항)"
								name="reserveComment"></textarea>
						</div>
					</div>
					<c:if test="${reserveFormType[0].time_or_day eq 'D'}">
					<div class='form-group'>
						<div class="col-md-6 col-md-offset-2">
						<label class="col-md-4 control-label" for="datetimepicker6">시작 날짜</label>
							<div class='input-group date' id='datetimepicker6'>
								<input name="startDate" form="rform" type='text' class="form-control" required="" id="sDate"/> <span
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
								<input name="endDate" form="rform" type='text' class="form-control" required="" id="eDate"/> <span
									class="input-group-addon"> <span
									class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
					<script type="text/javascript">
					$(function() {
						$('#datetimepicker6').datetimepicker({
			                 format: 'YYYY/MM/DD',
			                 minDate: new Date(),
			                 daysOfWeekDisabled: [${reserveFormType[0].regularly_close}]
				           });
						$('#datetimepicker7').datetimepicker({
							format: 'YYYY/MM/DD',
							useCurrent : false,
							daysOfWeekDisabled: [${reserveFormType[0].regularly_close}]
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
					<script>
			        function modal() {
			        	//console.log('모달');
			        	var text1 = document.getElementById("peopleNumber").value;
			        	//console.log(text1);
			        	var text2 = document.getElementById("sDate").value;
			        	var text3 = document.getElementById("eDate").value;
			        	
			        	var a = Date.parse(text2)
			        	var b = Date.parse(text3)
			        	var text4 = Math.abs(a - b);
			        	
			        	var days, total_hours, total_minutes, total_seconds;
			        	
			        	total_seconds = parseInt(Math.floor(text4 / 1000));
			        	total_minutes = parseInt(Math.floor(total_seconds / 60));
			        	total_hours = parseInt(Math.floor(total_minutes / 60));
			        	days = parseInt(Math.floor(total_hours / 24));
			        	
			        	console.log(text4);
			        	console.log(days);
			        	
			            document.getElementById("modal1").innerHTML = text1;
			            document.getElementById("modal2").innerHTML = text2;
			            document.getElementById("modal3").innerHTML = text3;
			            document.getElementById("modal4").innerHTML = days;
			            
			            var pd = days * ${reserveFormType[0].price_weekday} * text1;
			            var sd = days * ${reserveFormType[0].price_weekday};
			            
			            try{
			            	document.getElementById("pd").innerHTML = pd;
			            	document.getElementById("PDpayid").value = pd;
			            	document.getElementById("sd").innerHTML = sd;
			            	document.getElementById("SDpayid").value = sd;
			            }catch(err){console.log(err+"기능하는데 문제 없음.")}
			            
			        }
			        </script>
					</c:if>
					<c:if test="${reserveFormType[0].time_or_day eq 'T'}">
						<div class='form-group'>
							<div class="col-md-6 col-md-offset-2">
							<label class="col-md-4 control-label" for="datetimepicker5">예약 날짜</label>
								<div class='input-group date' id='datetimepicker5'>
									<input name="startDate" form="rform" type='text' class="form-control" required=""/> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
							</div>
						</div>
						<div class="form-group">
						<label class="col-md-4 control-label" for="opertime">예약할 공간의 운영시간</label>
						<div class="col-md-4">
						<c:set var = "string1" value = "${reserveFormType[0].oper_time}" />
						<c:set var = "string2" value = "${fn:split(string1, ',')}" />
						<c:set var="firstString" value="${string2[fn:length(string2)-2]}" />
						<c:set var="lastString" value="${string2[fn:length(string2)-1]}" />
							<span id=opertime>${firstString}:00 ~ ${lastString}:00</span>
							<span>(운영시간 외에 예약하시면 거절당하실수도 있습니다)</span>
						</div>
					</div>
						<div class='form-group'>
							<div class="col-md-6 col-md-offset-2">
							<label class="col-md-4 control-label" for="datetimepicker6">예약 시작 시간</label>
								<div class='input-group date' id='datetimepicker6'>
									<input name="startHour" form="rform" type='text' class="form-control" required="" id="sDate"/> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-time"></span>
									</span>
								</div>
							</div>
						</div>
						<div class='form-group'>
						<div class="col-md-6 col-md-offset-2">
						<label class="col-md-4 control-label" for="datetimepicker7">예약 끝 시간</label>
							<div class='input-group date' id='datetimepicker7'>
								<input name="endHour" form="rform" type='text' class="form-control" required="" id="eDate"/> <span
									class="input-group-addon"> <span
									class="glyphicon glyphicon-time"></span>
								</span>
							</div>
						</div>
						</div>
						<script type="text/javascript">
					$(function() {
						$('#datetimepicker5').datetimepicker({
			                 format: 'YYYY/MM/DD',
			                 minDate: new Date(),
			                 daysOfWeekDisabled: [${reserveFormType[0].regularly_close}]
				           });
						$('#datetimepicker6').datetimepicker({
			                 format: 'HH:00'
				           });
						$('#datetimepicker7').datetimepicker({
							format: 'HH:00'
						//Important! See issue #1075
						});
						$("#datetimepicker6").on(
								"dp.change",
								function(e) {
									$('#datetimepicker7')
											.data("DateTimePicker").minDate(e.date);
								});
						$("#datetimepicker7").on(
								"dp.change",
								function(e) {
									$('#datetimepicker6')
											.data("DateTimePicker").maxDate(e.date);
								});
					});
				</script>
				<script>
			        function modal() {
			        	//console.log('모달');
			        	var text1 = document.getElementById("peopleNumber").value;
			        	//console.log(text1);
			        	var text2 = document.getElementById("sDate").value;
			        	var text3 = document.getElementById("eDate").value;
			        	
			        	console.log(text2);
			        	console.log(text3);
			        	
			        	var a = text2.split(':');
			        	var b = text3.split(':');
			        	var c = (+b[0])-(+a[0]);
			        	console.log(c);
			        	
			        	//console.log(text4);
			        	//console.log(days);
			        	
			            document.getElementById("modal1").innerHTML = text1;
			            document.getElementById("modal2").innerHTML = text2;
			            document.getElementById("modal3").innerHTML = text3;
			            document.getElementById("modal4").innerHTML = c;
			            
			            var pt = c * ${reserveFormType[0].price_weekday} * text1;
			            var st = c * ${reserveFormType[0].price_weekday};
			            //console.log(pt);
			            
			            try{
			            	document.getElementById("pt").innerHTML = pt;
			            	document.getElementById("PTpayid").value = pt;
			            	document.getElementById("st").innerHTML = st;
			            	document.getElementById("STpayid").value = st;
			            }catch(err){console.log(err+"기능하는데 문제 없음.")}
			            
			            
			            
			            
			            
			           
			        }
			        </script>
					</c:if>
				<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button form="rform" id="singlebutton" name="singlebutton"
								class="btn btn-primary">예약 신청</button>
						</div>
					</div>
				<!-- 모달 -->	
					<c:set var = "pricemethod" value = "${reserveFormType[0].price_standard},${reserveFormType[0].time_or_day}" />
					<div class="form-group">${firstString}
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button style="display: flex; justify-content: center;" type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalCenter" onclick="modal()">모달</button>
						</div>
					</div>
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
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">예약 인원</label>
											<div class="col-md-4 control-label">
												<span id="modal1"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">예약한 날짜</label>
											<div class="col-md-4 control-label">
												<span id="modal2"></span> ~ <span id="modal3"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">예약한 날짜 수</label>
											<div class="col-md-4 control-label">
												<span id="modal4"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">이 공간의 결제방식</label>
											<div class="col-md-4 control-label">
												<span>${reserveFormType[0].price_standard},${reserveFormType[0].time_or_day}</span>
											</div>
										</div>
										<c:if test="${pricemethod eq 'P,T'}">
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">P,T (두당, 시간별)</label>
											<div class="col-md-4 control-label">
												<span id="pt"></span>
												<input name="PTpay" form="rform" type='hidden' required="" value="" id="PTpayid"/>
											</div>
										</div>
										</c:if>
										<c:if test="${pricemethod eq 'P,D'}">
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">P,D (두당, 일별)</label>
											<div class="col-md-4 control-label">
												<span id="pd"></span>
												<input name="PDpay" form="rform" type='hidden' required="" value="" id="PDpayid"/>
											</div>
										</div>
										</c:if>
										<c:if test="${pricemethod eq 'S,T'}">
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">S,T (공간당, 시간별)</label>
											<div class="col-md-4 control-label">
												<span id="st"></span>
												<input name="STpay" form="rform" type='hidden' required="" value="" id="STpayid"/>
											</div>
										</div>
										</c:if>
										<c:if test="${pricemethod eq 'S,D'}">
										<div class="form-group">
											<label class="col-md-4 control-label" for="opertime">S,D (공간당, 일별)</label>
											<div class="col-md-4 control-label">
												<span id="sd"></span>
												<input name="SDpay" form="rform" type='hidden' required="" value="" id="SDpayid"/>
											</div>
										</div>
										</c:if>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
										<button form="rform" id="singlebutton" name="singlebutton" class="btn btn-primary">예약 신청</button>
									</div>
								</div>
							</div>
						</div>
					
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
