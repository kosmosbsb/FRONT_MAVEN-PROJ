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
        <title>${searchSpace } 검색결과</title>
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
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<!-- map -->
        <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=kkks45hOd7btwzmncKgZ&submodules=geocoder"></script>
        <script src="<c:url value='/resources/khw/accidentdeath.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/khw/MarkerClustering.js'/>" type="text/javascript"></script>
        <!-- map -->        
        <!-- /////////////////////////////////////////////////////////////////// -->
        <!-- 지도 시작-->
        <script>

        var map = {};
	  	  map.value = {};
	  	  map.getKey = function(id) {
	  	    return "k_"+id;
	  	  };
	  	  map.put = function(id, value) {
	  	    var key = map.getKey(id);
	  	    map.value[key] = value;
	  	  };
	  	  map.contains = function(id) {
	  	    var key = map.getKey(id);
	  	    if(map.value[key]) {
	  	      return true;
	  	    } else {
	  	      return false;
	  	    }
	  	  };
	  	  map.get = function(id) {
	  	    var key = map.getKey(id);
	  	    if(map.value[key]) {
	  	      return map.value[key];
	  	    }
	  	    return null;
	  	  };
	  	  map.remove = function(id) {
	  	    var key = map.getKey(id);
	  	    if(map.contains(id)){
	  	      map.value[key] = undefined;
	  	    }
	  	  };
	  	 
	  	  return map;
	  	}

        $(function(){


        	
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
			var dataTmp = ${jsonspaceList};
			
			//for (var i = 0 ; i < dataTmp.length ; i++){ //확인용
			//	alert(dataTmp[i].address);
			//}

        	
    	    var markers_arr = [];
	    	//infoWindows = [];
	    	
	    	//커스텀 맵으로!
	    	var markers = newMap();
	    	var infoWindows = newMap();
	    	
        	
        	for (var i = 0 ; i < dataTmp.length ; i++){
        		searchAddressToCoordinate(dataTmp[i].space_no,dataTmp[i].space_name , dataTmp[i].address, i);
        		
			}
        	
    
        	function searchAddressToCoordinate(space_no, space_name, address, index) {
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
		    	                draggable: false,
		    	                animation: naver.maps.Animation.DROP//애니메이션 추가는 선택사항
		    	            });
		
		    	        infoWindow = new naver.maps.InfoWindow({
		       	         content: '<div style="width:230px; height:160px; text-align:center;padding:10px;"><div style="width: 100%; height: 75%; background: url(http://192.168.0.8:8082/spacecloud/resources/images/khw/searchIcon.PNG) no-repeat; background-position: center top;"></div><a href="/spacecloud/Normal/spaceview.do?sn='+space_no+'"><b>'+ space_name +'</b></a></div>'
		       	     	});


		    	        markers_arr.push(marker);
		       	   	 
		    	   	     
		    	        //커스텀 맵으로!
 						markers.put(index, marker);
 						infoWindows.put(index, infoWindow);



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
    	   	         var infoWindow = infoWindows.get(seq);
    	
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

        	     for (var i = 0; i < dataTmp.length; i++) {

        	    	 marker = markers.get(i);
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
        	            content: '<div style="cursor:pointer;width:110px;height:110px;line-height:110px;font-size:60px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-3.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        },
        	        htmlMarker4 = {
        	            content: '<div style="cursor:pointer;width:125px;height:125px;line-height:125px;font-size:80px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-4.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        },
        	        htmlMarker5 = {
        	            content: '<div style="cursor:pointer;width:140px;height:140px;line-height:140px;font-size:100px;color:white;text-align:center;font-weight:bold;background:url('+ HOME_PATH +'/resources/images/khw/cluster-marker-5.png);background-size:contain;"></div>',
        	            size: N.Size(40, 40),
        	            anchor: N.Point(20, 20)
        	        };
        	

                var markerClustering = new MarkerClustering({
         	        minClusterSize: 2,
         	        maxZoom: 10,
         	        map: map,
         	        markers: markers_arr,
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
              
      	$(".hover").mouseleave(function() {
      		$(this).removeClass("hover");
      	});
      	
      	$('#map_area').hide();
      	$('.show_map_btn').on('click',function(){
      		$('.main').hide();
      		$('#map_area').show();
      	});
        	 
      	$("#cal_exit").on("click", function(){
			$("#map_area").hide();
			$(".main").show();
		});	 
        	 
        /*
        $(':button:eq(0)').click(function(){
			$('#desc').val($('#src').val());
		});
        */	 
        $(".search_keyword").click(function(){
        	//alert("ds");
        	$('#searchSpace_text').val($('.search_keyword').html());
        });
        
        $("#search_btn").click(function() {
			var fieldString=$('#searchSpace_text').val();
			//alert("여기야"+fieldString.trim().length);
			if(fieldString.trim().length==0){
				alert("검색어를 입력해주세요!");
				return false;
			}
		});
        
        });
        
		</script>
        
        <!-- 지도끝 -->
        
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
	padding-bottom: 30px;
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

.notice_area {
	margin-top: 67px;
	width: 140%;
	min-height: 103px;
	font-size: 14px;
	background-color: #fff;
	border-bottom: 1px solid #e0e0e0;
}

.center_wrap {
	min-height: 139px;
	padding: 31px 0;
	display: table;
	width: 100%;
	height: 100%;
	vertical-align: middle;
}

.center {
	display: table-cell;
	vertical-align: middle;
}

.result_wrap {
	font-size: 24px;
	font-family: "NanumBarunGothicUltralight", sans-serif;
}

.search_keyword {
	display: inline;
	color: #6d3afb;
	border-bottom: 1px solid #6d3afb;
	margin-left: 10%;
	border: none;
}

.btn_area {
	position: absolute;
	top: 50%;
	right: 14em;
}

.show_map_btn {
	border: 1px solid #fff;
	border-radius: 44px;
	width: 98px;
	height: 40px;
	border-color: #704de4;
	border-width: 2px;
	margin-left: 6px;
	text-align: center;
	padding: 10px 0 8px;
	display: inline-block;
	line-height: inherit;
	color: #704de4;
	position: relative;
}

.txt_location {
	font-family: "NanumBarunGothicBold", sans-serif;
	font-size: 17px;
	color: #704de4;
	font-weight: bold;
}

.filter_area {
	position: relative;
	height: 107px;
	margin-left: 13%;
}

.filter_item {
	display: inline-block;
	padding-left: 15px;
	font-size: 16px;
	padding: 17px 13px 15px;
	color: #656565;
	font-weight: bold;
}

/* /////////////////////////////////////////////////////////////////// */
.nav-tabs {
	border: none;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover
	{
	border-width: 0;
}

.nav-tabs>li>a {
	border: none;
	color: #666;
}

.nav-tabs>li.active>a, .nav-tabs>li>a:hover {
	border: none;
	color: #4285F4 !important;
	background: transparent;
}

.nav-tabs>li>a::after {
	content: "";
	background: #4285F4;
	height: 2px;
	position: absolute;
	width: 100%;
	left: 0px;
	bottom: -1px;
	transition: all 250ms ease 0s;
	transform: scale(0);
}

.nav-tabs>li.active>a::after, .nav-tabs>li:hover>a::after {
	transform: scale(1);
}

.tab-nav>li>a::after {
	background: #21527d none repeat scroll 0% 0%;
	color: #fff;
}

.tab-pane {
	padding: 15px 0;
}

.tab-content {
	padding: 20px
}

.card {
	background: #FFF none repeat scroll 0% 0%;
	box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3);
	margin-bottom: 30px;
}

#drop {
	padding-left: 60%;
}

/* /////////////////////////////////////////////////////////////////// */
.resort-overview-block {
	margin-top: -8em;
}

.btn_reserve {
	position: absolute;
	top: 0mm;
	right: 4mm;
	display: inline-block;
	text-align: center;
}

.btn_reserve_confirm {
	padding: 7px 20px 5px;
	font-size: 12px;
	line-height: 13px;
	background-color: rgba(112, 77, 228, 0.9);
	color: #fff;
	display: table-cell;
	vertical-align: middle;
}

.btn_reserve_day {
	padding: 7px 9px 5px;
	font-size: 12px;
	line-height: 15px;
	background-color: rgba(6, 147, 237, 0.9);
	color: #fff;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
}

.card-body {
	position: relative;
	padding: 18px 20px 14px;
	background-color: #fff;
}

.card-text {
	margin-top: 0em;
	padding-bottom: 0px;
	font-family: "NanumBarunGothic", sans-serif;
	font-size: 19px;
	line-height: 23px;
	font-weight: bold;
	overflow: hidden;
	text-overflow: ellipsis;
	color: #000;
}

.tags {
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 12px;
	color: #656565;
	margin-top: 0em;
}

.tag_area_name:before {
	content: "";
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/tag_point.png'/>");
	width: 9px;
	height: 12px;
	padding-right: 1em;
}

.tag_area_name:after {
	content: "|";
	display: inline-block;
	right: 0;
	/* background-color: #ccc;  */
	top: 50%;
	width: 2px;
	height: 11px;
	margin-top: -5px;
	margin-left: 2px;
	color: #ccc 2px solid;
}

.info_price {
	height: 23px;
	padding-top: 2px;
	margin-top: 11px;
	font-size: 12px;
	color: #656565;
}

.price {
	font-size: 20px;
	font-family: "NanumBarunGothic", sans-serif;
	color: #6d3afb;
	font-weight: normal;
}

.txt_unit {
	color: #656565;
	margin-left: 1px;
	vertical-align: 10%;
}

.npay_ico {
	content: "";
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/npay_ico.png'/>");
	font-size: 0px;
	margin-top: 2px;
	margin-left: 0px;
	vertical-align: middle;
	margin-bottom: 10px;
	width: 41px;
	height: 18px;
}

.info_number_love {
	position: absolute;
	right: 20px;
	bottom: 16px;
	font-size: 12px;
}

.review_number {
	position: relative;
	padding-left: 18px;
	margin-right: 6px;
	font-size: 12px;
	color: #656565;
}

.love_number {
	position: relative;
	padding-left: 17px;
	font-size: 12px;
	color: #656565;
}

.review_ico {
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/review_ico.png'/>");
	font-size: 0px;
	width: 18px;
	height: 18px;
	position: absolute;
	left: 120em;
}

.love_ico {
	display: inline-block;
	background-image:
		url("<c:url value='/resources/images/icons/love_ico.png'/>");
	font-size: 0px;
	width: 18px;
	height: 18px;
	position: absolute;
	left: 120em;
	bottom: 0%;
}

#space_box {
	text-decoration: none;
}
/*//////////////////////////////////호버  */
#upper_img {
	max-height: 225px;
	max-width: 359.5px;
	width: 363px;
	height: 225px;
	overflow: hidden;
}

