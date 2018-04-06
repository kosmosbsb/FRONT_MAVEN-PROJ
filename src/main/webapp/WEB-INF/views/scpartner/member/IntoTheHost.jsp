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
        <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" >
        <!-- Custom styles for this template -->
        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/fonts/antonio-exotic/stylesheet.css'/>" rel="stylesheet">
        <link rel="<c:url value='/resources/stylesheet'/>" href="css/lightbox.min.css">
        <script src="<c:url value='/resources/js/jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/lightbox-plus-jquery.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/instafeed.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/resources/js/custom.js'/>" type="text/javascript"></script>

		<link href="<c:url value='/resources/css/responsive.css'/>" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

	        //체크박스 전체 선택 및 해제 로직 적용
	        $(":checkbox").click(function(){			
				if($(this).val()=="allAgree"){				
					if($(this).filter(":checked").length==1){					
						$(":checkbox:gt(0)").each(function(){	
							$(this).get(0).checked="checked";
						});
					}
					else{					
						$(":checkbox").each(function(){
							$(this).get(0).checked="";						
						});
					}				
				}
				else{
					if($(this).filter(":checked").length==1){
						if($(":checkbox:checked").length==$(":checkbox:gt(0)").length){						
							$(":checkbox:first").get(0).checked="checked";						
						}
					}
					else{					
						$(":checkbox:first").val([""]);
					}
				}		
				
			});


	        
			$("#imgSubmit").on("click",function(){
				$("#imgUploadBtn").trigger("click");
			});
			
			$("#finalSubmit").on("click",function(){ //파일 등록 안했으면 빈상태로 넘김

				if(!$("input[name='serviceAgree']").is(":checked")){
					alert("서비스 이용약관 동의를 체크해주세요.");
					$("input[name='serviceAgree']").focus();
					return false;
				}

				if(!$("input[name='infoAgree']").is(":checked")){
					alert("개인정보 수집 및 이용 동의를 체크해주세요.");
					$("input[name='infoAgree']").focus();
					return false;
				}
				
				//호스트 이름 입력 필수
				if($("input[name='h_nickname']").val().trim() == ""){
					alert("호스트 이름을 입력해주세요.");
					$("input[name='h_nickname']").focus();
					return;
				}

				//소개말 입력 필수
				if($("textarea[name='introduce']").val().trim() == ""){
					alert("소개말을 입력해주세요.");
					$("textarea[name='introduce']").focus();
					return;
				}

				if($("input[name='h_alarm_sms_chk']").is(":checked")){
					$("input[name='h_alarm_sms']").val("Y");
				}
				if($("input[name='h_alarm_mail_chk']").is(":checked")){
					$("input[name='h_alarm_mail']").val("Y");
				}

				alert("호스트 등록이 완료되었습니다.");
				$("#regiBtn").trigger("click");
			});
			
			
		});

		//input[type="file"] 에 onchange 이벤트 발생시 이미지 미리보기!
		function imgPreview(value){

			//파일 등록 안하면 파일명 칼럼 null로 비워둬서 기본이미지 박아줍니다.
			
			if(value.files && value.files[0]){ //파일을 선택한 경우

				//용량제한 1MB (바이트 단위로)
				var maxSize = 1048576;
				var fileSize = Math.round(value.files[0].size);
				//alert(value.files[0].name); //파일명 확인
				if(fileSize > maxSize){
					alert("첨부파일 사이즈는 1MB 이내로 등록할 수 있어요.");
					resetFileForm(value);
					$("#previewImg").attr("src","<c:url value='/resources/images/khw/HostUserImg.png'/>");
					return false;
				}

				//파일유형제한 jps,jpeg,png,gif
				if(getFileType(value.files[0].name).toLowerCase() != "jpg" &&
					getFileType(value.files[0].name).toLowerCase() != "jpeg" &&
					getFileType(value.files[0].name).toLowerCase() != "png" &&
					getFileType(value.files[0].name).toLowerCase() != "gif"){
					//alert(getFileType(value.files[0].name).toLowerCase()); //파일유형 확인
					alert("파일 유형을 다시 확인해주세요.");
					resetFileForm(value);
					$("#previewImg").attr("src","<c:url value='/resources/images/khw/HostUserImg.png'/>");
					return false;
				}

				
				var reader = new FileReader();
				reader.onload = function(e){
					$("#previewImg").attr("src",e.target.result);
				}
				reader.readAsDataURL(value.files[0]);
			}
			else{
				$("#previewImg").attr("src","<c:url value='/resources/images/khw/HostUserImg.png'/>");
			}
		};

		//파일 확장자 확인
		function getFileType(filePath)
	    {
	        var index = -1;
	            index = filePath.lastIndexOf('.');
	        var type = "";

	        if(index != -1)
	            type = filePath.substring(index+1, filePath.len);
	        else
	            type = "";

	        return type;
	    }


		//잘못된 파일 들어왔을때 등록 막아주기(IE10에서 적용안됨)
		function resetFileForm(elFileForm) { 

			var orgParent = elFileForm.parentNode;
			var orgNext = elFileForm.nextSibling;

			var tmp = document.createElement('form');
			tmp.appendChild(elFileForm);

			tmp.reset();

			orgParent.insertBefore(elFileForm, orgNext);

		}

	</script>
    </head>
    <body style="background-color: #f6f6f6"><!-- middle 부분 기본 배경색 -->
	<div id="page">
		<!-- 이거 그 머냐 사이드 -->
		<jsp:include page="/WEB-INF/template/SideMenu_host.jsp"/>
		
		<!---header top---------------------------------------------------------------------------------------------->
		<!--header--->
		<header class="header-container" style="background-color: #704de4;">
			<div class="container">
				<div class="top-row">
					<div class="row">
						<div class="col-md-2 col-sm-6 col-xs-6">
						<a href="index.html"><img src="<c:url value='/resources/images/khw/hostlogo.PNG'/>"
							alt="logo" style="width: 270px; height: auto;"></a>
					</div>
					<nav class="navbar navbar-default">
						<div class="navbar-header page-scroll">
							<button data-target=".navbar-ex1-collapse"
								data-toggle="collapse" class="navbar-toggle" type="button">
								<span class="sr-only">Toggle navigation</span>
							</button>
						</div>
					</nav>
				</div>
				</div>
			</div>
		</header>
		<!--header end------------------------------------------------------------------------------------------------>

