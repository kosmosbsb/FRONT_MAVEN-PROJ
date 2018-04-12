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
        <title>SpaceCloud</title>

        <!-- Bootstrap core CSS -->
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" >
        <!-- Custom styles for this template -->
        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/fonts/antonio-exotic/stylesheet.css'/>" rel="stylesheet">
        <link rel="<c:url value='/resources/stylesheet'/>" href="css/lightbox.min.css">
        <script src="<c:url value='/resources/js/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/lightbox-plus-jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>

		<link href="<c:url value='/resources/css/responsive.css'/>" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		function isNumeric(num){
		  // 좌우 trim(공백제거)을 해준다.
		  num = String(num).replace(/^\s+|\s+$/g, "");

		  // 숫자만 받는다. (세자리마다 콤마 찍는거 허용)
		  var regex = /^(([1-9][0-9]{0,2}(,[0-9]{3})*)|[0-9]+)$/g; 
		 
		  if( regex.test(num) ){
		    num = num.replace(/,/g, "");
		    return isNaN(num) ? false : true;
		  }else{ return false; }
		}

		function isBetween1_24(num){
			
			var regex = /^[1-9]{1}$|^[1-2]{1}[0-4]{1}$|^24$/;

			if( regex.test(num) ){
			    return true;
			  }else{ return false; }
		}

		function isBetween1_7(num){
			
			var regex = /^[1-7]{1}$|^7$/;

			if( regex.test(num) ){
			    return true;
			  }else{ return false; }
		}

		
		$(function(){
	
	    	$("#menu-close").click(function(e) {
	            e.preventDefault();
	            $("#sidebar-wrapper").toggleClass("active");
	        });
	        
	        $("#menu-toggle").click(function(e) {
	            e.preventDefault();
	            $("#sidebar-wrapper").toggleClass("active");
	        });

			

			//수익 계산기
			$("#calculate_result").hide();
			$("#calculate").on("click", function(){

				//입력받은 변수들
				var space_count = $("#space_count").val();
				var space_price = $("#space_price").val();
				var space_term_time = $("#space_term_time").val();
				var space_term_day = $("#space_term_day").val();

				//유효성체크
				if(!isNumeric(space_count)){
					alert("숫자를 입력해주세요.");
					$("#space_count").focus();
					return;
				}

				if(!isNumeric(space_price)){
					alert("숫자를 입력해주세요.");
					$("#space_price").focus();
					return;
				}

				if( $("#space_term_time_div").css("display") != "none" && !isBetween1_24(space_term_time)){
					alert("[공유시간]은 1부터 24 사이의 숫자를 입력해주세요.");
					$("#space_term_time").focus();
					return;
				}

				if(!isBetween1_7(space_term_day)){
					alert("[공유일수]는 1부터 7 사이의 숫자를 입력해주세요.");
					$("#space_term_day").focus();
					return;
				}

				//계산로직
				$("#result1").html(space_count+"개");
				if( $("#space_term_time_div").css("display") != "none"){
					$("#result2").html("시간당 "+space_price+"원");
					$("#result3").html("주 "+space_term_day+"회, "+space_term_time+"시간씩");
					$("#result_total").html("￦ "+ space_count.replace(",","")*space_price.replace(",","")*space_term_day*space_term_time*4);
				}
				else{
					$("#result2").html("하루 "+space_price+"원");
					$("#result3").html("주 "+space_term_day+"회");
					$("#result_total").html("￦ "+space_count.replace(",","")*space_price.replace(",","")*space_term_day*4);
				}
				
				

				
				$("#calculate_ready").hide();
				$("#calculate_result").show();
			});

			//시간단위/일단위 구분
			$("#cal_time").on("click", function(){
				$("#space_price").attr("placeholder", "원/1시간");
				$("#space_term_time_div").show();
				$("#space_term_day_div").attr("class","col-sm-5")
			});
			$("#cal_day").on("click", function(){
				$("#space_price").attr("placeholder", "원/1일");
				$("#space_term_time_div").hide();
				$("#space_term_day_div").attr("class","col-sm-10")
			});
							
			//계산결과 닫기
			$("#cal_exit").on("click", function(){
				$("#calculate_result").hide();
				$("#calculate_ready").show();
			});
			

			$( ".doQuestion" ).on( "click", function() {
			      $( "#dialog" ).dialog( "open" );
			    });
					
		})
	</script>
    </head>
    <body>
	<div id="page">
		<!-- 이거 그 머냐 사이드 -->
		<jsp:include page="/WEB-INF/template/SideMenu_host.jsp"/>
		
		<!---header top---->
		<!--header--->
		<header class="header-container" style="background-color: #704de4;">
			<div class="container">
				<div class="top-row">
					<div class="row">
						<div class="col-md-2 col-sm-6 col-xs-6">
						<a href="index.html"><img src="<c:url value='/resources/images/khw/hostlogo.PNG'/>"
							alt="logo" style="width: 270px; height: auto;"></a>
					</div>
					<nav class="navbar navbar-default">
						<div class="navbar-header page-scroll">
							<button data-target=".navbar-ex1-collapse"
								data-toggle="collapse" class="navbar-toggle" type="button">
								<span class="sr-only">Toggle navigation</span>
							</button>
						</div>
					</nav>
				</div>
				</div>
			</div>
		</header>
		<!--end-->
		
		<div class="container-fluid" style="background-color: #f6f6f6">
			<div class="row" align="center" style="margin-top: 50px; ">
				<img src="<c:url value='/resources/images/khw/hostlogo2.PNG' />"
							alt="logo" style="width: 320px; height: auto;">
				<br/>
				<br/>
				<h4 style="font-size: 3.6em;">지금 바로 공간을 공유해보세요!</h4>
				<br/>
				<br/>
				<p style="color: #737573; font-size: 1.3em;">스터디룸, 파티룸, 오피스 등 다양한 모임&amp;업무공간을 스페이스클라우드를 통해 공유해보세요!</p>
				<br/>
				<br/>
				<div>
					<a href="<c:url value='/rgst/Register.do'/>"><button class="btn" style="width: 280px; height: 70px; background-color: #704de4; color: white; font-size: 1.4em; font-weight: bold;">공간 등록하기</button></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<c:url value='/SpaceRegiMenual/Download.do'/>"><button class="btn" style="width: 280px; height: 70px; background-color: #ffbb00; color: white; font-size: 1.4em; font-weight: bold;">공간 등록 매뉴얼</button></a>
				</div>
				<br/>
				<br/>
				<br/>
				<p style="color: #737573; font-size: 1.3em;">궁금한 점이 있으신가요? <a class="doQuestion" style="text-decoration: underline;">1:1문의하기</a></p>
				<br/>
				<br/>
				<br/>
				<br/>
			</div>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2" style="background-color: white; border-style: solid; border-color: #737573; border-width: 0.3px; height: 460px;">
					<div class="col-md-12">
					<br/><br/>
					<h2 style="font-weight: bold; font-size: 1.8em;"><font face="굴림">공간공유</font></h2>
					<h2 style="font-weight: bold; font-size: 1.8em;"><font face="굴림">예상수익 계산기</font></h2>
					<br/><br/>
					<p style="font-size: 1.2em; padding-bottom: 10px;">간단한 공간공유 예상수익 계산기입니다.</p>
					<p style="font-size: 1.2em;">실제 지급액과는 차이가 있을 수 있습니다.</p>
					<br/><br/><br/><br/><br/><br/>
					<img src="<c:url value='/resources/images/khw/calculator.PNG' />"
							alt="calculator" style="width: 100px; height: auto; margin-left: -10px;">
							<br/><br/>
					</div>
				</div>
				
				<div id="calculate_ready" class="col-md-5" style="background-color: white; border-style: solid; border-color: #737573; border-width: 0.3px; height: 460px;">
					<div class="col-md-12">
							<br/><br/>
								<form class="form-horizontal" action="/Question/Write.do">
								
								<label class="radio-inline" style="font-size: 1.3em;">
								    <input type="radio" name="optionsRadios" id="cal_time" value="time" style="cursor: pointer;" checked> 시간단위
								</label> 
								 <label class="radio-inline" style="font-size: 1.3em;">
								 	<input type="radio" name="optionsRadios" id="cal_day" value="day" style="cursor: pointer;"> 일단위
								 </label>
								 <br/><br/><br/>
								 
							   <div class="form-group">
							    <label class="col-sm-2 control-label">공유공간</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" id="space_count" placeholder="개">
							    </div>
							  </div>
							  <br/>
							  <div class="form-group">
							    <label class="col-sm-2 control-label">가격</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" id="space_price" placeholder="원/1시간">
							    </div>
							  </div>
							  <br/>
							  <div class="form-group">
							    <label class="col-sm-2 control-label">공유기간</label>
							    <div id="space_term_time_div" class="col-sm-5">
							      <input type="text" class="form-control" id="space_term_time" placeholder="일일 공유 시간(1~24)">
							    </div>
							    <div id="space_term_day_div" class="col-sm-5">
							      <input type="text" class="form-control" id="space_term_day" placeholder="일주일당 공유 일수(1~7)">
							    </div>
							  </div>
							  <br/>
							</form>
						<div class="row">
						  <button id="calculate" class="btn" style="width:100%; height: 70px; background-color: #704de4; color: white; font-size: 1.4em; font-weight: bold;">예상수익 계산하기</button>
						</div>
					</div>
					
				</div>
					<div id="calculate_result" class="col-md-5" style="background-color: #704de4; border-style: solid; border-color: black; border-width: 0.3px; height: 460px;">
						<div class="col-md-12">
							<div class="row" align="right" style="padding-top: 20px;">
								<span id="cal_exit" style="color:white; cursor: pointer; font-size: 2em;">X</span>
							</div>
							<div class="row" style="padding-top: 20px;">
								<br/>
								<p style="color: white; font-size: 1.9em;">월 예상수익은?</p>
								<br/><br/><br/>
								<p style="color: white; font-size: 1.2em;"><span id="result1" style="color: #ffbb00; font-weight: bold; text-decoration: underline;"></span>의 공간을 <span id="result2" style="color: #ffbb00; font-weight: bold; text-decoration: underline;"></span>에 <span id="result3" style="color: #ffbb00; font-weight: bold; text-decoration: underline;"></span> 대관시!</p>
								<hr style="border:0; height: 3px; background: white;"/>
								<br/>
								<div class="row" align="center">
								<span style="color: white; font-size: 1.2em;">월 예상 수익</span>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span id="result_total" style="color: white; font-size: 2.2em;"></span>
								</div>
								<br/><br/>
								<hr style="border:0; height: 3px; background: white;"/>
							</div>
						</div>
					</div>
			</div>
			
		</div>
		
		<div class="clearfix"></div>


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