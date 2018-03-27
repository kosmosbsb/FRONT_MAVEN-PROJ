
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i class="glyphicon glyphicon-plus"></i></a>
<div id="sidebar-wrapper" style="background-color: #292929; width: 250px;">

	<ul class="sidebar-nav">
		<a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle">
			<i class="glyphicon glyphicon-minus"></i>
		</a>
		<li class="#">
			<c:if test="${oauth_state == null}">
			<a href="<c:url value='/login.do'/>" style="color: white;">로그인하기</a>
			</c:if>
			<c:if test="${oauth_state != null}">
				<div style="text-align: center;">
					<a style="margin-top: 50px;" href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home"><img src="${result.profile_image}" style="
						width: 120px; height: 120px; margin-left: 39px;
						border: 2px solid gold;
						border-radius: 70px;
						-moz-border-radius: 70px;
						-khtml-border-radius: 70px;
						-webkit-border-radius: 70px;"/><span style="color: white; font-size: 1.6em;">${result.nickname}</span></a>
				</div>
			<h2>${USER_EMAIL}</h2><br/>
			<li><a href="#" style="color: white;">보유 크래딧</a></li>
			<li><a href="#" style="color: white;">스페이스클라우드 홈</a></li>
			<li><a href="#" style="color: white;">내가 가고 싶은 공간</a></li>
			<li><a href="#" style="color: white;">1:1문의</a></li>
			</c:if>
		</li>
		<li><a href="#" style="color: white;">공지사항</a></li>
		<li><a href="#" style="color: white;">이벤트</a></li>
		<li><a href="#" style="color: white;">도움말</a></li>
		<li><a href="#" style="color: white;">서비스정보</a></li>
		<c:if test="${oauth_state == null}">
		<li><a href="#" style="color: white;">로그인</a></li>
		</c:if>
		<c:if test="${oauth_state != null}">
		<li><a href="#" style="color: white;">로그아웃</a></li>
		</c:if>
	</ul>
</div>