<!-- middle --------------------------------------------------------------------------------------------------------->

	<div class="container" >
		<div class="row">
			<div class="col-md-12" style="border: 10px,10px,10px,10px; border-color: #704de4; border-style: solid; margin-top:20px; padding-top: 18px; padding-left: 18px; padding-right: 18px;">
				
				<div style="padding-top: 18px; padding-left: 18px; padding-right: 18px;">
					<p style="font-size: 1.8em; font-weight: bold; text-align: center;">1. 서비스 이용약관 동의</p>
					<br/><br/><br/><br/>
					<div class="checkbox">
					  <label style="font-size: 1.3em;">
					    <input type="checkbox" name="allAgree" value="allAgree"> 전체 동의하기 <small style="color: grey; text-decoration: underline;">(이용약관, 개인정보 수집 및 이용, 프로모션 안내 메일/SMS 수신(선택)에 모두 동의합니다.)</small>
					  </label>
					</div>
				
					<hr style="height:3px; background-color: grey; "/>
				
					<br/>
					<div class="checkbox">
						  <label style="font-size: 1.2em;">
						    <input type="checkbox" name="serviceAgree" value="serviceAgree"> 서비스 이용약관 <span style="color: red; font-weight: bold;">(필수)</span>
						  </label>
					</div>
					
					<textarea class="form-control" rows="8"  style="background-color: white; resize: none;" disabled >
