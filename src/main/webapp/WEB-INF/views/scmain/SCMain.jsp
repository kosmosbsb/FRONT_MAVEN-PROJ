<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String contextRoot = request.getContextPath(); %>

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
        <link href="<c:url value='/resources/css/responsive.css'/>" rel="stylesheet">
        <script src="<c:url value='/resources/js/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/lightbox-plus-jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>
        
        <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=kkks45hOd7btwzmncKgZ&submodules=geocoder"></script>
        <script src="<c:url value='/resources/khw/accidentdeath.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/khw/MarkerClustering.js'/>" type="text/javascript"></script>
        
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

            var HOME_PATH = "<%=contextRoot%>";
        	
    	    var map = new naver.maps.Map("map", {
    	        zoom: 8,
    	        center: new naver.maps.LatLng(37.483508, 126.919297), //37.483508, 126.919297 집주변  //37.525853, 126.955941 서울주변
    	        zoomControl: true,
    	        zoomControlOptions: {
    	            position: naver.maps.Position.TOP_LEFT,
    	            style: naver.maps.ZoomControlStyle.SMALL
    	        }
    	    });

    	    //공간 받아버리기 (일단은 주소값만 있어)
			var dataTmp = ${spaceList};
			
			//for (var i = 0 ; i < dataTmp.length ; i++){ //확인용
			//	alert(dataTmp[i].address);
			//}

        	
    	    var markers = [],
	    	infoWindows = [],
	        data = accidentDeath.searchResult.accidentDeath; //요걸 대체할 수 있어야해
	
        	
        	for (var i = 0 ; i < dataTmp.length ; i++){
        		searchAddressToCoordinate(dataTmp[i].space_name , dataTmp[i].address, i);
        		
			}
        	
    
        	function searchAddressToCoordinate(space_name, address, index) {
        	    naver.maps.Service.geocode({
        	        address: address
        	    }, function(status, response) {
        	        if (status === naver.maps.Service.Status.ERROR) {
        	            return alert('Something Wrong!');
        	        }


	        	        //alert(response.result.items[0].point.x);
	    	            var latlng = new naver.maps.LatLng(response.result.items[0].point.y, response.result.items[0].point.x),
		    	            marker = new naver.maps.Marker({
		    	                position: latlng,
		    	                draggable: false
		    	            });
		
		    	        var infoWindow = new naver.maps.InfoWindow({
		       	         content: '<div style="width:230px; height:160px; text-align:center;padding:10px;"><div style="width: 100%; height: 75%; background: url(http://192.168.0.8:8082/spacecloud/resources/images/khw/searchIcon.PNG) no-repeat; background-position: center top;"></div><b>'+space_name +'</b></div>'
		       	     	});



		       	   	 
		    	   	     
		    	        markers.push(marker);
		    	        infoWindows.push(infoWindow); //띄우는창 세팅



		        	   	//각 마커에 클릭이벤트 주기
		       	   	     naver.maps.Event.addListener(marker, 'click', getClickHandler(marker, index));




		        	      /*   
		        	        var item = response.result.items[0],
		        	            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]',
		        	            point = new naver.maps.Point(item.point.x, item.point.y);
		
		
		    	            alert(item.address+": x좌표: "+point.x+", y좌표: "+point.y);
		
		 					*/
		       	   		//updateMarkers(map, markers);

			       	    //첫 화면에 마커(또는 클러스터)가 안뜨니까. 강제로 갱신 이벤트 발생시키자...
		       	   		naver.maps.Event.trigger(map,"idle");
        	    });

 
        	}


            naver.maps.Event.addListener(map, 'idle', function() {
		     	updateMarkers(map, markers);
		 	});

    		
 

    	    
    	   	 // 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
    	   	 function getClickHandler(marker, seq) {
    	   	     return function(e) {
    	   	         var infoWindow = infoWindows[seq];
    	
    	   	         if (infoWindow.getMap()) {
    	   	             infoWindow.close();
    	   	         } else {
    	   	             infoWindow.open(map, marker);
    	   	         }
    	   	     }
    	   	 }


 	    	

        	 function updateMarkers(map, markers) {

        	     var mapBounds = map.getBounds();
        	     var marker, position;

        	     for (var i = 0; i < markers.length; i++) {

        	         marker = markers[i]
        	         position = marker.getPosition();

        	         if (mapBounds.hasLatLng(position)) {
        	             showMarker(map, marker);
        	         } else {
        	             hideMarker(map, marker);
        	         }
        	     }

           	    var htmlMarker1 = {
        	            content: '<div style="cursor:pointer;width:60px;height:60px;line-height:60px;font-size:20px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-1.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        },
        	        htmlMarker2 = {
        	            content: '<div style="cursor:pointer;width:90px;height:90px;line-height:90px;font-size:40px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-2.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        },
        	        htmlMarker3 = {
        	            content: '<div style="cursor:pointer;width:120px;height:120px;line-height:120px;font-size:60px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-3.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        },
        	        htmlMarker4 = {
        	            content: '<div style="cursor:pointer;width:150px;height:150px;line-height:150px;font-size:80px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-4.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        },
        	        htmlMarker5 = {
        	            content: '<div style="cursor:pointer;width:180px;height:180px;line-height:180px;font-size:100px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-5.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        };
        	

                var markerClustering = new MarkerClustering({
         	        minClusterSize: 2,
         	        maxZoom: 10,
         	        map: map,
         	        markers: markers,
         	        disableClickZoom: false,
         	        gridSize: 120,
         	        icons: [htmlMarker1, htmlMarker2, htmlMarker3, htmlMarker4, htmlMarker5],
         	        indexGenerator: [3, 6, 9, 12, 15],
         	        stylingFunction: function(clusterMarker, count) {
         	            $(clusterMarker.getElement()).find('div:first-child').text(count);
         	        }
         	    });
        	 }

        	 
        	 function showMarker(map, marker) {

        	     if (marker.setMap()) return;
        	     marker.setMap(map);
        	 }

        	 function hideMarker(map, marker) {

        	     if (!marker.setMap()) return;
        	     marker.setMap(null);
        	 }


        	 
        	 
        });
	
        </script>
    </head>
    <body>
	<div id="page">
		<!-- 이거 그 머냐 사이드 -->
		<jsp:include page="/WEB-INF/template/SideMenu.jsp"/>
		
		<!---header top---->
		<!--header--->
		<header class="header-container" style="background-color: #FFC600">
			<div class="container">
				<div class="top-row">
					<div class="row">
						<div class="col-md-2 col-sm-6 col-xs-6">
							<div id="logo">
								<a href="<c:url value='/spacecloud.do'/>"><img src="<c:url value='/resources/images/custom/sclogo2.png'/>"
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
										<li><a data-hover="About" href="<c:url value='/resources/about.html'/>"><span>About</span></a></li>
										<li><a data-hover="Rooms" href="<c:url value='/resources/rooms.html'/>"><span>Rooms</span></a></li>
										<li><a data-hover="Gallery" href="<c:url value='/resources/gallery.html'/>"><span>Gallery</span></a></li>
										<li><a data-hover="Dinning" href="<c:url value='/resources/dinning.html'/>"><span>Dinning</span></a></li>
										<li><a data-hover="News" href="<c:url value='/resources/news.html'/>"><span>News</span></a></li>
										<li><a data-hover="Contact Us" href="<c:url value='/resources/contact.html'/>"><span>contactUs</span></a></li>
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
		
		<div id="myCarousel1" class="carousel" data-ride="carousel">
			

			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" class="active"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="<c:url value='/resources/images/custom/170707_workspace_curation_banner.png'/>"
						style="width: 100%; height: 500px" alt="First slide">
					<div class="carousel-caption">
						
						
						
						<div class="container">
							<div class="row" align="center">
								<h2>어떤 공간이 필요하세요?</h2>
								<br/><br/>
									<form class="form-inline" method="get" action="<c:url value='/Search/Search.do'/>">
											<input type="text" name="searchWord" class="form-control" style="width:50%; height: 70px; background-color:transparent; color:white; font-size:3em; font-weight:bolder; border: none; border-bottom-style: solid; border-bottom-width: 3px; border-bottom-color: #FFC600;">
											<button class="btn btn-default" type="submit" style="background: url(http://192.168.0.8:8082/spacecloud/resources/images/khw/searchIcon.PNG); border:none; width:70px; height: 70px;" ></button>
									</form>
							</div>
							
						</div>



					</div>
				</div>

			</div>

		</div>
		
		
		
		<!-- 다수 케러셀 보류 -->
		<!--
		<div id="myCarousel1" class="carousel slide" data-ride="carousel">
			

			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1"></li>
				<li data-target="#myCarousel1" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="<c:url value='/resources/images/custom/170707_workspace_curation_banner.png'/>"
						style="width: 100%; height: 500px" alt="First slide">
					<div class="carousel-caption">
						<h2>
							자유롭게 일 하기 좋은<br>일일 공유오피스
						</h2>
					</div>
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/custom/180228_curation_banner_1.png'/>"
						style="width: 100%; height: 500px" alt="Second slide">
					<div class="carousel-caption">
						<h2>
							도심 속에서 모이기 좋은<br> MT공간
						</h2>
					</div>
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/custom/180228_curation_banner_3.png'/>"
						style="width: 100%; height: 500px" alt="Third slide">
					<div class="carousel-caption">
						<h2>
							팀플 모임을 위한<br> 집중력 최고의 스터디룸
						</h2>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src="resources/images/icons/left-arrow.png"
				onmouseover="this.src = 'resources/images/icons/left-arrow-hover.png'"
				onmouseout="this.src = 'resources/images/icons/left-arrow.png'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src="resources/images/icons/right-arrow.png"
				onmouseover="this.src = 'resources/images/icons/right-arrow-hover.png'"
				onmouseout="this.src = 'resources/images/icons/right-arrow.png'" alt="left"></a>

		</div>
		-->
		
		<!-- 이건 머지. 케러셀 관련인가. -->
		<div class="clearfix"></div>

		<!--service block--->
		<!-- 삭제 -->
		<!--gallery block--->

		<div class="container">
			<div class="row">
				<div id="map" style="width:100%;height:500px;"></div>
			</div>
		</div>
		



















		<!----resort-overview--->
		<section class="resort-overview-block">
			<div class="album py-5 bg-light">
				<div class="container">

					<div class="row">
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22288%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20288%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1624c0a7e5c%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1624c0a7e5c%22%3E%3Crect%20width%3D%22288%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2294.5%22%20y%3D%22119.1%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22288%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20288%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1624c0a7e5c%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1624c0a7e5c%22%3E%3Crect%20width%3D%22288%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2294.5%22%20y%3D%22119.1%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22288%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20288%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1624c0a7e5c%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1624c0a7e5c%22%3E%3Crect%20width%3D%22288%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2294.5%22%20y%3D%22119.1%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22288%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20288%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1624c0a7e5c%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1624c0a7e5c%22%3E%3Crect%20width%3D%22288%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2294.5%22%20y%3D%22119.1%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22288%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20288%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1624c0a7e5c%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1624c0a7e5c%22%3E%3Crect%20width%3D%22288%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2294.5%22%20y%3D%22119.1%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
									alt="Thumbnail [100%x225]"
									src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22288%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20288%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1624c0a7e5c%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1624c0a7e5c%22%3E%3Crect%20width%3D%22288%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2294.5%22%20y%3D%22119.1%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
									data-holder-rendered="true"
									style="height: 225px; width: 100%; display: block;">
								<div class="card-body">
									<p class="card-text">This is a wider card with supporting
										text below as a natural lead-in to additional content. This
										content is a little bit longer.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">View</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary">Edit</button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
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
