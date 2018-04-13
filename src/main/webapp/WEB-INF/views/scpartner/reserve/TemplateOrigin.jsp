<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
        <title>SpaceCloud</title>
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
		<jsp:include page="/WEB-INF/template/SideMenu_host.jsp"/>
		
		<!---header top---->
		<!--header--->
		<header class="header-container" style="background-color: #693CED">
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
							<p style="font-size:30px;font-style: inherit;color: #FFC600"><c:forEach var="item2" items="${reserverList}" varStatus="loop">${item2.reserve_name}</c:forEach>의 예약 정보</p>
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
				<h1>예약내용</h1>
				<thead>
					<tr>
						<th>예약번호</th>
						<th>신청일</th>
						<th>공간명</th>
						<th>예약 시작 날짜</th>
						<th>예약 끝 날짜</th>
						<th>인원</th>
						<th>최종 결제 가격</th>
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
							<td>${item.reserve_no}</td>
							<td>${item.regidate}</td>
							<td>${item.space_name}</td>
							<td>${item.startdate}</td>
							<td>${item.enddate}</td>
							<td>${item.reserve_person}</td>
							<td>${item.totalprice}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>예약자 정보</h1>
				<thead>
					<tr>
						<th>예약자 이름</th>
						<th>예약자 연락처</th>
						<th>예약자 이메일</th>
						<th>질문 사항</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.reserverList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item2" items="${reserverList}" varStatus="loop">
						<tr>
							<td>${item2.reserve_name}</td>
							<td>${item2.reserve_phone}</td>
							<td>${item2.reserve_email}</td>
							<td>${item2.ask}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>환불 규정 안내</h1>
				<thead>
					<tr>
						<th>이용 8일 전</th>
						<th>이용 7일 전</th>
						<th>이용 6일 전</th>
						<th>이용 5일 전</th>
						<th>이용 4일 전</th>
						<th>이용 3일 전</th>
						<th>이용 2일 전</th>
						<th>이용 전날</th>
						<th>이용 당일</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td>100%</td>
							<td>90%</td>
							<td>80%</td>
							<td>70%</td>
							<td>60%</td>
							<td>50%</td>
							<td>40%</td>
							<td>30%</td>
							<td>20%</td>
						</tr>
				</tbody>
			</table>
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>공간 간략한 정보</h1>
				<thead>
					<tr>
						<th>공간명</th>
						<th>주소</th>
						<th>연락처</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.spaceList==null}" var="flag">
						<tr>
							<td colspan="3"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not flag}">
					<c:forEach var="item4" items="${spaceList}" varStatus="loop">
						<tr>
							<td>${item4.space_name}</td>
							<td>${item4.address}</td>
							<td>${item4.phone}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			
			<table class="table table-hover table-bordered" id="sampleTable">
				<h1>처리 결과</h1>
				<thead>
					<tr>
						<th>처리 날짜</th>
						<th>처리 결과</th>
						<th>코멘트</th>
						<th>예약 시작 날짜</th>
						<th>예약 끝 날짜</th>
						<th>예약일까지 남은 날짜</th>
						<th>예약 인원</th>
						<th>최종/환불 가격</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${requestScope.moneyList==null}" var="fuck">
						<tr>
							<td colspan="7"><a href="<c:url value='#'/>">등록된 자료가
									없습니다</a></td>
						</tr>
					</c:if>
					<c:if test="${not fuck}">
					<c:forEach var="item5" items="${moneyList}" varStatus="loop">
						<tr>
							<td>${item5.regidate}</td>
							<td>
							<c:if test="${item5.status==0}" var="flag">
							처리 대기중
							</c:if>
							<c:if test="${item5.status==1}" var="flag">
							호스트가 승인함.
							</c:if>
							<c:if test="${item5.status==2}" var="flag">
							호스트가 거부함.
							</c:if>
							<c:if test="${item5.status==3}" var="flag">
							유저가 취소함
							</c:if>
							</td>
							<td>${item5.cancel_comment}</td>
							<td>${item5.startdate}</td>
							<td>${item5.enddate}</td>
							<td>${item5.diff}</td>
							<td>${item5.reserve_person}</td>
							<td>${item5.refundprice}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			<!-- Button trigger modal -->
			<c:if test="${fuck}">
			<div class="row">
			<div class="col-lg-1">
			<button style="display: flex; justify-content: center;" type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModalCenter">예약거부하기</button>
			</div>	
			<div class="col-lg-1">
			<button style="display: flex; justify-content: center;" type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModalCenter2">예약승인하기</button>	
			</div>
			</div>
			</c:if>
			
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
							<form class="form-horizontal" id="form1" action="<c:url value='/NormalReserve/ReserveHostCancel.do'/>" method="post">
								<fieldset>
								
								<!-- Form Name -->
								<legend>예약 거부 양식</legend>
								
								<!-- Textarea -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="textarea">취소 사유</label>
								  <div class="col-md-4">                     
								    <textarea class="form-control" id="textarea" name="comment"></textarea>
								    <input type="hidden" name="rn" value="${param.rn}">
								  	<input type="hidden" name="sn" value="${param.sn}">
								  </div>
								</div>
								
								</fieldset>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" form="form1" class="btn btn-primary">예약 취소 신청</button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
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
							<form class="form-horizontal" id="form2" action="<c:url value='/NormalReserve/ReserveHostAccept.do'/>" method="post">
								<fieldset>
								
								<!-- Form Name -->
								<legend>예약 승인 확인</legend>
								
								<!-- Textarea -->
								<div class="form-group">
								  <label class="col-md-4 control-label" for="textarea">예약자에게 남길 말</label>
								  <div class="col-md-4">                     
								    <textarea class="form-control" id="textarea" name="comment"></textarea>
								    <input type="hidden" name="rn" value="${param.rn}">
								  	<input type="hidden" name="sn" value="${param.sn}">
								  </div>
								</div>
								
								</fieldset>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" form="form2" class="btn btn-primary">예약승인!</button>
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