제 1 조 (목적)
이 약관은 주식회사 앤스페이스(이하 “회사”)가 제공하는 “스페이스클라우드”(http://www.spacecloud.kr) 서비스(이하 “서비스”)의 호스트센터 (partner.spacecloud.kr) 이하 “센터” 이용과 관련하여 “회사”와 “호스트회원” 간의 권리와 의무 및 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2조 (용어의 정의)
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
(1)	“서비스”라 함은 함은 유휴 공간(이하 “공간”) 정보의 공유 및 예약을 위하여 “회사”가 스페이스클라우드를 통해 제공하는 온라인 서비스 말합니다.
(2)	“회사”의 "서비스"에 접속하여 이용약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객은 서비스 이용목적에 따라 “게스트회원”과 “호스트회원”으로 구분됩니다.
A. 게스트회원 : “스페이스클라우드 게스트 이용약관”에 따라 “회사”와 이용계약을 체결하고 “회사”가 제공하는 “서비스”를 이용할 수 있는 회원을 말합니다.
B. 호스트회원 : 이 약관에 따라 “회사”와 이용계약을 체결하고 “회사”가 제공하는 “서비스”를 통해 “공간” 정보를 등록하거나 제안할 수 있는 회원을 말합니다.
(3)	"아이디"라 함은 "호스트회원"및 “호스트회원”이 지정한 관리자의 식별과 "서비스" 이용을 위하여 "호스트회원"이 정한 온라인 포털서비스 네이버(www.naver.com, 이하 “네이버”)의 아이디(ID)를 말합니다.
(4)	"비밀번호"라 함은 "호스트회원"이 해당 "아이디”와 일치되는 "회원"임을 확인하고 비밀을 보호하기 위해 "회원" 자신이 정한 온라인 “네이버”의 비빌번호를 말합니다.
(5)	"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스”에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 말하며, "게스트회원"이 “공간” 사용 후 해당 공간에 대한 종합적인 평가를 기록한 글 등 “이용후기”를 포함합니다.
(6)	“사업자확인”이라 함은 “호스트회원”이 공간을 등록할 때 온라인 결제를 이용하고자 하는 경우 “회사”가 “호스트회원”이 등록한 사업자등록증을 통해 상호명과 사업자등록번호의 일치 여부를 확인하는 것을 말합니다.
(7)	“영업일”이라 함은 “회사”가 정상적으로 “서비스”를 제공하는 날로서 토요일, 일요일 및 법정공휴일을 제외한 날을 말합니다.
(8)	“호스트센터”라 함은 “스페이스클라우드”에서 “호스트회원”을 대상으로 제공하는 공간 등록 및 관리 페이지를 말합니다.
2.	제 1항에서 정의되지 아니한 이 약관 상의 용어의 의미는 일반적인 거래 관행에 의합니다.

제 3 조 (약관의 게시와 개정)
1.	"회사"는 이 약관의 내용을 "호스트회원"이 쉽게 알 수 있도록 “서비스” 초기 화면에 게시합니다.
2.	"회사"는 "약관의 규제에 관한 법률", "정보통신망 이용촉진 및 정보보호등에 관한 법률(이하 "정보통신망법")" 등 관련 법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
3.	"회사"가 이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지합니다. 다만 “호스트회원”에게 불리한 개정인 경우 30일 전부터 적용일자 전일까지 변경 사항을 공지하며, 공지 외에도 “호스트회원”이 등록한 전자우편, “서비스” 로그인 시 동의창 등의 전자적 수단을 통해 따로 명확히 통지합니다.
4.	“회사”가 전항에 따라 개정약관을 공지 또는 통지하면서 “호스트회원”에게 개정약관의 공지기간 내에 거부의 의사표시를 하지 않으면 승낙의 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 “호스트회원”이 명시적으로 거부의 의사표시를 하지 아니한 경우 “호스트회원”이 개정약관에 동의한 것으로 봅니다.
5.	“호스트회원”이 개정약관의 적용에 동의하지 않는 경우 “회사”는 개정약관의 내용을 적용할 수 없으며, 이 경우 “호스트회원”은 이용계약을 해지할 수 있습니다. 다만, 기존약관을 적용할 수 없는 특별한 사정이 있는 경우에는 “회사”는 이용계약을 해지할 수 있습니다.

제 4 조 (약관의 해석)
1.	“회사”는 이 약관에서 규정하지 않은 세부적인 내용을 서비스 이용정책(이하 "이용정책"이라 함)에 규정하여 “호스트센터”를 통해 공지할 수 있으며, 이 경우 “이용정책”은 이 약관과 더불어 서비스 이용계약(이하 “이용계약”이라 함)의 일부를 구성합니다.
2.	“회사”는 특정 “서비스”에 관한 개별약관(이하 "개별약관"이라 함)을 별도로 제정할 수 있으며, “호스트회원”이 개별약관에 동의한 경우 “개별약관”은 “이용계약”의 일부를 구성하고 “개별약관”에 이 약관과 상충하는 내용이 있을 경우 “개별약관”이 우선적으로 적용됩니다.
3.	이 약관이나 개별약관 또는 이용정책에서 정하지 아니한 사항이나 해석에 대해서는 관련 법령 또는 상관례에 따릅니다.

제 5 조 (이용계약 체결)
1.	이용계약은 "호스트회원"이 되고자 하는 자가 이 약관의 내용에 대하여 동의를 한 다음 가입신청을 하고 "회사"가 이러한 신청에 대하여 승낙함으로써 체결됩니다. “회사”는 이용계약이 체결되면 네이버주식회사로부터 “호스트회원”의 성명, 연락처, 전자우편주소를 제공받아 보관하며, “서비스” 제공 목적 범위 내에서 이를 “게스트회원”에게 제공할 수 있습니다.
2.	“회사”는 “호스트회원” 가입신청에 대하여 아래 각 호의 사유가 있는 경우에는 승낙을 하지 않을 수 있으며, “호스트회원” 가입 이후에라도 아래 각 호의 사유가 확인될 경우에는 이용계약을 해지할 수 있습니다.
(1)	이 약관에 의하여 “호스트회원” 자격을 상실한 적이 있는 경우
(2)	이 약관에 의하여 "서비스" 이용정지를 받고 있던 중에 "호스트회원" 탈퇴를 한 적이 있는 경우
(3)	실명이 아닌 명의 또는 타인의 명의를 기재한 경우
(4)	허위의 정보를 기재 또는 제공하거나, "회사"가 제시하는 내용을 기재하지 않은 경우
(5)	만 19세 미만의 미성년자가 법정대리인의 동의 없이 신청한 경우
(6)	결제 서비스를 신청한 "호스트회원"의 정보(사업자등록정보, 계좌정보)가 실제와 다른 경우 (개인이 아닌 “호스트회원”이 지정하는 관리자의 “아이디”로 가입신청 하는 경우에도 “호스트회원” 사업자 명의의 사업자등록정보, 계좌정보를 등록해야 하며, 관리자 등 타인의 계좌정보를 등록할 경우 이용계약을 해지할 수 있습니다.)
(7)	"호스트회원" 가입신청자의 귀책사유로 인하여 승낙이 불가능하거나 기타 이 약관에서 규정한 제반사항을 위반하여 신청하는 경우
3.	“호스트회원”이 결제 서비스를 사용하고자 하는 경우 또는 사업자정보를 변경하고자 하는 경우 “회사”는 당해 “호스트회원”의 신원확인 목적 등을 위하여 사업자등록증 또는 “회사”가 인정하는 신원확인 수단에 대한 자료를 요구할 수 있으며, 해당 “호스트회원”은 사업자등록증 등 회사가 요구하는 자료를 “회사”가 요구하는 기한 내에 제출하여야 합니다. 해당 “호스트회원”이 본 규정을 준수하지 아니할 경우 “회사”는 해당 “호스트회원”에 대하여 로그인, 공간의 등록 등 “회사”가 제공하고 있는 “서비스”의 이용을 제한할 수 있습니다.
4.	“호스트회원”이 되고자 하는 자가 개인이 아닌 경우 관리자를 지정하여 그 관리자의 “아이디”로 “호스트회원” 가입 신청을 할 수 있습니다. 관리자가 “호스트회원”의 대리인으로서 “서비스”를 이용함에 있어 발생하는 모든 권리와 의무는 “호스트회원”에게 귀속됨을 확인합니다. “호스트회원”이 관리자를 변경하고 이에 따라 기존 관리자가 보관하는 “호스트회원”의 “서비스” 이용정보 등의 포괄적 이전이 필요한 경우 “호스트회원”은 이를 증빙하는 자료를 “회사”에 제출하여 필요한 조치를 요청하여야 합니다. “호스트회원”의 대리인으로서 가입한 관리자는 “호스트회원”의 관리자 변경 요청이 “회사”에 유효하게 접수되면 “회사”가 관리자의 “아이디”를 통해 관리자가 보관하는 “호스트회원”의 “서비스” 이용정보를 “호스트회원”이 지정한 새로운 관리자에게 이전할 수 있음에 동의합니다. 기타 개인이 아닌 “호스트회원”의 가입 및 “서비스” 이용 등에 관하여 필요한 사항은 별도 안내합니다.

제 6 조 (통지)
1.	"회사"가 "호스트회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 가입신청 시 기재한 전자우편주소 등으로 할 수 있습니다.
2.	"회사"는 "호스트회원" 전체에 대한 통지의 경우 7일 이상 "회사"의 공지게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.

제 7 조 (서비스의 제공 및 변경 등)
1. “회사”는 “호스트회원”에게 제공하는 “서비스”는 아래 각호와 같습니다.
(1)	공간 등록 서비스
(2)	공간 예약 서비스
(3)	결제 서비스 (“호스트회원”이 결제 서비스를 신청한 “공간”에만 적용)
(4)	게시판 및 이용후기 등록 서비스
(5)	기타 "회사"가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 "호스트회원"에게 제공하는 일체의 서비스
2.	“회사”가 특정 “서비스”에 대하여 서비스수수료를 부과할 수 있으며, 구체적인 사항 및 요율 등은 “호스트센터”를 통해 사전에 공지합니다.
3.	“회사”는 "서비스"를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있습니다. 다만, 이러한 경우에는 그 내용을 사전에 공지합니다.
4.	"회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 이 경우 "회사"는 제6조(통지)에 정한 방법으로 "호스트회원"에게 통지합니다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.
5.	"회사"는 “서비스”의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.
6.	"회사"는 운영상, 기술상 상당한 이유가 있는 경우 제공하고 있는 “서비스”의 전부 또는 일부를 변경할 수 있습니다.
7.	“회사”는 "서비스"의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우 변경사유, 변경될 “서비스”의 내용 및 제공일자 등을 그 변경 전에 해당 “서비스” 초기화면에 게시합니다.
8.	"회사"는 무료로 제공되는 “서비스”의 일부 또는 전부를 회사의 정책 및 운영상 필요에 따라 수정, 중단, 변경할 수 있으며, 이에 대하여 관련 법령에 특별한 규정이 없는 한 "회원"에게 별도의 보상을 하지 않습니다.

제 8 조 (호스트회원의 의무)
1.	“공간”의 등록 및 제공은 “호스트회원” 등록이 완료됨과 동시에 가능합니다. “호스트회원”은 “공간”에 관한 정보를 “호스트센터”를 통하여 직접 등록, 관리하여야 합니다. 이때 “공간” 이용대금은 표준마진율, 부가세, 서비스수수료 등을 고려하여 “호스트회원” 스스로 결정합니다.
2.	“호스트회원”은 “서비스”에 등록한 “공간”의 일정 또는 가격 등 수시로 변동되는 사항에 대한 데이터를 관리하여야 하며, 데이터를 허위로 기재할 수 없습니다.
3.	“호스트회원”은 “공간”의 등록 및 제공과 관련하여 전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”), 전자금융거래법, 여신전문금융업법, 부가가치세법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 관광진흥법, 공중위생관리법, 농어촌정비법상표법 등 관련 법령이 요구하는 사항을 준수하여야 합니다.
4.	“호스트회원”이 등록한 “공간”에 관하여 전자상거래법상 청약철회가 제한되는 사유가 있는 경우 “호스트회원”은 예약 취소기한 및 취소시점에 따른 취소수수료 등을 “공간” 등록 시 상세히 기재하여야 합니다.
5.	“호스트회원”은 “회사”의 서면에 의한 사전 승인 없이 “회사” 또는 스페이스클라우드의 상호나 로고 등을 사용할 수 없습니다.
6.	“호스트회원”은 “서비스”를 사용하는 “게스트회원”에게 스페이스클라우드 사이트를 통하지 않고 직접 예약하도록 유도하여서는 안 됩니다.
7.	“호스트회원”은 “게스트회원”의 문의에 성실, 정확히 대답해야 합니다. “호스트회원”의 불성실, 부정확한 답변으로 인하여 “게스트회원”에게 발생한 손해에 대해서는 “호스트회원”이 책임을 부담합니다.
8.	“호스트회원”은 “공간”의 제공과 관련하여 관련 법령상 인·허가가 필요한 경우 이에 대한 요건을 완료한 후 “공간”을 등록·제공하여야 합니다. 인·허가 자격을 갖추지 않은 상태에서 “공간”을 제공함으로 인하여 발생한 모든 민형사상의 책임은 “호스트회원” 본인에게 있습니다. 다만, “회사”는 “호스트회원”의 인·허가 자격이 필요해진 시점에, 자격 요건을 갖출 수 있도록 고지하며, 빠른 시일 내에 서비스를 재개할 수 있도록 도와드리겠습니다.
9.	“회사”는 “호스트회원”의 사유로 인하여 “공간” 예약 승인까지 상당기간이 소요되거나, “공간” 예약 취소율 또는 클레임이 일정 수준을 초과하는 경우 당해 “호스트회원”에 대하여 경고, 신용점수 차감, “아이디” 이용정지 등 “서비스” 품질향상을 위하여 필요한 조치를 취할 수 있습니다. 이에 관한 구체적인 내용은 이용정책을 통해 사전에 공지합니다.
10.	“호스트회원”은 “공간” 등록 시 예약의 이중승인 등으로 인하여 “게스트회원”의 피해가 발생하지 않도록 관리하여야 할 의무가 있습니다.

