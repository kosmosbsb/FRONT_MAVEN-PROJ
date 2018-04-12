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
        <script>
        //console.log("what");
        //console.log();
        </script>
        
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
		<jsp:include page="/WEB-INF/template/SideMenu.jsp"/>
		
		<!---header top---->
		<!--header--->
		<header class="header-container" style="background-color: #FFC600">
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
										<li><a data-hover="About" href="about.html"><span>About</span></a></li>
										<li><a data-hover="Rooms" href="rooms.html"><span>Rooms</span></a></li>
										<li><a data-hover="Gallery" href="gallery.html"><span>Gallery</span></a></li>
										<li><a data-hover="Dinning" href="dinning.html"><span>Dinning</span></a></li>
										<li><a data-hover="News" href="news.html"><span>News</span></a></li>
										<li><a data-hover="Contact Us" href="contact.html"><span>contact
													Us</span></a></li>
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
		<div class="clearfix"></div>
		<!----resort-overview--->
		<section class="resort-overview-block">
		<form action="Complete.jsp" method="post" id="trans" enctype="Multipart/form-data">
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
									   	<label class="col-md-2 control-label" for="textinput">공간명</label>  
									   	<div class="col-md-4">
									  	<input id="name" name="name" type="text" placeholder="공간명을 입력하세요" class="form-control input-md">
									  	</div>
									</div>
									</div>
									
									<div class="row">
									<!-- Text input-->
									<div class="form-group">
								 		<label class="col-md-2 control-label" for="textinput">공간 한줄 소개</label>  
								  		<div class="col-md-4 ">
								  		<input id="simpleintro" name="simpleintro" type="text" placeholder="공간을 소개하는 한줄 문장을 입력해주세요" class="form-control input-md">
								 		</div>
									</div>
									</div>
									
									<div class="row">
									<!-- Textarea -->
									<div class="form-group">
									  <label class="col-md-2 control-label" for="textarea">공간 소개</label>
									  <div class="col-md-4">                     
									    <textarea class="form-control" id="intro" name="intro">공간을 상세하게 소개해보세요</textarea>
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
										<div class="col-lg-4">
											<div class="input-group">
											<span class="input-group-addon">태그를 입력하고 버튼을 누르세요!</span>
											<input type="text" name="taginputName" class="form-control" id="taginputId">
											<span class="input-group-addon" id="buttonId">버튼</span>
											<!-- <button id="buttonId" class="btn btn-primary">버튼이다</button> -->
											</div>
										</div>
										<div class="col-lg-8">
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
												placeholder="이메일 주소를 입력해주세요."
												regExp="^[a-zA-Z0-9-_\,\.]+$" _errorEl="emailError"
												value="" required>
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
					                        <input type="tel" name="mobile2" id="mobile2" placeholder="중간자리를 입력해주세요." title="휴대폰 중간자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="" required>
					                    </div>
					                    <div class="col4">
					                        <input type="tel" name="mobile3" id="mobile3" placeholder="뒷자리를 입력해주세요." title="휴대폰 뒷자리"  maxLength="4"  _errorEl="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="" required>
					                    </div>
					                </div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="box_form day" id="day">
				                    <span class="tit">
				                        <label for="day">
				                            날짜
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
				                </div>
				                <div class="row day">
				                	<div class="col4">
				                        <div class="select">
				                            <select name="minday" id="minday" title="최소">
		                                    	<option value="00" selected>최소</option>
		                                    	<option value="0" >0</option>
		                                    	<option value="1" >1</option>
			                                    <option value="1" >1</option>
			                                    <option value="2" >2</option>
			                                    <option value="3" >3</option>
			                                    <option value="4" >4</option>
			                                    <option value="5" >5</option>
			                                    <option value="6" >6</option>
				                            </select>
				                        </div>
					                 </div>
					                 <div class="col4">
				                        <div class="select">
				                            <select name="maxday" id="maxday" title="최대">
		                                    	<option value="00" selected>최대</option>
		                                    	<option value="0" >0</option>
			                                    <option value="1" >1</option>
			                                    <option value="2" >2</option>
			                                    <option value="3" >3</option>
			                                    <option value="4" >4</option>
			                                    <option value="5" >5</option>
			                                    <option value="6" >6</option>
				                            </select>
				                        </div>
					                 </div>
				                </div>
							</div>
							
							<div class="form-group">
								<div class="box_form person" id="person">
				                    <span class="tit">
				                        <label for="person">
				                            인원
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
				                </div>
				                <div class="row person">
				                	<div class="col4">
				                        <div class="select">
				                            <select name="minperson" id="minperson" title="최소 인원">
		                                    	<option value="00" selected>최소</option>
		                                    	<option value="0" >0</option>
		                                    	<option value="1" >1</option>
			                                    <option value="1" >1</option>
			                                    <option value="2" >2</option>
			                                    <option value="3" >3</option>
			                                    <option value="4" >4</option>
			                                    <option value="5" >5</option>
			                                    <option value="6" >6</option>
				                            </select>
				                        </div>
					                 </div>
					                 <div class="col4">
				                        <div class="select">
				                            <select name="maxperson" id="maxperson" title="최대 인원">
		                                    	<option value="00" selected>최대</option>
		                                    	<option value="0" >0</option>
			                                    <option value="1" >1</option>
			                                    <option value="2" >2</option>
			                                    <option value="3" >3</option>
			                                    <option value="4" >4</option>
			                                    <option value="5" >5</option>
			                                    <option value="6" >6</option>
				                            </select>
				                        </div>
					                 </div>
				                </div>
							</div>
							
							<div class="form-group">
								<div class="box_form price" id="price">
				                    <span class="tit">
				                        <label for="price">
				                            금액
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
				                </div>
				                <div class="row price">
				                	<div class="col4">
				                        <div class="select">
				                            <select name="pricestandard" id="pricestandard" title="금액 기준">
		                                    	<option value="00" selected>기준</option>
		                                    	<option value="S" >S(공간당 가격)</option>
		                                    	<option value="P" >P(1인당 가격)</option>
				                            </select>
				                        </div>
					                 </div>
					                 <div class="col4">
					                    <input type="text" name="priceweekday" id="priceweekday" title="금액" placeholder="금액을 입력해주세요.">
					                 </div>
				                </div>
							</div>
							
							<div class="form-group">
								<div class="box_form type" id="type">
				                    <span class="tit">
				                        <label for="type">
				                            단위(시간단위 OR 일단위 )
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
				                    <!-- <div class="col4"> -->
				                        <div class="select">
				                            <select name="type" id="type" title="단위" >
		                                    	<option value="D" selected>D(일)</option>
			                                    <option value="T" >T(시간)</option>
				                            </select>
				                        </div>
				                    <!-- </div> -->
					            </div>
					         </div>
					         
					         
					         <div class="form-group">
								<div class="box_form precaution" id="precaution" >
						            <div class="tit" >
						                <label for="space_precaution">
						                    주의사항
						                    <span class="ico_required">*</span>
						                </label>
						            </div>
						            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
						                <textarea id="precaution" name="precaution" placeholder="주의사항을 입력하세요."
						                            maxLength="1000" style="height:108px" ></textarea>
						            </div>
					        	</div>
							</div>
							
							<div class="form-group">
								<div class="box_form opertime" id="opertime">
				                    <span class="tit">
				                        <label for="opertime">
				                            오픈시간
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
				                </div>
				                <div class="row opertime">
				                	<div class="col4">
				                        <div class="select">
				                            <select name="opertime1" id="opertime1" title="시작시간">
		                                    	<option value="0" selected>0</option>
			                                    <option value="1" >1</option>
			                                    <option value="2" >2</option>
			                                    <option value="3" >3</option>
			                                    <option value="4" >4</option>
			                                    <option value="5" >5</option>
			                                    <option value="6" >6</option>
			                                    <option value="7" >7</option>
			                                    <option value="8" >8</option>
			                                    <option value="9" >9</option>
			                                    <option value="10" >10</option>
			                                    <option value="11" >11</option>
			                                    <option value="12" >12</option>
				                            </select>
				                        </div>
					                 </div>
					                 <div class="col4">
				                        <div class="select">
				                            <select name="opertime2" id="opertime2" title="종료시간">
		                                    	<option value="0" selected>0</option>
		                                    	<option value="1" >1</option>
			                                    <option value="2" >2</option>
			                                    <option value="3" >3</option>
			                                    <option value="4" >4</option>
			                                    <option value="5" >5</option>
			                                    <option value="6" >6</option>
			                                    <option value="7" >7</option>
			                                    <option value="8" >8</option>
			                                    <option value="9" >9</option>
			                                    <option value="10" >10</option>
			                                    <option value="11" >11</option>
			                                    <option value="12" >12</option>
				                            </select>
				                        </div>
					                 </div>
				                </div>
							</div>
							
							<div class="form-group">
								<div class="box_form regularly_close" id="regularly_close">
				                    <span class="tit">
				                        <label for="regularly_close">
				                            휴무일
				                            <span class="ico_required">*</span>
				                        </label>
				                    </span>
				                </div>
				                <div class="regularly_close">
					               <input type="text" id="regularlyclose" name ="regularlyclose" placeholder="휴무일을 입력하세요(,로구분)">
				               </div>
							</div>
					         
							
							 <button class="sjaru">넘겨</button>
							
						</div>
					</div>
				</div>
				
			</form>
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