#upper_img * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.45s ease-in-out;
	transition: all 0.45s ease-in-out;
}

#space_box:hover img, 
#space_box.hover img {
	-webkit-transform: scale(1.15);
	transform: scale(1.15);
}

#space_list{
	padding-left: 10%;
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
                        <a href='<c:url value="/spacecloud.do"/>'>
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
  <div class="app-content">
    <div class="box_search">
       <dl>
          <dt>
             <label style="font-size: 16px;">공간 검색</label>
          </dt>
      </dl>
         <form role="search" method="post" action="<c:url value="/Search/Search.do"/>">
             <input id="searchSpace_text" type="text" class="search_text" placeholder="검색어를 입력해주세요." name="searchSpace">
            <button id="search_btn" type="submit" class="search_btn"><img src='<c:url value="/resources/images/icons/search_ico2.png"/>'>검색</button>
         </form>
    </div>
  </div>
  <!-- ------------------------------------------------------------------------------- -->
     <section class="notice_area">
        <div class="center_wrap">
           <div class="center">
              <div class="result_wrap">
                 <a class="search_keyword">${searchSpace}</a>
                 <span>(으)로 검색한 결과입니다.</span>
              </div>
           <div class="btn_area">
              <a class="show_map_btn" role="button">
                 <img class="map_pt" src="<c:url value='/resources/images/icons/map_pt.png'/>">
                 <span class="txt_location">지도</span>
              </a>
              <a class="show_map_btn" role="button">
                 <img class="map_pt" src="<c:url value='/resources/images/icons/filter_ico.png'/>">
                 <span class="txt_location">필터</span>
              </a>
           </div>
           </div>
        </div>
     </section>
   <section class="filter_area">
      <div>
         <ul class="nav nav-tabs" role="tablist">
                  <li role="presentation" class="active">
                     <a href="#home" aria-controls="home" role="tab" data-toggle="tab">전체</a>
                  </li>
                     <li role="presentation">
                  <a href="#profile"aria-controls="profile" role="tab" data-toggle="tab">시간단위</a>
                     </li>
                  <li role="presentation">
                     <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">일단위</a>
                  </li>
                  <li role="presentation">
                     <a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">월단위</a>
                  </li>
               <ul class="nav navbar-nav" id="drop">
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">베스트 공간 순 
                     <span class="caret"></span>
                  </a>
                     <ul class="dropdown-menu" role="menu">
                        <li><a href="#">가격 낮은 순</a></li>
                        <li><a href="#">가격 높은 순</a></li>
                        <li><a href="#">이용후기 많은 순</a></li>
                     </ul>
                  </li>
               </ul>
         </ul>
      </div>
   </section>      