제 9조 (보증의 부인)
“회사”는 통신판매중개시스템의 제공자로서 통신판매의 당사자가 아니므로 “서비스” 내에서 “호스트회원”과 “게스트회원” 간에 발생한 “공간”의 예약, 결제, 취소, 환불 관련 분쟁에 대하여 책임을 부담하지 않습니다.

제 10 조 (지식재산권)
1.	“호스트회원”은 “서비스”에서 “공간”의 등록 및 제공과 관련하여 제3자의 상표권, 특허권, 저작권 등 지식재산권과 성명권, 초상권 등 제반 권리를 침해하지 않아야 하며, 제3자의 권리를 사용하게 되는 경우 권리자로부터 사용허락을 득하여야 합니다.
2.	“호스트회원”이 “공간”의 등록 및 제공과 관련하여 사용한 제반 정보(초상, 성명 포함)에 대하여 제3자로부터 권리침해의 주장이 있을 경우, “회사”는 “호스트회원”이 제3자의 권리침해가 아님을 입증(법원의 판결 또는 검찰의 불기소처분 등)할 때까지 해당 “공간”의 정보 게시를 중지할 수 있습니다.
3.	“호스트회원”이 “서비스”에 등록한 “공간”에 관한 정보는 “회사”와 제휴한 제3자의 사이트나 블로그 등에 노출될 수 있습니다. 다만, “회사”가 사전에 허용한 방식으로만 노출 가능합니다.
4.	“호스트회원”은 “서비스”를 통하여 “공간”을 제공하거나 제공 예약한 것과 관련하여 “게스트회원” 또는 제3자로부터 소송 상/소송 외 이의제기를 받은 경우 “회사”를 면책시켜야 하며, 면책에 실패한 경우 그로 인하여 “회사”가 입은 모든 손해를 배상하여야 합니다.

