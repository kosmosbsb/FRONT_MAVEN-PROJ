<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
    	<style>
    	th{
    	background-color:#B0FEFF;
    	
    	}
    	</style>
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
        console.log("what");
        console.log();
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
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div style="margin-left:40%; width:100%;">
							<p style="font-size:30px;font-style: inherit;color: #693CED">공간 목록</p>
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
			<c:if test="${alreadyRes!=null}">
			<script type="text/javascript">
			alert("이미 예약신청이 되어있습니다.");
			</script>
			</c:if>
			<table class="table table-hover table-bordered" id="sampleTable">

				<thead>
					<tr>
						<th>공간</th>
						<th>호스트</th>
						<th>사진</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.psyList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item" items="${psyList}" varStatus="loop">
						<tr>
							<c:if test="${oauth_state == null}">
							<td>${item.space_name}</td>
							</c:if>
							<c:if test="${oauth_state != null}">
							<td>${item.space_name}<a style="float:right" href="<c:url value='/NormalReserve/ReserveForm.do?sn=${item.space_no}'/>"
							class="btn btn-primary">예약하기</a></td>
							</c:if>
							<td>${item.h_nickname}</td>
							<td>${item.img_main}</td>
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
