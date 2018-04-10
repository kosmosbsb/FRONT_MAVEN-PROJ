<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=239669b7f7d7e65aded229c4bee98d24&libraries=services"></script>
<script>
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function execDaumPostcode() {	
    new daum.Postcode({    	  	
        oncomplete: function(data) {
        	console.log("test");
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
            
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addr').value = fullRoadAddr+"\r\n"+data.jibunAddress;
            
            //주소-좌표 변환 객체를 생성
            var geocoder = new daum.maps.services.Geocoder();
            
            // 주소로 상세 정보를 검색
            geocoder.addressSearch(data.address, function(results, status) {
                // 정상적으로 검색이 완료됐으면
                if (status === daum.maps.services.Status.OK) {                	 

                    var result = results[0]; //첫번째 결과의 값을 활용
                    var lat = result.y;
                    var lng = result.x;
                    
                    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new daum.maps.LatLng(lat, lng), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };
                                        
                    //지도를 생성
        	        var map = new daum.maps.Map(mapContainer, mapOption);
                    
        	        // 지도에 표시할 원을 생성합니다
        	        var circle = new daum.maps.Circle({
        	            center : new daum.maps.LatLng(result.y, result.x),  // 원의 중심좌표 입니다 
        	            radius: 50, // 미터 단위의 원의 반지름입니다 
        	            strokeWeight: 5, // 선의 두께입니다 
        	            strokeColor: '#75B8FA', // 선의 색깔입니다
        	            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
        	            strokeStyle: 'solid', // 선의 스타일 입니다
        	            fillColor: '#CFE7FF', // 채우기 색깔입니다
        	            fillOpacity: 0.6  // 채우기 불투명도 입니다   
        	        });

        	     	// 지도를 보여준다
        	        mapContainer.style.display = "block";
                    map.relayout();
                    
        	        // 지도에 원을 표시합니다 
        	        circle.setMap(map);
        	       
        	        //주소 정보 전달
        	        /* $('#roadAddress').val(fullRoadAddr);
        	        $('#jibunAddress').val(data.jibunAddress);
        	        $('#sido').val(data.sido);
        	        $('#sigungu').val(data.sigungu);
        	        $('#bname').val(data.bname);
        	        $('#bname1').val(data.bname1);
        	        $('#lat').val(lat);
        	        $('#lng').val(lng); */
                }
            });	                   
        }
    }).open(); 
}





</script>

</head>
<body>
<input type="text" id="addr" placeholder="주소">
<input type="button" onclick="execDaumPostcode()" value="주소 검색"><br>
<div id="map" style="width:400px;height:400px;margin-top:10px;display:none"></div>


</body>
</html>