제 11 조 (금지행위)
1. "회사”는 카테고리 오등록 등 “회사”와 다른 “호스트회원”의 정상적인 영업활동을 방해하는 행위를 금지하며 “호스트회원”에게 해당 내용을 수정할 것을 요구할 수 있고, 적발횟수에 따라 “호스트회원”이 등록한 “공간”의 예약을 금지하는 등 “서비스” 이용을 제한할 수 있습니다.
(1)	카테고리 오등록이란 등록하고자 하는 “공간”과 관련 없는 카테고리에 등록하는 것을 말합니다.
(2)	중복등록이란 동일한 카테고리 및 인접 카테고리에 동일 “공간”을 동일 조건으로 복수등록하는 것을 말합니다. “회사”는 효율적인 검색을 위해 중복등록으로 확인된 “공간”에 대하여 검색을 제한할 수 있습니다.
(3)	스팸성키워드란 검색노출을 확장하기 위한 의도로 제공하고자 하는 “공간”과 관련 없는 키워드를 등록 내용에 기재하는 것을 말합니다.
2.	“회사”는 기타 비정상적인 방법으로 “공간”을 노출하는 모든 행위를 금지합니다.
3.	“호스트회원”이 제1항에서 금지하고 있는 행위를 했을 경우 “회사”는 “호스트회원”의 “서비스” 이용정지, 이용계약 해지 등 “회사”의 손해를 최소화할 수 있는 조치를 취할 수 있습니다.

제 12 조 (공간의 등록 및 제공)
1.	“호스트회원”은 스페이스클라우드 “호스트센터”의 공간등록절차에 따라 공간 및 결제 방법을 등록할 수 있습니다. 모든 공간은 실제로 존재해야 하며, 사진, 이미지 등이 실제와 같아야 합니다. 허위 공간을 등록하였음이 검수를 통해 드러난 경우, “공간” 예약 성립 이전에는 수정 조치, “공간” 예약 성립 이후에는 제 22조 에 따라 “호스트회원” 자격이 박탈될 수 있습니다.
2.	“게스트회원”의 “공간” 예약 또는 결제가 완료된 순간 “회사”는 “호스트회원”에게 호스트툴, E-mail, SMS 등의 방법으로 예약 또는 결제 등 주문정보를 전달하고, “호스트회원"은 당해 주문정보에 따라 “공간”을 제공할 수 있도록 하여야 합니다.
3.	“호스트회원”의 사유로 “게스트회원”이 “공간” 사용일에 “공간”을 정상적으로 사용하지 못한 경우 “호스트회원”이 그에 관한 모든 책임을 부담하여야 하며, “회사”는 이에 관한 책임을 부담하지 않습니다.
4.	“호스트회원”은 “게스트회원”의 예약이 이루어진 경우, “공간” 사용일 이전에 “게스트회원”이 “공간”을 사용할 수 있도록 조치해야 합니다.

제 13 조 (등록 부적합 공간)
1.	다음 각호의 “공간”은 등록하여서는 아니 되며, 이를 등록, 제공함으로써 발생하는 모든 책임은 당해 “호스트회원”에게 있습니다.
(1)	공간의 정보가 허위 또는 과장된 경우
(2)	“호스트회원”이 공간을 제공할 적법한 권리를 가지고 있지 않은 경우
(3)	기타 관련 법령에 저촉되거나 “회사”가 합리적인 사유로 인하여 공간의 등록 및 제공을 금지하는 경우
2.	“회사”는 등록 부적합 “공간”이 발견된 경우 당해 “공간” 정보를 삭제하거나 “공간” 예약을 중지시킬 수 있으며, 당해 “공간”에 관하여 이미 예약이 성립된 경우 이를 취소하고 “게스트회원”에게 환불 등을 할 수 있습니다.
3.	“회사”는 등록 부적합 “공간”을 등록한 “호스트회원”의 회원 자격을 정지시키거나 탈퇴시킬 수 있으며, 등록 부적합 공간으로 인하여 “회사”가 입은 손해를 당해 “호스트회원”에게 청구할 수 있습니다.

제 14 조 (검수 및 모니터링)
1.	“회사”는 “서비스”에 새로운 “공간”이 등록되면 1 영업일 이내에 검수를 진행하며 검수 결과에 따라 노출 제한, “공간” 예약 제한 등의 조치를 취할 수 있습니다. 또한 “회사”는 검수 이후에도 수시로 “공간” 정보를 모니터링할 수 있습니다.
2.	“회사”는 검수 또는 모니터링 후 부적절한 또는 부정확한 조건의 “공간”에 대해 노출 제한, “공간” 예약 제한 등 조치를 취할 수 있으며, 이로 인하여 발생하는 손해에 대해서는 “호스트회원”에게 책임이 있습니다.
3.	“회사”는 “공간”을 등록한 “호스트회원”이 제공한 정보의 정확성을 확인하기 위하여 관련 법령이 허용하는 범위 내에서 증빙자료의 제공을 요청할 수 있습니다. “호스트회원”이 적법한 사유 없이 증빙자료를 제공하지 않는 경우 “회사”는 이용계약의 해지, “공간” 등록의 제한 또는 정산금의 지급 보류 등 조치를 취할 수 있으며, 이로 인하여 발생하는 손해에 대해서는 “호스트회원”에게 책임이 있습니다.
4.	전기통신사업법 등 관련 법령이 규정하는 적합한 절차에 따라 수사기관 등이 “회사”에 “호스트회원”에 관한 정보의 제공을 요청한 경우, “회사”는 그에 관한 자료를 제공할 수 있습니다.

