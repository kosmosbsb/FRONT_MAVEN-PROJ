<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="resources/images/icons/faviconSC2.png"/>
        <title>팀플SC</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="resources/css/style.css" rel="stylesheet">
        <link href="resources/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="resources/stylesheet" href="css/lightbox.min.css">
        <link href="resources/css/responsive.css" rel="stylesheet">
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/instafeed.min.js" type="text/javascript"></script>
        <script src="resources/js/custom.js" type="text/javascript"></script>
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
        </script>
    </head>
    
    <style>
    	td:first-child{
    		height: 60px;
    		text-align: center;
    		
    	}
    	td{
    		font-size:medium;
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
							<a href="#">
								<img src='resources/images/icons/prev_ico.png'/>
							</a>
						</div>
						<div>
							<div id="logo" style="margin-top: -1.8em; right: 150px; position: relative;">
								<a href="index.html">
									<img src="resources/images/custom/sclogo2.png" alt="logo" width=160px height=38px>
								</a>
								<!--<a href="index.html"><span>vacay</span>home</a>-->
							</div>
						</div>
						<div  style="text-align: center; margin-top: -32px;">
							<h3>공지사항</h3>
						</div>
						
					</div>
				</div>
			</div>
		</header>
<!-- -----middle--------------------------------------------------------------------------------------------------- -->
		<main class="app-content">
      <div class="row" style="margin-left: 5cm; margin-top: 5em;" >
        <div class="col-md-11">
          <div class="tile" >
            <table class="table table-hover" id="notice">
              <thead>
                <tr>
                  <th></th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
                <tr>
                  <td>공지사항</td>
                  <td>[인디워커스데이] 발걸음이 스토리가 되는 도시작가들이 온다 "써본 사람"</td>
                  <td>2018-03-26</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
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

