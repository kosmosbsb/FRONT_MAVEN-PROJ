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
        
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        
    </head>
<script>
///////////////////////////////이거 존나안되네 시바  
	/* $(function(){
		$(".notice_view").hide();
		
		 $(".notice_view_area").click(function () {
		   		
				 if($(this).next().css('display')=='none')
						 $(this).next().show(); 
				 else if ($(this).next().css('display')!='none')
						 $(".notice_view").hide();	
			}); 
		
	}); */
	 ///////////////////////////////이거 존나안되네 시바  	
	$(function(){
	    $(".notice_view_review").hide();
		 $(".notice_view_area").click(function () {
			$(this).next().toggle("slow"); 
		});  
    });
	
</script>
    <style>
.main{
	padding-left: 5em;
	margin-top: 2%;
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
						<div class="col-md-1" align="left" style="margin-top: -20px; right: 200px;">
							<a id="history">
								<img src='<c:url value='/resources/images/icons/prev_ico.png'/>'/>
							</a>
						</div>
						
						<div>
							<div id="logo" style="margin-top: -1.8em; right: 150px; position: relative;">
								<a href='<c:url value="/index.jsp"/>'>
									<img src="<c:url value='/resources/images/custom/sclogo2.png'/>" alt="logo" width=160px height=38px>
								</a>
								<!--<a href="index.html"><span>vacay</span>home</a>-->
							</div>
						</div>
						
						
					</div>
				</div>
			</div>
		</header>
<!-- -----middle--------------------------------------------------------------------------------------------------- -->
	<main class="main">
<!--3/30 --------------------------------------------------------------------- -->	

<div class="container">
	<div>
		<h3>문의 처리 현황</h3>
	</div>
    <div class="row col-md-12 custyle">
    <table class="table table-hover custab">
    <thead>
        <tr>
            <th>유형</th>
            <th>제목</th>
            <th>등록날짜</th>
            <th>처리여부</th>
            <th class="text-center">처리날짜</th>
            <th></th>
        </tr>
    </thead>
         <c:forEach var="item" items="${answer_List}" varStatus="loop">
            <tr class="notice_view_area">
                <td>${item.question_type }</td>
                <td>${item.question_title }</td>
                <td>${item.regidate }</td>
                
                <td>처리대기중</td>
                
                <td class="text-center">2018-03-03</td>
				<td>
					<span>
						<img class="notice_view_ico" src="<c:url value="/resources/images/icons/notice_view.png"/>">
					</span>
				</td>
            </tr>
            <tr class="notice_view_review">
            	<td style="font-weight: bold">
            		질문내용
            	</td>
            	<td colspan="6" align="center">
							${item.question_content }
				</td>
            </tr>
            
            <c:forEach var="review" items="${noAnswer_List }">
	            <c:if test="${item.no == review.no}">
					<!-- <tr class="notice_view_review">
						<td align="center" colspan="6">
							답변 내용
						</td>
					</tr>	 -->	            
					<tr class="notice_view_review">
		            	<td style="font-weight: bold">답변내용</td>
						<td colspan="6" align="center">
							${review.content }
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</c:forEach>


				</table>
    </div>
</div>
<!-- --------------------------------------페이징 -->
		<div class="row">
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
			  
       
        
		
        
 </script>