제 15 조 (정산)
1.	“호스트회원”이 결제 서비스를 신청하여 “서비스” 내에서 제공되는 결제시스템을 사용한 “게스트회원”이 예약일에 공간 사용을 완료하면, “회사”는 “게스트회원”이 결제한 전체 이용대금(부가가치세포함)에서 “회사”의 서비스수수료 상당액을 공제한 금액을 “호스트회원”에게 지급합니다.
2.	“호스트회원”은 매월 “호스트센터”의 정산페이지를 확인하고, “호스트회원”이 받는 정산금을 확인하여야 합니다.
3.	정산기일 및 대금지불에 대한 자세한 사항은 “호스트센터” 이용정책을 참고하시기 바랍니다.

제 16 조 (정산의 보류)
1.	“회사”는 “호스트회원”의 귀책사유로 인하여 “게스트회원”이 예약 취소, 환불 요청 등 클레임을 제기한 경우, 이용정책에서 정하는 바에 따라 “호스트회원”에게 지급할 정산금에서 일정 금액을 공제하고 지급할 수 있습니다.
2.	“호스트회원”의 채권자의 신청에 의하여 정산금의 가압류, 압류 및 추심명령 등 법원의 결정이 있을 경우, “회사”는 “호스트회원”과 채권자 간의 합의 또는 채무 액의 변제 등으로 동 결정이 해제될 때까지 정산금 지급을 중지할 수 있습니다.
3.	본 조에서 정한 사항 외에도 법률의 규정에 의하거나 합리적인 사유가 있는 경우에는 “회사”는 “호스트회원”에게 통지하고 일정 기간 정산을 유보하거나 상계할 수 있습니다.

제 17 조 (개인정보의 보호)
1.	“호스트회원”은 “서비스”의 이용에 따라 지득한 “게스트회원” 등 타인의 개인정보를 이 약관에서 정한 목적 이외의 용도로 사용할 수 없으며, 이를 위반할 경우 당해 “호스트회원”은 관련 법령에 의한 모든 민형사상의 법적 책임을 지고 자신의 노력과 비용으로 “회사”를 면책시켜야 하며, “회사”는 당해 “호스트회원”과 체결한 “서비스” 이용계약을 해지할 수 있습니다.
2.	“회사”는 “게스트회원”의 개인정보 보호를 위하여 예약 등의 목적으로 “호스트회원”에게 공개되어 있는 “게스트회원”의 개인정보를 일정 기간이 경과한 후 비공개 조치할 수 있습니다.
3.	“회사”가 개인정보의 보호를 위하여 상당한 주의를 기울였음에도 불구하고, 특정 “호스트회원”이 제1항을 위반하여 타인의 개인정보를 유출 또는 유용하여 발생한 법적 책임을 “호스트회원”이 부담하며, 이로 인하여 “회사”에게 발생한 손해에 대해서는 “호스트회원”이 이를 배상합니다.
4.	법령이 규정하는 적법한 절차에 따라 수사기관 등이 “회사”에 “호스트회원”에 관한 정보의 제공을 요청한 경우, “회사”는 그에 관한 자료를 제출할 수 있습니다.
5.	“호스트회원”이 위법행위를 행한 경우 “회사”는 수사 등을 의뢰하기 위하여 그에 관한 자료를 수사기관 등에 제출할 수 있고, “호스트회원”은 이에 동의합니다.

제 18 조 (회사의 의무)
1.	“회사”는 관련 법령 또는 이 약관이 금지하는 행위 또는 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 “서비스”를 제공하기 위하여 최선을 다하여 노력합니다.
2.	“회사”는 “호스트회원”이 안전하게 “서비스”를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위한 보안시스템을 갖추며, 개인정보처리방침을 공지하고 이를 준수합니다.
3.	“회사”는 “서비스” 이용과 관련하여 “호스트회원”으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. “호스트회원”이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 “호스트회원”에게 처리과정 및 결과를 전달합니다.

제 19 조 (책임의 한계)
1.	“호스트회원”이 등록한 “공간” 정보에 대한 책임은 “호스트회원”에게 있습니다.
2.	“호스트회원”과 “게스트회원” 간 거래와 관련하여 분쟁이 발생한 경우(사고, 기물파손, 서비스의 품질에 대한 고객과의 다툼 등) “회사”는 개입하지 않으며, 분쟁으로 인한 모든 책임은 원인제공자가 부담합니다. 또한 이와 관련하여 “회사”가 피해자 또는 제3자에게 손해를 배상하거나 기타 비용을 지출한 경우 “회사”는 원인제공자에게 구상권을 행사할 수 있습니다. 단, “회사”는 분쟁의 합리적이고 원활한 해결을 위하여 “회사”가 설치·운영하는 분쟁조정센터를 통하여 당해 분쟁에 개입할 수 있으며, “호스트회원”은 분쟁조정센터의 결정을 신의성실의 원칙에 입각하여 최대한 존중해야 합니다.
3.	“회사”는 “호스트회원”이 보험가입 등 자기방어 수단을 마련하는 것을 권장합니다.
4.	“회사”는 적법한 권리자의 요구가 있는 경우에는 “공간”의 예약에 관한 정보를 삭제하거나 수정할 수 있으며, “호스트회원”은 이로 인한 손해배상을 “회사”에 청구할 수 없습니다.
5.	“회사”는 관련 법령에 따라 “호스트회원”의 정보를 열람할 수 있는 방법을 “게스트회원”에게 제공할 수 있으며, “호스트회원”은 당해 정보를 기재하지 아니하거나, 허위로 기재함으로써 발생하는 모든 책임을 부담하여야 합니다.
6.	“회사”는 컴퓨터 등 정보통신설비의 보수, 점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 “서비스”의 제공을 일시적으로 중단할 수 있으며, 이와 관련하여 “회사”는 고의 또는 중대한 과실이 없는 한 책임을 부담하지 않습니다.

