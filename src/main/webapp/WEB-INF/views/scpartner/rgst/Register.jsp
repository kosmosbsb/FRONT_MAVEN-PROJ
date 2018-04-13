<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
    <head>
    	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../resources/images/icons/faviconSC2.png"/>
        <title>공간등록</title>

        <!-- Bootstrap core CSS -->
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        
        <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
        <!-- Custom styles for this template -->
        <link href="../resources/css/style.css" rel="stylesheet">
        <link href="../resources/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="../resources/stylesheet" href="css/lightbox.min.css">
        <link href="../resources/css/responsive.css" rel="stylesheet">
        <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../resources/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/instafeed.min.js" type="text/javascript"></script>
        <script src="../resources/js/custom.js" type="text/javascript"></script>
        
  		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
        <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=239669b7f7d7e65aded229c4bee98d24&libraries=services"></script>
		
		<!-- 체크박스 css -->
		<link href="../resources/css/checkboxes.css" rel="stylesheet">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		<script>
		$("input[name=chk]").change(function(){
		    var max= 3;
		    if( $("input[name=chk]:checked").length == max ){
		        $("input[name=chk]").attr('disabled', 'disabled');
		        $("input[name=chk]:checked").removeAttr('disabled');
		    }else{
		         $("input[name=chk]").removeAttr('disabled');
		    }
		});
		</script>
		
        <script>
        $(function(){
        	var navListItems = $('div.setup-panel div a'),
	           allWells = $('.setup-content'),
	           allNextBtn = $('.nextBtn');

		    allWells.hide();
	
		    navListItems.click(function (e) {
		        e.preventDefault();
		        var $target = $($(this).attr('href')),
		                $item = $(this);
	
		        if (!$item.hasClass('disabled')) {
		            navListItems.removeClass('btn-primary').addClass('btn-default');
		            $item.addClass('btn-primary');
		            allWells.hide();
		            $target.show();
		            $target.find('input:eq(0)').focus();
		        }
		    });
	
		    allNextBtn.click(function(){
		        var curStep = $(this).closest(".setup-content"),
		            curStepBtn = curStep.attr("id"),
		            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
		            curInputs = curStep.find("input[type='text'],input[type='url']"),
		            isValid = true;
	
		        $(".form-group").removeClass("has-error");
		        for(var i=0; i<curInputs.length; i++){
		            if (!curInputs[i].validity.valid){
		                isValid = false;
		                $(curInputs[i]).closest(".form-group").addClass("has-error");
		            }
		        }
	
		        if (isValid)
		            nextStepWizard.removeAttr('disabled').trigger('click');
		    });
	
		    $('div.setup-panel div a.btn-primary').trigger('click');
        	
        	
        	$("#menu-close").click(function(e) {
                e.preventDefault();
                $("#sidebar-wrapper").toggleClass("active");
            });
            
            $("#menu-toggle").click(function(e) {
                e.preventDefault();
                $("#sidebar-wrapper").toggleClass("active");
            });
            
            $("#imgInput").change(function(){
                readURL(this);
            });
            
            
          	function readURL(input) {
            	var url = input.value;
    			var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
    			if (input.files && input.files[0] && (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")){
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#image_section').attr('src', e.target.result);
                    }
             
                    reader.readAsDataURL(input.files[0]);
                }
                else{
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
               }
            }
            
        });
        </script>
        
        <script type="text/javascript">
        function checkCount() {
			var checkList = $('input:checkbox[id="cate"]:checked').length;
			if(checkList == 0){
				alert("1개이상 선택하세요");
				location.href="<c:url value='/rgst/Register.do'/>";
			}
			else if(checkList > 5){
				alert("최대 5개까지 선택 가능합니다");
				location.href="<c:url value='/rgst/Register.do'/>";
			}
		}
        
      //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
        function execDaumPostcode() {	
            new daum.Postcode({    	  	
                oncomplete: function(data) {
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
                	        var marker = new daum.maps.Marker({
                	            position : new daum.maps.LatLng(result.y, result.x),  // 중심좌표 입니다 
                	            map : map
                	        });

                	     	// 지도를 보여준다
                	        mapContainer.style.display = "block";
                            map.relayout();
                            
                	        // 지도에 원을 표시합니다 
                	        marker.setMap(map);
                	       
                	        //주소 정보 전달
                	        $('#roadAddress').val(fullRoadAddr);
                	        $('#jibunAddress').val(data.jibunAddress);
                	        $('#sido').val(data.sido);
                	        $('#sigungu').val(data.sigungu);
                	        $('#bname').val(data.bname);
                	        $('#bname1').val(data.bname1);
                	        $('#lat').val(lat);
                	        $('#lng').val(lng); 
                        }
                    });	                   
                }
            }).open(); 
        }
      
        
        // 대표 이미지
   		var sel_file;
        
        $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        });
        
        function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_img").trigger('click');
        }
       
        function handleImgFileSelect(e) {
        	 var files = e.target.files;
             var filesArr = Array.prototype.slice.call(files);
             var index = 0;
             
             filesArr.forEach(function(f) {
            	 if(!f.type.match("image.*")) {
                     alert("확장자는 이미지 확장자만 가능합니다.");
                     return;
                 }
            	 
            	 sel_file = f;
            	 var reader = new FileReader();
                 reader.onload = function(e) {
                	 /* $("#img").attr("src",e.target.result); */
                	 var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                     $(".img_wrap").html(html);
                     /* index++; */
                 }
                 reader.readAsDataURL(f);
             });
		}
        
        
     	// 이미지 정보들을 담을 배열
        var sel_files = [];

        $(document).ready(function() {
            $("#input_imgs").on("change", handleImgFileSelects);
        }); 

        function fileUploadActions() {
            console.log("fileUploadActions");
            $("#input_imgs").trigger('click');
        }
        
        function handleImgFileSelects(e) {
            // 이미지 정보들을 초기화
            sel_files = [];
            /* $(".imgs_wrap").empty(); */

            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            var index = 0;
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }

                sel_files.push(f);
                var reader = new FileReader();
                reader.onload = function(e) {
                    var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                    $(".imgs_wrap").append(html);
                    index++;

                }
                reader.readAsDataURL(f);
            });
        }

        function deleteImageAction(index) {
            console.log("index : "+index);
            console.log("sel length : "+sel_files.length);

            sel_files.splice(index, 1);

            var img_id = "#img_id_"+index;
            $(img_id).remove(); 
        }

        </script>
        
        
        
		<style type="text/css">
		
		
		.stepwizard-step p {
			margin-top: 10px;
		}
		
		.stepwizard-row {
			display: table-row;
		}
		
		.stepwizard {
			display: table;
			width: 100%;
			position: relative;
		}
		
		.stepwizard-step button[disabled] {
			opacity: 1 !important;
			filter: alpha(opacity = 100) !important;
		}
		
		.stepwizard-row:before {
			top: 14px;
			bottom: 0;
			position: absolute;
			content: " ";
			width: 100%;
			height: 1px;
			background-color: #ccc;
			z-order: 0;
		}
		
		.stepwizard-step {
			display: table-cell;
			text-align: center;
			position: relative;
		}
		
		.btn-circle {
			width: 30px;
			height: 30px;
			text-align: center;
			padding: 6px 0;
			font-size: 12px;
			line-height: 1.428571429;
			border-radius: 15px;
		}
		body {
		    background: #fff;
			font-family: 'Roboto', sans-serif;
			color:#333;
			line-height: 22px;	
		}
		h1, h2, h3, h4, h5, h6 {
			font-family: 'Roboto Condensed', sans-serif;
			font-weight: 400;
			color:#111;
			margin-top:5px;
			margin-bottom:5px;
		}
		h1, h2, h3 {
			text-transform:uppercase;
		}
		
		.option{
			float: right;
		}
		
		
		input.upload {
		    position: absolute;
		    top: 0;
		    right: 0;
		    margin: 0;
		    padding: 0;
		    font-size: 12px;
		    cursor: pointer;
		    opacity: 1;
		    filter: alpha(opacity=1);    
		}
		
		.form-inline .form-group{
		    margin-left: 0;
		    margin-right: 0;
		}
		.control-label {
		    color:#333333;
		    font-size: 15px;
		    font-family: 'Roboto', sans-serif;
		}
		
		.img_wrap{
			border: 2px solid #A8A8A8;
            margin-top: 20px;
            margin-bottom: 20px;
            padding-top: 10px;
            padding-bottom: 10px;
		}
		.img_wrap img{
			max-width: 150px;
            margin-left: 10px;
            margin-right: 10px;
		}
		
		.filebox label {
		    display: inline-block;
		    padding: .5em .75em;
		    color: #999;
		    font-size: inherit;
		    line-height: normal;
		    vertical-align: middle;
		    background-color: #fdfdfd;
		    cursor: pointer;
		    border: 1px solid #ebebeb;
		    border-bottom-color: #e2e2e2;
		    border-radius: .25em;
		    width:100%;
		    max-width:100%;
		}
		 .filebox input[type="file"] {  /* 파일 필드 숨기기 */
		    position: absolute;
		    width: 1px;
		    height: 1px;
		    padding: 0;
		    margin: -1px;
		    overflow: hidden;
		    clip:rect(0,0,0,0);
		    border: 0;
		}
		

		input[type=file] {
            display: none;
        }

        .my_button {
            display: inline-block;
            width: 200px;
            text-align: center;
            padding: 10px;
            background-color: #006BCC;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

        .imgs_wrap {

            border: 2px solid #A8A8A8;
            margin-top: 30px;
            margin-bottom: 30px;
            padding-top: 10px;
            padding-bottom: 10px;

        }
        .imgs_wrap img {
            max-width: 150px;
            margin-left: 10px;
            margin-right: 10px;
        } 
		
		</style>
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
								<a href="Register.jsp"><img src="../resources/images/custom/sclogo2.png"
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
										<li><a data-hover="About" href="../resources/about.html"><span>About</span></a></li>
										<li><a data-hover="Rooms" href="../resources/rooms.html"><span>Rooms</span></a></li>
										<li><a data-hover="Gallery" href="../resources/gallery.html"><span>Gallery</span></a></li>
										<li><a data-hover="Dinning" href="../resources/dinning.html"><span>Dinning</span></a></li>
										<li><a data-hover="News" href="../resources/news.html"><span>News</span></a></li>
										<li><a data-hover="Contact Us" href="../resources/contact.html"><span>contact
													Us</span></a></li>
									</ul>

								</div>
							</nav>
						</div>
						<div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
							<div class="text-right">
								<button type="button" class="book-now-btn">Register Now</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--end-->
		
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src="../resources/images/icons/left-arrow.png"
				onmouseover="this.src = '../resources/images/icons/left-arrow-hover.png'"
				onmouseout="this.src = '../resources/images/icons/left-arrow.png'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src="../resources/images/icons/right-arrow.png"
				onmouseover="this.src = '../resources/images/icons/right-arrow-hover.png'"
				onmouseout="this.src = '../resources/images/icons/right-arrow.png'" alt="left"></a>

		</div>
		<div class="clearfix"></div>

		<!--service block--->
		<!-- 삭제 -->
		<!--gallery block--->

		<!----resort-overview--->
		<section class="resort-overview-block">
			<div class="album py-5 bg-light">
				<div class="container">
					<div class="stepwizard">
						<div class="stepwizard-row setup-panel">
							<div class="stepwizard-step">
								<a href="#step-1" type="button"
									class="btn btn-primary btn-circle">1</a>
								<p>Step 1</p>
							</div>
							<div class="stepwizard-step">
								<a href="#step-2" type="button"
									class="btn btn-default btn-circle" disabled="disabled">2</a>
								<p>Step 2</p>
							</div>
							<div class="stepwizard-step">
								<a href="#step-3" type="button"
									class="btn btn-default btn-circle" disabled="disabled">3</a>
								<p>Step 3</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			</section>
			
			<form action="<c:url value="/CJH/ControllerTest.do"/>" class="form-horizontal" method="post" id="trans">
				<div class="row setup-content" id="step-1">
					<div class="col-xs-12">
						<div class="col-md-12">
						<div class="container"><!-- form1 -->
							<h3>Step 1</h3>
							<div class="form-group">
								<div class="box_form">
									<!-- <label class="control-label col-sm-3">모임장소<span class="text-danger">*</span></label> -->
									<div class="tit">모임장소</div>
									<span class="option"> <span class="txt_guide"> 최대
											5개 선택가능 <span class="text-danger">*</span></span>
									</span>
								</div>
								<div class="row">
									<div class="col-md-4">
										<!-- input 에 checked 혹은 disabled 옵션 있음 -->
											<div class="form-check">
												<label> <input type="checkbox" name="space1" id="cate1" value="회의실" form="trans">
													<span class="label-text">회의실</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space2" id="cate2" value="작업실" form="trans"> <span
													class="label-text">작업실</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space3" id="cate3" value="공연장" form="trans"> <span
													class="label-text">공연장</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space4" id="cate4" value="스터디룸" form="trans">
													<span class="label-text">스터디룸</span>
												</label>
											</div>
									</div>
									<div class="col-md-4">
											<div class="form-check">
												<label> <input type="checkbox" name="space5" id="cate" value="세미나실" form="trans">
													<span class="label-text">세미나실</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space6" id="cate" value="레저시설" form="trans"> <span
													class="label-text">레저시설</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space7" id="cate" value="연습실" form="trans"> <span
													class="label-text">연습실</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space8" id="cate" value="엠티장소" form="trans">
													<span class="label-text">엠티장소</span>
												</label>
											</div>
									</div>
									<div class="col-md-4">
											<div class="form-check">
												<label> <input type="checkbox" name="space9" id="cate" value="다목적홀" form="trans">
													<span class="label-text">다목적홀</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space10" id="cate" value="파티룸" form="trans"> <span
													class="label-text">파티룸</span>
												</label>
											</div>
											<div class="form-check">
												<label> <input type="checkbox" name="space11" id="cate" value="카페" form="trans"> <span
													class="label-text">카페</span>
												</label>
											</div>
									</div>
								</div>
							</div>
						</div>
						
							<button class="btn btn-primary nextBtn btn-lg pull-right"
								type="button" onclick="checkCount()">Next</button>
						</div>
					</div>
				</div>
			
				<div class="row setup-content" id="step-2">
					<div class="col-xs-12">
						<div class="col-md-12">
							<div class="container">
								<h3>Step 2</h3>
									<div class="row">
									<!-- Text input-->
									<div class="form-group">
									  <label class="col-md-4 control-label" for="textinput">공간명</label>  
									  <div class="col-md-6">
									  	<input id="space_name" name="space_name" type="text" placeholder="공간명을 입력하세요" class="form-control input-md">
									  </div>
									</div>
									</div>
									
									<div class="row">
									<!-- Text input-->
									<div class="form-group">
								 		<label class="col-md-4 control-label" for="textinput">공간 한줄 소개</label>  
								  		<div class="col-md-6">
								  			<input id="intro_main" name="intro_main" type="text" placeholder="공간을 소개하는 한줄 문장을 입력해주세요" class="form-control input-md">
								 		</div>
									</div>
									</div>
									
									<div class="row">
										<!-- Textarea -->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textarea">공간 소개</label>
										  	<div class="col-md-6">                     
										    	<textarea class="form-control" id="intro_detail" name="intro_detail" placeholder="공간을 상세하게 소개해보세요"></textarea>
										  	</div>
										</div>
									</div>
									
									<div class="row">
									<script>
										$(function(){
											$("#buttonId").on('click',function(){
												//console.log($("#taginputId").val()==null? "null":"null아님");
												if($("#taginputId").val()==""){
													$("#tagoutputId").val("");
												}
												else{
												$("#tagoutputId").val($("#tagoutputId").val()+"#"+$("#taginputId").val());
												$("#taginputId").val("");
												}
											});
											
											$("#faciloutputId").change(function(){
												$("#faciloutputId").val("");
											});
											
											$("#buttonId2").on('click',function(){
												//console.log($("#taginputId").val()==null? "null":"null아님");
												if($("#facilinputId").val()==""){
													$("#faciloutputId").val("");
												}
												else{
													if($("#faciloutputId").val()==""){
														$("#faciloutputId").val($("#facilinputId").val())
														$("#facilinputId").val("");
													}
													else{
														$("#faciloutputId").val($("#faciloutputId").val()+"\r\n"+$("#facilinputId").val());
														$("#facilinputId").val("");
													}
												}
												console.log("#faciloutputId"+$("#faciloutputId").val());
												$("#facilhiddenId").val($("#faciloutputId").val());
												console.log("#facilhiddenId"+$("#facilhiddenId").val());
											});
											
											$("#faciloutputId").change(function(){
												$("#faciloutputId").val("");
											});
											
										});
										</script>
										
										<div style="margin:auto;width:80%;">
										<div class="col-lg-5">
											<div class="input-group">
											<span class="input-group-addon">태그를 입력하고 버튼을 누르세요!</span>
											<input type="text" name="taginputName" class="form-control" id="taginputId">
											<span class="input-group-addon" id="buttonId">버튼</span>
											<!-- <button id="buttonId" class="btn btn-primary">버튼이다</button> -->
											</div>
										</div>
										<div class="col-lg-7">
											<div class="input-group">
											<span class="input-group-addon">입력된 태그들(#로 구분하세요!)</span>
											<input type="text" name="tagoutputName" class="form-control" id="tagoutputId">
											</div>
										</div>
									</div>
									<div style="margin:auto;width:80%;margin-top:50px;">
									<div class="row">
										<div class="col-lg-12">
											<div class="input-group">
											<span class="input-group-addon">시설 안내사항을 입력하고 버튼을 누르세요!</span>
											<input type="text" name="taginputName" class="form-control" id="facilinputId">
											<span class="input-group-addon" id="buttonId2">버튼</span>
											<!-- <button id="buttonId" class="btn btn-primary">버튼이다</button> -->
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12">
											<textarea class="form-control custom-control" rows="5" style="resize:none" id="faciloutputId"></textarea>
											<input type="hidden" value="" id="facilhiddenId" name="facilParam">
										</div>
									</div>
									</div>
									</div>
									
									<div class="row">
										<!-- File Button --> 
										<div class="form-group" style="padding: 5px;" >
										  <label class="col-md-4 control-label" for="filebutton">대표 이미지</label>
										  <div class="col-md-4">
										    <!-- <input class="btn btn-default" id="img" name="img" class="input-file" type="file"> -->
										    <div class="file_wrap">
									        	<a href="javascript:void(0)" onclick="fileUploadAction()" class="my_button">파일 업로드</a>
									        	<input type='file' accept="image/*" id="input_img" name="input_img"/>
									        </div>
										    
										    <div class="img_wrap" id="img_wrap">
									        	<img id="img" />
									        </div>
										  </div>
										</div>
									</div>
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label" for="filebutton">주소 검색</label>
											<div class="col-md-4">
											<input class="btn btn-primary" type="button" onclick="execDaumPostcode()" value="주소 검색"><br>
											</div>
											<div class="col-lg-6" style="padding: 10px;">
												<input class="form-control" type="text" id="addr" name ="addr" placeholder="주소">
											</div>
											<div class="col-lg-6" style="padding: 10px;">
							       				<input class="form-control" type="text" id="addrdetail" name ="addrdetail" placeholder="상세주소">
							       			</div>
											<div id="map" style="width:100%;height:500px;margin-top:10px;display:none"></div>
											<input type="hidden" id="lat" name="lat">
											<input type="hidden" id="lng" name="lng">
											<input type="hidden" id="roadAddress" name="roadAddress">
											<input type="hidden" id="jibunAddress" name="jibunAddress">
											<input type="hidden" id="sido" name="sido">
											<input type="hidden" id="sigungu" name="sigungu">
											<input type="hidden" id="bname" name="bname">
											<input type="hidden" id="bname1" name="bname1">
											
											
										</div>
									</div>																						
										
							
							</div> <!-- container -->
								<button class="btn btn-primary nextBtn btn-lg pull-right"
									type="button">Next</button>
						</div>
					</div>
				</div>
			
				<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
		      <div class="row setup-content" id="step-3">
		         <div class="col-xs-12">
		            <div class="col-md-12">
		               <div class="container">
		                  <h3>Step 3</h3>
		
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="textinput">*이메일</label>
		                     <div class="col-md-6">
		                        <input style="width: 45%" type="text" style="font-size: 1.0em" name="email"
		                           id="_email_addr" title="이메일 주소" placeholder="이메일 주소를 입력해주세요."
		                           regExp="^[a-zA-Z0-9-_\,\.]+$" _errorEl="emailError" value=""
		                           required> 
		                        <select style="width: 35% " title="이메일 도메인 선택"
		                        id="_email_selector" name="domain">
		                           <option value="@naver.com" selected>@naver.com</option>
		                           <option value="@dreamwiz.com">@dreamwiz.com</option>
		                           <option value="@gmail.com">@gmail.com</option>
		                           <option value="@hanafos.com">@hanafos.com</option>
		                           <option value="@hanmail.net">@hanmail.net</option>
		                           <option value="@hanmir.com">@hanmir.com</option>
		                           <option value="@hotmail.com">@hotmail.com</option>
		                           <option value="@korea.com">@korea.com</option>
		                           <option value="@nate.com">@nate.com</option>
		                           <option value="NONE">직접입력</option>
		                        </select>
		                     </div>
		                  </div>
		
		
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="phone11">*휴대폰</label>
		                     <div class="col-md-6">
		
		                        <select name="mobile1" id="phone11" title="휴대폰 앞자리"
		                           class='virtualNum'>
		                           <option value="010" selected>010</option>
		                           <option value="011">011</option>
		                           <option value="016">016</option>
		                           <option value="017">017</option>
		                           <option value="018">018</option>
		                           <option value="019">019</option>
		                        </select> 
		                        <input style="width: 30%" type="tel" name="mobile2"
		                           id="mobile2" placeholder="중간자리를 입력해주세요." title="휴대폰 중간자리"
		                           maxLength="4" _errorEl="mobileError" class="onlyNum virtualNum"
		                           style="ime-mode: disabled;" value="" required>
		                           
		                        <input style="width: 40%" type="tel" name="mobile3" id="mobile3"
		                           placeholder="뒷자리를 입력해주세요." title="휴대폰 뒷자리" maxLength="4"
		                           _errorEl="mobileError" class="onlyNum virtualNum"
		                           style="ime-mode: disabled;" value="" required>
		
		                     </div>
		                  </div>

		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="day">*요일</label>
		                     <div class="col-md-6">
		                        <select class="form-control input-md" style="width: 40%" name="minday" id="minday" title="최소 요일">
		                           <option value="00" selected>최소 예약일수</option>
		                           <option value="1">1</option>
		                           <option value="2">2</option>
		                           <option value="3">3</option>
		                           <option value="4">4</option>
		                           <option value="5">5</option>
		                           <option value="6">6</option>
		                           <option value="7">7</option>
		                        </select> 
		                        <select class="form-control input-md" style="width: 40%" name="maxday" id="maxday" title="최대 요일">
		                           <option value="00" selected>최대 예약일수</option>
		                           <option value="1">1</option>
		                           <option value="2">2</option>
		                           <option value="3">3</option>
		                           <option value="4">4</option>
		                           <option value="5">5</option>
		                           <option value="6">6</option>
		                           <option value="7">7</option>
		                        </select>
		                     </div>
		                  </div>
		                  
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="person">*인원</label>
		                     <div class="col-md-6">
		
		                        <select class="form-control input-md" style="width: 40%" name="minperson" id="minperson" title="최소 인원">
		                           <option value="00" selected>최소 인원</option>
		                           <option value="1">1(명)</option>                           
		                           <option value="2">2(명)</option>
		                           <option value="3">3(명)</option>
		                           <option value="4">4(명)</option>
		                           <option value="5">5(명)</option>
		                           <option value="6">6(명)</option>
		                        </select> 
		                        <select class="form-control input-md" style="width: 40%" name="maxperson" id="maxperson" title="최대 인원">
		                           <option value="00" selected>최대 인원</option>
		                           <option value="1">1(명)</option>                           
		                           <option value="2">2(명)</option>
		                           <option value="3">3(명)</option>
		                           <option value="4">4(명)</option>
		                           <option value="5">5(명)</option>
		                           <option value="6">6(명)</option>
		                        </select>
		                     </div>
		                  </div>
		                  
		                  
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="price">*금액</label>
		                     <div class="col-md-6">
		                        <select class="form-control input-md" style="width: 40%" name="pricestandard" id="pricestandard" title="금액 기준">
		                           <option value="00" selected>가격</option>
		                           <option value="S">공간당 가격</option>
		                           <option value="P">1인당 가격</option>
		                        </select> 
		                        <input class="form-control input-md" style="width: 40%" type="text" name="priceweekday" id="priceweekday"
		                           title="금액" placeholder="금액을 입력해주세요.">
		                     </div>
		                  </div>
		
		
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="time_or_day">*단위(시간단위 OR 일단위 )</label>
		                     <div class="col-md-6">
		                        <select class="form-control input-md" style="width: 40%" name="time_or_day" id="time_or_day" title="단위">
		                           <option value="00" selected>단위</option>
		                           <option value="D">D(일)</option>
		                           <option value="T">T(시간)</option>
		                        </select>
		
		                     </div>
		                  </div>
		
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="space_precaution">*주의사항</label>
		                     <div class="col-md-6">
		                        <div class="input">
		                           <!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
		                           <textarea style="width: 80%; height:108px;" placeholder="주의사항을 입력하세요." rows="5" class="form-control col-sm-5" id="precaution" name="precaution"maxLength="1000"></textarea>
		                        </div>
		                     </div>
		                  </div>
		
		
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="opertime">*오픈시간</label>
		                     <div class="col-md-6">
		                        <select class="form-control input-md" style="width: 40%" name="opertime2" id="opertime2" title="시작시간">
		                           <option value="0" selected>시작시간</option>
		                           <option value="1">01 시</option>
		                           <option value="2">02 시</option>
		                           <option value="3">03 시</option>
		                           <option value="4">04 시</option>
		                           <option value="5">05 시</option>
		                           <option value="6">06 시</option>
		                           <option value="7">07 시</option>
		                           <option value="8">08 시</option>
		                           <option value="9">09 시</option>
		                           <option value="10">10 시</option>
		                           <option value="11">11 시</option>
		                           <option value="12">12 시</option>
		                           <option value="13">13 시</option>
		                           <option value="14">14 시</option>
		                           <option value="15">15 시</option>
		                           <option value="16">16 시</option>
		                           <option value="17">17 시</option>
		                           <option value="18">18 시</option>
		                           <option value="19">19 시</option>
		                           <option value="20">20 시</option>
		                           <option value="21">21 시</option>
		                           <option value="22">22 시</option>
		                           <option value="23">23 시</option>
		                           <option value="24">24 시</option>
		                        </select> 
		                        <select class="form-control input-md" style="width: 40%" name="opertime2" id="opertime2" title="종료시간">
		                           <option value="0" selected>종료시간</option>
		                           <option value="1">01 시</option>
		                           <option value="2">02 시</option>
		                           <option value="3">03 시</option>
		                           <option value="4">04 시</option>
		                           <option value="5">05 시</option>
		                           <option value="6">06 시</option>
		                           <option value="7">07 시</option>
		                           <option value="8">08 시</option>
		                           <option value="9">09 시</option>
		                           <option value="10">10 시</option>
		                           <option value="11">11 시</option>
		                           <option value="12">12 시</option>
		                           <option value="13">13 시</option>
		                           <option value="14">14 시</option>
		                           <option value="15">15 시</option>
		                           <option value="16">16 시</option>
		                           <option value="17">17 시</option>
		                           <option value="18">18 시</option>
		                           <option value="19">19 시</option>
		                           <option value="20">20 시</option>
		                           <option value="21">21 시</option>
		                           <option value="22">22 시</option>
		                           <option value="23">23 시</option>
		                           <option value="24">24 시</option>
		                        </select>
		
		                     </div>
		                  </div>
		                  
		                  
		                  <div class="form-group">
		                     <label class="col-md-4 control-label" for="regularly_close">*정기휴무일</label>
		                     <div class="col-md-6">                        
		                           <input class="form-control input-md" style="width: 80%" type="text" id="regularlyclose" name ="regularlyclose" placeholder="휴무일을 입력하세요(,로구분 0(일),1(월)..5(금),6(토))">
		                        
		                     </div>
		                  </div>
		
		                  
		               </div> <!-- container -->
		               <button class="btn btn-primary nextBtn btn-lg pull-right" id="submit"
		                           >Finish</button>
		               
		            </div>
		         </div>
		      </div>
		
		      <!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
				
			</form>

		<!---footer--->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>
    </body>
    
	
	<script type="text/javascript">
		$('.sjaru').click(function(){
			document.forms["trans"].submit();
		});
		
	</script>
</html>