<!--공간 --------------------------------------------------------------- -->   
      <section class="resort-overview-block" id="space_list">
         <div class="album py-5 bg-light">
            <div class="container">
               <div class="row">
               <c:forEach var="item" items="${spaceList}" varStatus="loop">
                  <div class="col-md-4"
                     style="margin-top: 10px; margin-bottom: 10px;">
                     <a href="<c:url value='/Normal/spaceview.do?sn=${item.space_no}'/>" id="space_box">
	                     <div class="card mb-4 box-shadow">
	                        <div id="upper_img">
	                        <img class="card-img-top"
	                           data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
	                           alt="Thumbnail [100%x225]"
	                           src="<c:url value="/resources/images/room1.png"/>"
	                           data-holder-rendered="true"
	                           style="height: 225px; width: 100%; display: block;">
	                        </div>
	                           <span class="btn_reserve">
	                              <span class="btn_reserve_confirm">승인<br/>결제</span>
	                              <span class="btn_reserve_day">월단위<br/>예약가능</span>
	                           </span>
	                        <div class="card-body">
	                           <h3 class="card-text">${item.space_name}</h3>
	                           <div class="tags">
	                           
	                              <span class="tag_area_name">강남</span>
	                              
	                              	<span>${item.space_tag}</span>
	                              
	                           </div>
	                           <div class="info_price">
	                           		<strong class="price">${item.price_weekday}</strong>
	                           		<span class="txt_unit">원/월(인)</span>
	                           		<i class="npay_ico">네이버페이</i>
	                           </div>
	                           <div class="info_number_love">
	                           		<span class="review_number">
	                           			<i class="review_ico">리뷰수</i>
	                           			<em>0</em>
	                           		</span>
	                           		<span class="love_number">
	                           			<i class="love_ico">좋아요</i>
	                           			<em>${item.heart}</em>
	                           		</span>
	                           </div>
	                        </div>
	                     </div>
                     </a>
                  </div>
                </c:forEach>  
               </div>
            </div>
         </div>
      </section>
<!--공간 --------------------------------------------------------------- -->   
<!-----------------------------------------지도---------------------->
		<!-----------------------------------------지도---------------------->                  

   </main>
		<div id="map_area" class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row" align="right" style="padding-top: 20px;">
						<span id="cal_exit" style="color: black; cursor: pointer; font-size: 2em;">
							<img src="<c:url value='/resources/images/icons/X.png'/>">
						</span>
					</div>
					<div id="map" style="height: 500px;"></div>
				</div>
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
</html>