제 20 조 (비밀유지)
1.	각 당사자는 관련 법령에서 요구하는 경우를 제외하고는 “게스트회원”의 개인정보, 기술정보, 영업비밀 등 상대방으로부터 취득한 일체의 정보를 제3자에게 누설하여서는 아니 되며, 그 정보를 이용계약의 이행 이외의 목적으로 이용하여서는 안 됩니다.
2.	본 조의 의무는 이용계약의 종료 후에도 3년간 존속합니다.

제 21 조 (손해배상)
“회사” 또는 “호스트회원”과 그 일방의 피고용인, 대리인, 기타 도급 및 위임 등으로 당사자 일방을 대신하여 이용계약을 이행하는 자의 책임 있는 사유로 인하여 상대방에게 손해가 발생한 경우 그 당사자 일방은 상대방에게 발생한 손해를 배상할 책임이 있습니다.

제22조	(계약기간 및 해지)
1.	이용계약의 기간은 “호스트회원”이 이 약관에 동의한 날로부터 이 약관에 의한 이용계약을 해지한 날 또는 “서비스”가 종료되는 날까지로 합니다.
2.	당사자 일방에게 다음 각호의 사유가 발생한 경우, 그 상대방은 별도의 최고 없이 해지의 통지를 함으로써 이용계약을 즉시 해지할 수 있습니다.
(1)	관련 법령 또는 이용계약(이 약관, 스페이스클라우드 이용약관, 이용정책, 개인정보처리방침 등을 모두 포함)상의 의무를 위반하여 상대방으로부터 그 시정을 요구 받은 후 일정기간 이내에 이를 시정하지 아니한 경우
(2)	부도 등 금융기관의 거래정지, 회생 및 파산절차의 개시, 영업정지 및 취소 등의 행정처분, 주요 자산에 대한 보전처분, 영업양도 및 합병 등으로 이용계약의 이행이 불가능한 경우
3.	“호스트회원”에게 다음 각호의 사유가 발생한 경우, “회사”는 별도의 최고 없이 ”호스트회원”에게 통지를 함으로써 이용계약을 즉시 해지할 수 있습니다.
(1)	“호스트회원”의 법령 위반 또는 “호스트회원”의 책임 있는 사유로 인하여 “회사”가 명예 실추 등 유/무형적 손해를 입은 경우
(2)	“호스트회원”의 책임 있는 사유로 인하여 일정 기간 동안 “게스트회원”으로부터 유사 클레임이 지속적으로 반복 제기되어 “회사”가 시정을 요구하였음에도 불구하고 시정되지 아니한 경우
(3)	“공간” 예약 정보를 오기재·미기재 함으로써 “게스트회원”에게 혼란 및 불만을 유발하는 경우
4.	이용계약의 해지에도 불구하고 “호스트회원”은 해지 시까지 완결되지 않은 “공간” 예약 건의 취소, 환불에 필요한 조치를 취하여야 하며, 해지 이전에 이미 “공간” 예약이 성립되거나 “공간” 제공이 완료된 건에 관한 “호스트회원”의 책임과 관련된 조항은 그 효력을 유지합니다.
5.	제1항에 따라 “호스트회원”의 이용계약 해지 사유가 발생한 경우, “호스트회원”은 “회사”가 정한 절차에 따라 이의신청을 할 수 있습니다. “호스트회원”의 이의신청이 정당하다고 판단되면, “호스트회원”의 서비스 이용이 재개될 수 있습니다.

제23조	(준거법 및 관할)
1.	“회사”와 “호스트회원” 간 제기된 소송은 대한민국법을 준거법으로 합니다.
2.	“회사”와 “호스트회원” 간에 분쟁이 발생하여 소송이 제기되는 경우에는 민사소송법에 따른 법원을 합의 관할법원으로 합니다. 단, 민사소송법에 따른 법원이 해외에 소재하는 경우 대한민국 서울중앙지방법원을 관할법원으로 합니다.

제24조	(보칙)
1.	“호스트회원”은 주소지 또는 사업자 변경 등의 변경이 있을 경우 즉시 “회사”에 이를 통지하여야 하며, “회사”는 통지의 지연으로 인하여 발생한 손해에 대하여 책임을 부담하지 않습니다.
2.	각 당사자는 상대방의 서면동의 없이 이용계약상의 권리와 의무를 제3자에게 양도 또는 처분할 수 없습니다.
3.	이 약관과 관련하여 당사자간의 합의에 의하여 추가로 작성된 계약서, 협정서, 약정서 등과 “회사”의 정책변경, 법령의 제정·개정 등에 의하여 회사가 “서비스” 또는 “호스트센터”를 통해 “호스트회원”에게 공지하는 내용도 이용계약의 일부를 구성합니다.
4.	이 약관, 이용정책 및 개별약관에서 정하고 있지 아니한 사항은 관련 법령 및 상관습에 따릅니다.

본 약관은 2016. 04. 05부터 시행 합니다.

</textarea>
					<br/><br/>
					<div class="checkbox">
					  <label style="font-size: 1.2em;">
					    <input type="checkbox" name="infoAgree" value="infoAgree"> 개인정보 수집 및 이용 <span style="color: red; font-weight: bold;">(필수)</span>
					  </label>
					</div>
					
					<textarea class="form-control" rows="8"  style="background-color: white; resize: none;" disabled >
(주)앤스페이스(이하 ‘회사’라 한다)는 정보통신망이용촉진 및 정보보호 등에 관한 법률(이하 ‘정보통신망법’) 등에 따라 회원의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침을 수립·공개합니다.
회사는 스페이스클라우드 온라인 중개 서비스(이하 ‘서비스’) 제공을 위하여 아래와 같이 개인정보를 수집·이용하고 있으며, 정보주체는 개인정보 처리를 거부할 권리가 있으나 아래의 내용은 서비스 제공을 위해 필요한 개인정보 처리로써 이를 거부할 시에는 서비스 이용에 어려움이 있을 수 있습니다.
본 처리방침은 스페이스클라우드 개인정보처리방침을 바탕으로 하며, 호스트에게 추가적으로 관련된 지침을 안내합니다.

