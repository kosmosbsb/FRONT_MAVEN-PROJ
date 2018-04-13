
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'/>">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>

	function qCheck(){
		if($("input[name='question_title']").val().trim() == ""){
			
			alert("제목을 입력해주세요.");
			$("input[name='question_title']").focus();
			return false;
		}
		if($("textarea[name='question_content']").val().trim() == ""){
			
			alert("내용을 입력해주세요.");
			$("textarea[name='question_content']").focus();
			return false;
		}
	
		alert("문의가 정상적으로 등록되었습니다.");
		return true;
	}

	$(function(){
		$('.submenu1').hide();

		$('.majormenu').click(function(){
			
			$('.submenu1').toggle(200);
		});
		 
		$( "#dialog" ).dialog({
			  width: 500,
			  height: 600,
		      autoOpen: false,
		      modal : true,
		      show: {
		        effect: "clip",
		        duration: 850
		      },
		      hide: {
		        effect: "clip",
		        duration: 850
		      }
		    });
		 
	    $( "#doQuestion" ).on( "click", function() {
	      $( "#dialog" ).dialog( "open" );
	    });

	    $( "#dialogExit" ).on( "click", function() {
		      $( "#dialog" ).dialog( "close" );
		});
		
	})
</script>

<a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i class="glyphicon glyphicon-plus"></i></a>
<div id="sidebar-wrapper" style="background-color: #292929; width: 250px;">

	<ul class="sidebar-nav">
		<a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle">
			<i class="glyphicon glyphicon-minus"></i>
		</a>
		<li class="#">
			<c:if test="${oauth_state == null}">
			<a href="<c:url value='/login.do'/>" style="color: white;">로그인</a>
			</c:if>
			<c:if test="${oauth_state != null}">
				<div style="text-align: center;">
					<a style="margin-top: 50px;" href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home"><img src="${USER_PROFILE_N}" style="
						width: 120px; height: 120px; margin-left: 39px;
						border: 2px solid gold;
						border-radius: 70px;
						-moz-border-radius: 70px;
						-khtml-border-radius: 70px;
						-webkit-border-radius: 70px;"/><span style="color: white; font-size: 1.6em;">${USER_NICNAME_N}</span></a>
				</div>
			<!-- 박수영이 수정한 부분 시작 -->
			<li>
				<c:if test="${oauth_state == null}">
				<a href="<c:url value='/login.do'/>" style="color: #5130b1;background-color: white;font-size: 1.5em;">나의 예약 정보</a>
				</c:if>
				<c:if test="${oauth_state != null}">
				<a href="<c:url value="/NormalReserve/ReserveLoginList.do"/>" style="color: #5130b1;background-color: white;font-size: 1.5em;">나의 예약 정보</a>
				</c:if>
			</li>
			<li><a href="<c:url value="/NormalReserve/Reserve.do"/>" style="color: white;">공간 목록</a></li>
			<!-- 박수영이 수정한 부분 끝 -->
			<li><a href="#" style="color: white;">보유 크래딧</a></li>
			<li><a href="#" style="color: white;">스페이스클라우드 홈</a></li>
			<li><a href="#" style="color: white;">내가 가고 싶은 공간</a></li>
			<li class="majormenu"><a href="#" style="color: white;">1:1문의</a></li>
			<li id="doQuestion" class="submenu1"><a href="#" style="color: white;">&nbsp;&nbsp;◎문의하기</a></li>
			<li class="submenu1"><a href="<c:url value='/Question/current.do'/>" style="color: white;">&nbsp;&nbsp;◎처리현황</a></li>
			</c:if>
		</li>
		<li><a href="<c:url value="/Notice/List.do"/>" style="color: white;">공지사항</a></li>
		<li><a href="#" style="color: white;">이벤트</a></li>
		<li><a href="<c:url value="/help/help.do"/>" style="color: white;">도움말</a></li>
		<li><a href="#" style="color: white;">서비스정보</a></li>
		<c:if test="${oauth_state != null}">
		<li><a href="<c:url value='/logout.do'/>" style="color: white;">로그아웃</a></li>
		<li><a href="<c:url value='/SCPartnerMain.do'/>" style="color: white; background-color: #5130b1">호스트센터로 이동</a></li>
		</c:if>
	</ul>
</div>

<div id="dialog" title="SpaceCloud에 문의하기">
  	<div class="container" style="width: 100%;">
		<div class="row" style="margin-top: 30px;">
	        <div class="col-md-12" style="float: none; margin: 0 auto; text-align: center;">
	            <h3> 궁금증을 해소하세요:) </h3>
	        </div>
	      </div>
	      <div class="row" style="margin-top: 30px;">
	        <div class="col-md-12" style="border-style:solid; border-color: #5130b1; float: none; margin: 0 auto;">
	         

			<form style="margin-top: 20px;margin-bottom: 20px;" name="qForm" onsubmit="return qCheck()" action="<c:url value='/Question/Write.do'/>">
				<div class="form-group" >
				    <label>문의유형 선택</label>
					<select class="form-control" name="question_type">
					  <option value="예약">예약</option>
					  <option value="결제">결제</option>
					  <option value="공간">공간</option>
					  <option value="기타">기타</option>
					</select>
					
				  </div>
				  <div class="form-group">
				    <label>제목</label>
				    <input type="text" class="form-control" name="question_title" placeholder="제목을 입력하세요">
				  </div>
				 
				  <div class="form-group">
				 	<label>내용</label>
				  	<textarea class="form-control" rows="7" name="question_content" placeholder="내용을 입력하세요"></textarea>
				  </div>
			  
			  <div class="form-group" align="center">
			  <button type="submit" class="btn btn-success">등록</button>
			  <a id="dialogExit" class="btn btn-default">취소</a>
			  </div>
			  
			</form>
			
	        </div>
	      </div>
    </div>
</div>