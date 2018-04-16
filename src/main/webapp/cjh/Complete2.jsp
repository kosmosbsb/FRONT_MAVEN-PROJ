<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//1]한글처리
	request.setCharacterEncoding("UTF-8");
	//
	
	
	String check = request.getParameter("check");
	
	

%>
<!DOCTYPE html>
<html>
<head>
    <title>IncludeMemberComplete.jsp</title>
	<meta charset="utf-8" />
    <link rel="stylesheet" href="../Styles/divLayout.css" type="text/css" />
</head>
<body>
	<h2>목록형태로 표시하기</h2>
                        <ul style="list-style-type: decimal;">
                        	
                        	<li>check:<%=check %></li>
                        	
                        	
                        </ul>
</body>
</html>