제1조 수집하는 개인정보의 항목
- [필수] 등록 완료된 공간 정보(공간명, 대표자명, 주소 등 공간 정보, 세부공간명, 가격 등 세부공간 정보)
- [선택] 유선전화번호, 계좌 정보(은행명, 계좌번호, 예금주), 사업자정보(사업자번호, 사업장주소, 사업자명, 업종, 업태)

제2조 개인정보의 수집·이용목적
- 서비스 제공, 본인 및 업체 확인, 불량회원의 부정 이용방지와 비인가 사용방지, 서비스 이용의사 확인, 가입 및 가입회수 제한, 분쟁조정을 위한 기록보전, 불만처리 등 민원처리, 고지사항 전달
- 신규 서비스 개발 및 맞춤 서비스 제공, 서비스 이용에 대한 통계, 이벤트 정보 및 참여기회 제공, 광고성 정보 제공

제 3조 개인정보의 보유, 파기 및 이용기간
- 회사는 회원 탈퇴 등, 개인정보 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.
- 회원으로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 기간 동안 안전하게 보호합니다.
- 서비스(호스트) 이용 동의 철회시 / 네이버 회원 탈퇴시
1)	서비스 사용기록(결제, 예약, 프로필등)를 이용 종료로 처리. 자료는 5년간 보관 합니다.
2)	5년이 지난 개인정보 DB에서 삭제됩니다.
-	이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
1)	부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호가 있습니다.
2)	결제도용, 카드깡 등 관련 법령 및 이용약관을 위반하는 부정거래기록(아이디, 이름, 휴대폰번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.
- 전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 회사는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
1)	전자상거래 등에서 소비자 보호에 관한 법률
a)	계약 또는 청약철회 등에 관한 기록: 5년 보관
b)	대금결제 및 재화 등의 공급에 관한 기록: 5년 보관
c)	소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
2)	전자금융거래법
a)	전자금융에 관한 기록: 5년 보관
3)	통신비밀보호법
a)	로그인 기록: 3개월
- 회원탈퇴, 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다.
1)	법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다.
2)	전자적 파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.

그 밖의 사항은 스페이스클라우드 개인정보처리방침에 따릅니다.
					
</textarea>
					<br/><br/>
					<div class="checkbox">
					  <label style="font-size: 1.2em;">
					    <input type="checkbox" name="h_alarm_sms_chk" value="h_alarm_sms_chk"> 이벤트 등 프로모션 알림 SMS 수신 (선택)
					  </label>
					</div>
					<br/>
					
					<div class="checkbox">
					  <label style="font-size: 1.2em;">
					    <input type="checkbox" name="h_alarm_mail_chk" value="h_alarm_mail_chk"> 이벤트 등 프로모션 알림 메일 수신 (선택)
					  </label>
					</div>
					<br/><br/>
				</div>

			
			</div>
		
		</div>
	
	<div class="row" >
		<div class="col-md-12" style="border: 10px,10px,10px,10px; border-color: #704de4; border-style: solid; margin-top:20px; padding-top: 18px; padding-left: 18px; padding-right: 18px;">
			<div style="padding-top: 18px; padding-left: 18px; padding-right: 18px;">
					<p style="font-size: 1.8em; font-weight: bold; text-align: center;">2. 호스트 추가 정보 등록</p>
					<br/><br/><br/><br/>
					<div class="col-md-6">
					<p style="font-size: 1.2em; font-weight: bold;">프로필 이미지</p>
					<hr style="height:2px; background-color: grey; "/>
					
					<img alt="User Pic" id="previewImg" src="<c:url value='/resources/images/khw/HostUserImg.png'/>" class="img-circle img-responsive center-block" style="width: 160px; height: 140xp; padding-left: 15px;"/>
					<br/>
					<p align="center">파일유형 jpg, jpeg, png, gif / 최대파일크기 1MB</p>
					<br/>
					<button id="imgSubmit"
							class="btn btn-default center-block"
							style="background-color:#704de4;  width:100px; height:40px;">
							<span style="font-size: 1.2em; color: white;">파일첨부</span></button>
					
					
					</div>
					
					<div class="col-md-6">
						<form	action="<c:url value='/HostImg/Upload.do'/>" 
					     		method="post" 
					     		enctype="multipart/form-data" >
					 
					    <input type="hidden" name="h_alarm_sms">
					    <input type="hidden" name="h_alarm_mail">    		
					     		
					    <p style="font-size: 1.2em; font-weight: bold;">프로필 이름(최대 10자)</p>
					    <hr style="height:2px; background-color: grey; "/>
					    <br/>
					    <input type="text" name="h_nickname" class="form-control" placeholder="HOST의 프로필 이름을 입력해주세요." maxlength="10">
					    <br/><br/>
					     		
					     		
					     		
					     		
					    <p style="font-size: 1.2em; font-weight: bold;">소개말(최대 30자)</p>
					     <hr style="height:2px; background-color: grey; "/>
					     <textarea name="introduce" class="form-control" rows="3"  style="background-color: white; resize: none;" placeholder="프로필에 노출될 소개말을 입력해주세요." maxlength="30" ></textarea>
					     <br/><br/><br/><br/>
					     		
					     <input type="file" id="imgUploadBtn" name="hostImg" onchange="return imgPreview(this);" style="display: none;"/>
					     <input type="submit" id="regiBtn" value="업로드버튼" style="display: none;"/>
					  	
					   </form>
					</div>
					<div class="row">
						<button id="finalSubmit" class="btn btn-default center-block" style="background-color:#704de4;  width:600px; height:60px;"><span style="font-size: 1.2em; color: white;">호스트 등록하기</span></button>
						<br/><br/><br/><br/>
					</div>
			</div>
		</div>	
	</div>
	
	
	</div>
	
	
	
<!-- middle end--------------------------------------------------------------------------------------------------------->
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