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
        <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=kkks45hOd7btwzmncKgZ&submodules=geocoder"></script>
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
	<div class="container">
		<div class="row" align="right">
			<button id="submit" class="btn btn-success">지도를 보자꾸나</button>
		
		</div>
		<div class="row" align="center">
			<div id="map" style="width:100%;height:600px;"></div>
		</div>
	</div>
	
	
	
<!-----------footer--------------------------------------------------------------------------------------------------->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--페이징 상단버튼------------------------------------------------------------------>
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>

            </a> 

	</div>
  </body>
  <script>

        $(function(){

        	$("#history").click(function(){
        		history.back();
        	})

        	 /*
    		[검색패턴1] : 주소로 검색한다.
			등록된 공간들의 주소값에 해당 검색어가 포함되어있는 놈들을 리스트업 한다. -> 주소 뽑아내서 배열화


    		[검색패턴2] : 공간 유형, 공간 이름, 공간 태그 등으로 검색한다.
			각각의 검색 조건에 검색어가 포함되어있는 놈들을 리스트업 한다. -> 주소 뽑아내서 배열화


			*공간 대표이미지 경로, 공간명, (가격)도 뽑아내야...

    		
    */
    //검색된 주소 모음!
	var tempAddr = ['관천로 11길 97','정자동 178-1', '신림동 508-10', '신림동 487-8'];
	//검색된 주소 갯수에 따라 동적 생성함
	var tempMarker = new Array();
	
	var map = new naver.maps.Map('map', {
	    center: new naver.maps.LatLng(37.537988, 126.965586),
	    zoom: 8,
	    zoomControl: true,
        zoomControlOptions: {
            position: naver.maps.Position.TOP_RIGHT,
            style: naver.maps.ZoomControlStyle.SMALL
        }
	});

	//마커(클러스터)를 누르면 인포윈도우 띄워야해
	var infoWindow = new naver.maps.InfoWindow({
	    anchorSkew: true
	});
	
	for(var i=0 ; i < tempAddr.length ; i++){
		tempMarker[i] = new naver.maps.Marker({ map : map });
		addressMarking(tempAddr[i],tempMarker[i]);
	}




	//이건 머지
	/*
	function initGeocoder() {
	    map.addListener('click', function(e) {
	        searchCoordinateToAddress(e.coord);
	    });
	
	    $('#address').on('keydown', function(e) {
	        var keyCode = e.which;
	
	        if (keyCode === 13) { // Enter Key
	            searchAddressToCoordinate($('#address').val());
	        }
	    });
	
	    $('#submit').on('click', function(e) {
	        e.preventDefault();
	
	        searchAddressToCoordinate($('#address').val());
	    });
	    

	    
	}
	
	naver.maps.onJSContentLoaded = initGeocoder;
	*/















	//외부 변수로 결과값 리턴시킬수 없어... 여기선 기존에 만들어져있는거 세팅만 가능하다.
	/*
	naver.maps.Service.geocode({
					address:'정자동 178-1'
					}, function(status, response) {
				        if (status !== naver.maps.Service.Status.OK) {
				            return alert('올바른 주소형태가 아닙니다! 관리자에게 문의하세요.'); 
				        }
					
				        myitems_result = response; // 전체 검색결과
				        //alert(JSON.stringify(myitems_result.result.userquery));
				        var result = response.result // 검색 결과의 컨테이너
				        var myitems = result.items; // 검색 결과의 배열
				        //alert(JSON.stringify(myitems.point));
					});
	*/





	

	
	/*
	function initGeocoder() {
	    map.addListener('click', function(e) {
	        searchCoordinateToAddress(e.coord);
	    });

	    $('#address').on('keydown', function(e) {
	        var keyCode = e.which;

	        if (keyCode === 13) { // Enter Key
	            searchAddressToCoordinate($('#address').val());
	        }
	    });

	    $('#submit').on('click', function(e) {
	        e.preventDefault();

	        searchAddressToCoordinate($('#address').val());
	    });

	    searchAddressToCoordinate('정자동 178-1');
	}

	naver.maps.onJSContentLoaded = initGeocoder;
	*/














	
	/*
	var HOME_PATH = window.HOME_PATH || '.';
    
	var map = new naver.maps.Map("map", {
        zoom: 3,
        center: new naver.maps.LatLng(36.2253017, 127.6460516),
        zoomControl: true,
        zoomControlOptions: {
            position: naver.maps.Position.TOP_RIGHT,
            style: naver.maps.ZoomControlStyle.SMALL
        }
    }),
    markers = [];

var htmlMarker1 = {
        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/img/cluster-marker-1.png);background-size:contain;"></div>',
        size: N.Size(40, 40),
        anchor: N.Point(20, 20)
    },
    htmlMarker2 = {
        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/img/cluster-marker-2.png);background-size:contain;"></div>',
        size: N.Size(40, 40),
        anchor: N.Point(20, 20)
    },
    htmlMarker3 = {
        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/img/cluster-marker-3.png);background-size:contain;"></div>',
        size: N.Size(40, 40),
        anchor: N.Point(20, 20)
    },
    htmlMarker4 = {
        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/img/cluster-marker-4.png);background-size:contain;"></div>',
        size: N.Size(40, 40),
        anchor: N.Point(20, 20)
    },
    htmlMarker5 = {
        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/img/cluster-marker-5.png);background-size:contain;"></div>',
        size: N.Size(40, 40),
        anchor: N.Point(20, 20)
    };

function onLoad() {
    var data = accidentDeath.searchResult.accidentDeath;

    for (var i = 0, ii = data.length; i < ii; i++) {
        var spot = data[i],
            latlng = new naver.maps.LatLng(spot.grd_la, spot.grd_lo),
            marker = new naver.maps.Marker({
                position: latlng,
                draggable: true
            });

        markers.push(marker);
    }

    var markerClustering = new MarkerClustering({
        minClusterSize: 2,
        maxZoom: 8,
        map: map,
        markers: markers,
        disableClickZoom: false,
        gridSize: 120,
        icons: [htmlMarker1, htmlMarker2, htmlMarker3, htmlMarker4, htmlMarker5],
        indexGenerator: [10, 100, 200, 500, 1000],
        stylingFunction: function(clusterMarker, count) {
            $(clusterMarker.getElement()).find('div:first-child').text(count);
        }
    });
}

*/
				
        });

    	// 좌표값을 얻어보자
    	function addressMarking(address,marker) {
    	    naver.maps.Service.geocode({
    	        address: address
    	    }, function(status, response) {
    	        if (status === naver.maps.Service.Status.ERROR) {
    	            return alert('올바른 주소형태가 아닙니다! 관리자에게 문의하세요.');
    	        }

    	        var item = response.result.items[0], //JSON객체 확인
    	            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]',
    	            point = new naver.maps.Point(item.point.x, item.point.y);
    			
    			//alert('item.point.x : ' + item.point.x); //같은값임
    			//alert('point.x : '+ point.x); //같은값임
    			
    			//마커 찍어줘버리기
    	    	marker.setPosition(new naver.maps.Point(item.point.x, item.point.y));

        		//요게 최후의 핵심이 될듯..! //마커(클러스터) 클릭하면 창뜨도록 해주자.
    	        infoWindow.setContent([
    	                '<div style="padding:10px;min-width:200px;line-height:150%;">',
    	                '<h4 style="margin-top:5px;">검색 주소 : '+ response.result.userquery +'</h4><br />',
    	                addrType +' '+ item.address +'<br />',
    	                '&nbsp&nbsp&nbsp -> '+ point.x +','+ point.y,
    	                '</div>'
    	            ].join('\n'));
    	
    	
    	        //map.setCenter(point); //좌표값따라 지도 중심을 위치시키는 메소드!

    	        infoWindow.open(map, point); //일단 창 안띄움요 //마커(클러스터) 클릭하면 창뜨도록 해주자.
    	    });
    	}
            
 </script>
</html>