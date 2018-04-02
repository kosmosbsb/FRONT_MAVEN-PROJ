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
		$(function(){
	
	    	$("#menu-close").click(function(e) {
	            e.preventDefault();
	            $("#sidebar-wrapper").toggleClass("active");
	        });
	        
	        $("#menu-toggle").click(function(e) {
	            e.preventDefault();
	            $("#sidebar-wrapper").toggleClass("active");
	        });
	        
			$( "#dialog" ).dialog({
				  width: 500,
				  height: 600,
			      autoOpen: false,
			      modal : true,
			      show: {
			        effect: "clip",
			        duration: 850
			      },
			      hide: {
			        effect: "clip",
			        duration: 850
			      }
			    });
			 
		    $( "#doQuestion" ).on( "click", function() {
		      $( "#dialog" ).dialog( "open" );
		    });
	
		    $( "#dialogExit" ).on( "click", function() {
			      $( "#dialog" ).dialog( "close" );
			});
			
		})
	</script>
    </head>
    <body>
	<div id="page">
		<!-- 이거 그 머냐 사이드 -->
		<jsp:include page="/WEB-INF/template/SideMenu_hw.jsp"/>
		
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
					<a href="/download/guide/registmanual"><button class="btn" style="width: 280px; height: 70px; background-color: #704de4; color: white; font-size: 1.4em; font-weight: bold;">공간 등록하기</button></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/download/guide/registmanual"><button class="btn" style="width: 280px; height: 70px; background-color: #ffbb00; color: white; font-size: 1.4em; font-weight: bold;">공간 등록 매뉴얼</button></a>
				</div>
				<br/>
				<br/>
				<br/>
				<p style="color: #737573; font-size: 1.3em;">궁금한 점이 있으신가요? <a id="doQuestion" href="#" style="text-decoration: underline;">1:1문의하기</a></p>
				<br/>
				<br/>
				<br/>
				<br/>
			</div>
			
			<div class="row">
				<div class="col-md-3 col-md-offset-2" style="background-color: white; border-style: solid; border-color: #737573; border-width: 0.3px;">
					<div class="col-md-12">
					<br/><br/>
					<h2 style="font-weight: bold; font-size: 1.8em;"><font face="굴림">공간공유</font></h2>
					<h2 style="font-weight: bold; font-size: 1.8em;"><font face="굴림">예상수익 계산기</font></h2>
					<br/><br/>
					<p style="font-size: 1.2em; padding-bottom: 10px;">간단한 공간공유 예상수익 계산기입니다.</p>
					<p style="font-size: 1.2em;">실제 지급액과는 차이가 있을 수 있습니다.</p>
					<br/><br/><br/><br/><br/><br/><br/><br/>
					<img src="<c:url value='/resources/images/khw/calculator.PNG' />"
							alt="calculator" style="width: 100px; height: auto; margin-left: -10px;">
							<br/><br/>
					</div>
				</div>
				<div class="col-md-5" style="background-color: yellow;">
					gdgdgdgdgd
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
        
        	    <div id="dialog" title="SpaceCloud에 문의하기">
		  	<div class="container" style="width: 100%;">
				<div class="row" style="margin-top: 30px;">
			        <div class="col-md-12" style="float: none; margin: 0 auto; text-align: center;">
			            <h3> 궁금증을 해소하세요:) </h3>
			        </div>
			      </div>
			      <div class="row" style="margin-top: 30px;">
			        <div class="col-md-12" style="border-style:solid; border-color: #5130b1; float: none; margin: 0 auto;">
			         
		
					<form style="margin-top: 20px;margin-bottom: 20px;" action="/Question/Write.do">
					<div class="form-group" >
					    <label>문의유형 선택</label>
						<select class="form-control">
						  <option>예약</option>
						  <option>결제</option>
						  <option>공간</option>
						  <option>기타</option>
						</select>
						
					  </div>
					  <div class="form-group" >
					    <label for="exampleInputEmail1">제목</label>
					    <input type="email" class="form-control" placeholder="제목을 입력하세요">
					  </div>
					 
					  <div class="form-group" >
					 	<label for="exampleInputEmail1">내용</label>
					  	<textarea class="form-control" rows="7" placeholder="내용을 입력하세요"></textarea>
					  </div>
					  
					  <div class="form-group" align="center">
					  <button type="submit" class="btn btn-success">등록</button>
					  <a id="dialogExit" class="btn btn-default">취소</a>
					  </div>
					  
					</form>
					
			        </div>
			      </div>
		    </div>
		</div>
        
        
        
    </body>
</html>