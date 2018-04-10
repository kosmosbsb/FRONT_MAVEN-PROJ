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

		<link rel="icon" href="https://ssl.pstatic.net/spacecloud/static/center/20171113/favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" href="https://ssl.pstatic.net/spacecloud/static/center/20171113/spacecloud_icon.png" type="image/x-icon">
		<link rel="apple-touch-icon" href="https://ssl.pstatic.net/spacecloud/static/center/20171113/spacecloud_icon.png">
        
		<link rel="stylesheet" href="https://ssl.pstatic.net/spacecloud/static/center/css/deploy/20180329055913/min/host.min.css" type="text/css">

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
    			if (input.files && input.files[0]&& (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")){
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
				location.href="RegisterPSY.jsp";
			}
			else if(checkList >= 5){
				alert("5개이하로 선택하세요");
				location.href="RegisterPSY.jsp";
			}
		}
        
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
        
		<style type="text/css">
		
		@import url(http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700);
		@import url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700);
		
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
		}
		
		.img_wrap{
			width: 300px;
			margin-top: 50px;
		}
		.img_wrap img{
			width: 100%;
		}
		
	/* 	input[type=file] {
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
        } */
		
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
			<form action="Complete.jsp" method="post" id="trans">
				<div class="row setup-content" id="step-1">
					<div class="col-xs-12">
						<div class="col-md-12">
							<div class="container"><!-- form1 -->
								<h3>Step 1</h3>
								<h2>1. Customs Checkboxes</h2>
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
								</div><!-- form1 -->
						
							<button class="btn btn-primary nextBtn btn-lg pull-right"
								type="button" onclick="checkCount()">Next</button>
						</div>
					</div>
				</div>
			
				<div class="row setup-content" id="step-2">
					<div class="col-xs-12">
						<div class="col-md-12">
							<h3>Step 2</h3>
							<div class="form-group">
								<div class="box_form" id="_spcNm_required">
						            <div class="tit">
						                <label for="space_name">
						                    공간명
						                    <span class="ico_required">*</span>
						                </label>
						            </div>
										<span class="option">
											<span class="txt_count">
												<em id="spcNmCnt">0</em>자/<em>18</em>자
											</span>
										</span>
						            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
						                <input type="text" name="spcNm" id="space_name" placeholder="공간명을 입력해주세요."
						                       _errorEl="_spcNm_required" maxLength="18" value="" _lcount="spcNmCnt" required>
						            </div>
						         </div>
								<!-- <label class="control-label col-sm-3">공간명 <span class="text-danger">*</span></label>
									<span class="txt_count">
										<em id="spcNmCnt">0</em>자/<em>18</em>자
									</span>
						        <input maxlength="18" type="text" class="form-control" required="required" name="name" id="name" placeholder="Enter your RoomName" _errorEl="_spcNm_required" maxLength="18" value="" _lcount="spcNmCnt"> -->
							</div>
							
							<div class="form-group">
								<div class="box_form">
						            <div class="tit" id="_subTtl_required">
						                <label for="space_intro">
						                    공간 한줄 소개
						                    <span class="ico_required">*</span>
						                </label>
						            </div>
					                <span class="option">
					                    <span class="txt_count">
					                        <em id="subTtlCnt">0</em>자/<em>27</em>자
					                    </span>
					                </span>
						            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
						                <input type="text" name="subTtl" id="space_intro" placeholder="공간을 소개하는 한줄 문장을 입력해주세요."
						                       _errorEl="_subTtl_required" maxLength="27" value="" _lcount="subTtlCnt" required>
						            </div>
						         </div>
								<!-- <label class="control-label col-sm-3">공간한줄 소개 <span class="text-danger">*</span></label>
				                    <span class="txt_count">
				                        <em id="subTtlCnt">0</em>자/<em>27</em>자
				                    </span>
						        <input maxlength="27" type="text" class="form-control" required="required" name="simple" id="simple" placeholder="Enter your simpleIntro" _errorEl="_subTtl_required" maxLength="27" value="" _lcount="subTtlCnt"> -->
							</div>
							
							<div class="form-group">
								<div class="box_form">
						            <div class="tit" id="_spcDesc_required">
						                <label for="space_text">
						                    공간 소개
						                    <span class="ico_required">*</span>
						                </label>
						            </div>
						            <span class="option">
						                <span class="txt_count"><em id="spcDescCnt">0</em>자/<em>500</em>자<span class="txt_guide">(최소 20자)</span></span>
						            </span>
						            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
						                <textarea id="space_text" name="spcDesc" placeholder="공간을 상세하게 소개해보세요. 공간의 특징이나 주변환경 등의 세부정보를 작성하시면 효과적입니다."
						                          _errorEl="_spcDesc_required" minLength="20" maxLength="500" style="height:108px" _lcount="spcDescCnt" required ></textarea>
						            </div>
					        	</div>
								<!-- <label class="control-label col-sm-3">공간소개 <span class="text-danger">*</span></label>
								<span class="txt_count">
				                	<span class="txt_count"><em id="spcDescCnt">0</em>자/<em>500</em>자<span class="txt_guide">(최소 20자)</span></span>
				                </span>
						        <textarea rows="5" cols="20" class="form-control" required="required" name="intro" id="intro" placeholder="Enter your RoomIntro" value="" minLength="20" maxLength="500"_lcount="spcDescCnt"></textarea> -->
							</div>
							
							<div class="form-group">
								<!-- <label class="control-label col-sm-3">공간태그 <span class="text-danger">*</span></label> -->
								<div class="box_form">
	            				<div class="tit">공간태그 <span class="ico_required">*</span></div>
					            <span class="option"> <span class="txt_guide"> 최대
											5개 선택가능 <span class="text-danger">*</span></span>
								</span>
					            <div class="input_add _spaceTag"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
					                <input type="text" name="spaceTagInput" maxLength="10" id="_spaceTagInput" _enter="spaceTagEnter" placeholder="태그를 입력해 주세요.">
					                <div class="btn_box">
					                  <a href="javascript:void(0);" class="btn" id="spaceTagEnter"><span class="btn_inner">추가</span></a>
					                </div>
					            </div>
					            <div class="tag_wrap" id="_tag_required">
					                <input type="hidden" id="_tagRequiredTarget" _errorEl="_tag_required" required>
					            </div>
					            </div> 
							</div>
							
							<div class="form-group">
								<div class="box_form">
									<div class="tit">
										<label for="space_name"> 시설안내 <span class="ico_required">*</span>
										</label>
									</div>
									<span class="option"> <span class="txt_count"> <em
											id="spcFctsGuideCnt">0</em>자/<em>100</em>자
									</span>
									</span>
									<div class="input_add" id="_spcFctsGuide">
										<!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
										<input type="text" id="_spcFctsGuideInput" name="fill"
											placeholder="최대 10개까지 작성가능합니다." _enter="fctsEnter"
											_lcount="spcFctsGuideCnt" maxLength="100">
										<div class="btn_box">
											<a href="javascript:void(0);" class="btn _addGuide"
												_type="spcFctsGuide" id="fctsEnter"> <span
												class="btn_inner">추가</span>
											</a>
										</div>
									</div>
									<div class="input_add_text" id="_spcFctsGuideList"
										style="display: none;">
										<input type="hidden" id="_fctsRequiredTarget"
											_errorEl="_spcFctsGuide" value="" required>
									</div>
								</div>
						<!-- <label class="control-label col-sm-3">시설안내 <span class="text-danger">*</span></label>
						        <input maxlength="200" type="text" class="form-control" required="required" name="facilities" id="facilities" placeholder="Enter your Roomfacilities" value=""> -->
							</div>
							
							<div class="form-group">
								<div class="box_form">
									<span class="tit"> 대표이미지 <span class="ico_required">*</span>
									</span>
									<p class="option">2048 *1158 권장, 최대 10MB</p>
									<div class="file" id="repImageYnError">
										<!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
										<div class="inner inner_img" id="srimgDest">
											<div id="_noneImg">이미지 파일을 추가해 주세요. (JPG, JPEG, PNG)</div>
		
											<input type="hidden" name="repImageYn" id="repImageYn" required />
										</div>
										<div class="btn_box">
											<label class="btn" for="srimg">
												<div>파일첨부</div> <input type="file" class="_fileRel"
												name="uploadFile" id="srimg" style="display: none;"
												_single="true" accept="image/*">
											</label>
										</div>
									</div>
								</div>
						<!-- <label class="control-label col-sm-3">대표이미지 <span class="text-danger">*</span></label> -->
								<!-- <form id="form" runat="server">
							    	<input type='file' accept="image/*" id="imgInput" />
							    	<img id="image_section" src="#" alt="your image" />
								</form> -->
							</div>
							
							<div class="form-group">
								<div class="box_form">
									<span class="tit">이미지</span>
									<p class="option">
										2048 *1158 권장, 한 장당 최대 10MB <span class="txt_guide">(최대
											10장)</span>
									</p>
		
									<div class="file" id="repImageYnError">
										<!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
										<div class="inner inner_img" id="snimgDest">
											<div id="_noneImg">이미지 파일을 추가해 주세요. (JPG, JPEG, PNG)</div>
										</div>
										<div class="btn_box">
											<label class="btn" for="snimg">
												<div>파일첨부</div> <input type="file" class="_fileRel"
												name="uploadFile" id="snimg" style="display: none;"
												accept="image/*">
											</label>
		
											<div class="nav_btn">
												<!-- [D] 클릭시 class="active" 추가 -->
												<a href="javascript:void(0);" class="btn_move" _type="prev"
													_targetEl="snimgDest"><i class="sp_icon ico_select_prev"></i><em
													class="blind">앞으로 순서 이동</em></a> <a href="javascript:void(0);"
													class="btn_move" _type="del" _targetEl="snimgDest"><i
													class="sp_icon ico_select_del"></i><em class="blind">삭제</em></a>
												<a href="javascript:void(0);" class="btn_move" _type="next"
													_targetEl="snimgDest"><i class="sp_icon ico_select_next"></i><em
													class="blind">뒤로 순서 이동</em></a>
											</div>
										</div>
									</div>
								</div>
						<!-- <label class="control-label col-sm-3">이미지 <span class="text-danger">*</span></label> -->
							</div>
							
							<div class="form-group">
							   	<!-- START : 주소 등록 -->
						       <!--  <div class="box_form" id="_location">
									<span class="tit">
										<label for="sp_adrs">
											주소(위치)
											<span class="ico_required">*</span>
										</label>
									</span>
						            <div id="map" style="width:80%;height:500px;margin-top:10px;display:none"></div>
						        </div>
						        END : 주소 등록
	        				</div> -->
								<div class="box_form">
						            <div class="tit" id="_spcDesc_required">
						                <label for="space_text">
						                   주소입력
						                    <span class="ico_required">*</span>
						                </label>
						            </div>
						        <div  class="btn_box">
									<input type="button" onclick="execDaumPostcode()" value="주소 검색"><br>
								</div>
						       	<input type="text" id="addr" name ="addr" placeholder="주소">
						       	<input type="text" id="addrdetail" name ="addrdetail" placeholder="상세주소">
						       
								<div id="map" style="width:80%;height:500px;margin-top:10px;display:none"></div>
								</div>
							</div>
							
							<button class="btn btn-primary nextBtn btn-lg pull-right"
								type="button">Next</button>
						</div>
					</div>
				</div>
			
				<div class="row setup-content" id="step-3">
					<div class="col-xs-12">
						<div class="col-md-12">
							<h3>Step 3</h3>
							<div class="form-group">
								<div class="box_form email">
									<span class="tit" id="space_email"> <label
										for="space_email"> 이메일 <span class="ico_required">*</span>
									</label>
									</span>
									<div class="row" id="emailError">
										<div class="col">
											<input type="text" name="email" id="_email_addr" title="이메일 주소"
												regExp="^[a-zA-Z0-9-_\,\.]+$" _errorEl="emailError"
												value="swwt12" required>
										</div>
										<div class="col">
											<span class="txt_at">@</span> <input type="text" name="email"
												id="_email_domain" title="이메일 도메인" value="naver.com"
												regExp="[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$"
												style="width: 100%" placeholder="직접입력" _errorEl="space_email"
												required readonly>
										</div>
										<div class="col">
											<div class="select">
												<select title="이메일 도메인 선택" id="_email_selector" name="domain">
													<option value="naver.com" selected>naver.com</option>
													<option value="dreamwiz.com">dreamwiz.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="hanafos.com">hanafos.com</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="hanmir.com">hanmir.com</option>
													<option value="hotmail.com">hotmail.com</option>
													<option value="korea.com">korea.com</option>
													<option value="nate.com">nate.com</option>
													<option value="NONE">직접입력</option>
												</select>
											</div>
									  </div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="box_form mobile" id="cellPhone">
				                    <span class="tit">
				                        <label for="phone11">
				                            휴대폰
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
					                <div class="row phone" id="mobileError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
					                    <div class="col4">
					                        <div class="select">
					                            <select name="mobile1" id="phone11" title="휴대폰 앞자리" class='virtualNum'>
					                                
					                                    <option value="010" selected>010</option>
					                                
					                                    <option value="011" >011</option>
					                                
					                                    <option value="016" >016</option>
					                                
					                                    <option value="017" >017</option>
					                                
					                                    <option value="018" >018</option>
					                                
					                                    <option value="019" >019</option>
					                                
					                            </select>
					                        </div>
					                    </div>
					                    <div class="col4">
					                        <input type="tel" name="mobile2" id="phone12" title="휴대폰 중간자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="6397" required>
					                    </div>
					                    <div class="col4">
					                        <input type="tel" name="mobile3" id="phone13" title="휴대폰 뒷자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="5401" required>
					                    </div>
					                </div>
								</div>
							</div>
							
							
							 <button class="sjaru">넘겨</button>
							
						</div>
					</div>
				</div>
				
			</form>

		<!---footer--->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>
    </body>
    
    <script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180329055913/min/jquery_core_min.js" type="text/javascript"></script>
	<!--[if lt IE 10]>
	<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180329055913/min/jquery_core_ie10_min.js" type="text/javascript"></script>
	<![endif]-->
	<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180329055913/min/jquery_upload_min.js" type="text/javascript"></script>
	<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180329055913/min/wsrgst_page_min.js" type="text/javascript"></script>
	<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180329055913/min/space_manage_page_min.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/maps3.js?_v20151103"></script>
	<script src="https://ssl.pstatic.net/spacecloud/static/center/js/deploy/20180329055913/min/search_address_map_min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		var imageDomain = 'https://scloud.pstatic.net';
		var jsonPageData = {
			userTpCd : '',			// host / LCR / LCM
			hostId : '',	// host Id managed by LC
			maxPossbleStep : '',	// step2~cmpl
			spaceId : '', 
			productId : '', 
			currentStep : '',	// step1~cmpl
			rgstTpCd : ''	// rgst / mod
			
			
		};  
		
		$('.sjaru').click(function(){
			document.forms["trans"].submit();
			
		});
		
	</script>
</html>
