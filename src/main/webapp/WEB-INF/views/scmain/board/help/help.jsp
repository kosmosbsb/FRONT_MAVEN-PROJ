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
        
    </head>
    
    <style>
.main {
	width: 90%;
}

.app-content {
	padding-top: 30px;
	padding-left: 14%;
	padding-bottom: 30px;
	/* padding: 30px 120px; */
	position: relative;
}

tr:nth-child(1) {
	border-top: 2px solid #656565;
}

td {
	font-size: medium;
}

.date {
	display: inline-block;
	width: 20%;
	float: right;
	color: #949494;
	font-size: 16px;
}

.notice_content>a>p {
	width: 70%;
	float: left;
}

.notice_view_ico {
	right: 30px;
	position: absolute;
}

.notice_view {
	padding: 0 30px 30px 30px;
}

.search_btn {
	width: 138px;
	height: 50px;
	background-color: #704de4;
	color: white;
	font-size: 20px;
}

.box_search {
	position: relative;
	padding: 30px;
	border: 4px solid #704de4;
	background: #fff;
}

.search_text {
	height: 50px;
	font-size: 16px;
	width: 80%;
	margin-right: 10px;
}

.pagination {
	display: block;
	text-align: center;
}

.pagination>li>a {
	float: none;
	margin-left: -5px;
}

</style>
    
    <body>
	<div id="page">
<!-----------Left.jsp------------------------------------------------------------------------------------------------->
		<jsp:include page="/WEB-INF/template/SideMenu.jsp"/>
		
<!-----------Top.jsp-------------------------------------------------------------------------------------------------->
		<header class="header-container" style="background-color: #FFd014; height:4.5em;" >
			<div class="container">
				<div class="top-row">
					<div class="row">
						<div class="col-md-1 col-sm-1 col-xs-1" align="left" style="margin-top: -20px; right: 200px;">
							<a id="history">
								<img src='<c:url value='/resources/images/icons/prev_ico.png'/>'/>
							</a>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-3">
							<div id="logo" style="margin-top: -1.8em; right: 150px; position: relative;">
								<a href='<c:url value="/spacecloud.do"/>'>
									<img src="<c:url value='/resources/images/custom/sclogo2.png'/>" alt="logo" width=160px height=38px>
								</a>
								<!--<a href="index.html"><span>vacay</span>home</a>-->
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4" style="margin-top: -15px; text-align: center;">
						
							<span style="font-size:25px; font-weight: bold;">도움말</span>
						</div>
						
					</div>
				</div>
			</div>
		</header>
<!-- -----middle--------------------------------------------------------------------------------------------------- -->
	<main class="main">
<!--3/30 --------------------------------------------------------------------- -->	
  <div class="app-content" >
    <div class="box_search">
	    <dl>
		    <dt>
		    	<label style="font-size: 16px; margin-right: 7em;">카테고리 선택</label>
		    	<label style="font-size: 16px;">도움말 검색</label>
		    </dt>
		</dl>
	      <form role="search" method="post" action="<c:url value="/Notice/List.do"/>">
			<!-- 카테고리 -->
					<ul class="nav navbar-nav" style="margin-right: 5em;">
						<li class="dropdown">
							<a style="width: 10em;" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							전체
							<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">회원</a></li>
								<li><a href="#">예약 및 결제</a></li>
								<li><a href="#">취소 및 환불</a></li>
								<li><a href="#">공간이용 및 후기</a></li>
								<li><a href="#">기타</a></li>
							</ul>
						</li>
					</ul>
			<!-- 카테고리 -->
					<input style="width: 60%;margin-right: 1em;" type="text" class="search_text" placeholder="검색어를 입력해주세요." name="searchWord">
	     	 <button type="submit" class="search_btn"><img src='<c:url value="/resources/images/icons/search_ico2.png"/>'>검색</button>
	      </form>
	    
    </div>
  </div>
<!-- --------------------------------------------------------------------- -->	
	      <div class="row" style="margin-left: 5cm;" >
	        <div class="col-md-12">
	          <div class="tile" >
	            <table class="table table-hover" id="notice">
	              <tbody>
	              <!-----------------------------미완성------- ------------------------------------------ -->
						<c:if test="${noticeList==null}">
							<tr>
								<td colspan="6">
									<h>등록된 공지가 없습니다.</h>
								</td>
							</tr>
						</c:if>
					<!-- ------------------------------------------ -->
					<c:if test="${noticeList!=null}">
		              <c:forEach var="item" items="${noticeList}" varStatus="loop">
		                <tr class="notice_view_area">
			                  <td style="text-align: center; height: 50px;">${item.category }</td>
			                  <td class="notice_content">
				                  <a>
				                 	 <p>${item.title }</p>
				                 	 <span class="date">${item.regidate }</span>
				                  <img class="notice_view_ico" src="<c:url value="/resources/images/icons/notice_view.png"/>">
				                  </a>
			                  </td>
		                </tr>
		                <tr class="notice_view">
			                <td colspan="2" align="center" style="text-align: center;">
				                ${item.content }
			                </td>
		                </tr>
		                </c:forEach>
		             </c:if>
	              </tbody>
	            </table>
	          </div>
	        </div>
	      </div>
<!-- --------------------------------------페이징 -->
		<div class="row" style="margin-left: 10em;">
			${pagingString}
		</div>

		</main>

<!-----------footer--------------------------------------------------------------------------------------------------->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--페이징 상단버튼------------------------------------------------------------------>
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>

            </a> 

	</div>
  </body>
</html>

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
        });
        
        $(function(){
        	$("#history").click(function(){
        		history.back();
        	})
        });
        
        $(function(){
		    $(".notice_view").hide();
			 $(".notice_view_area").click(function () {
				$(this).next().toggle("slow"); 
			});  
        });
        

        
 </script>
