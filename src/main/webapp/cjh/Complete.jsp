<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//1]한글처리
	request.setCharacterEncoding("UTF-8");
	//
	
	String space1= request.getParameter("space1")==null? null:request.getParameter("space1");
	String space2= request.getParameter("space2")==null? null:request.getParameter("space2");
	String space3= request.getParameter("space3")==null? null:request.getParameter("space3");
	String space4= request.getParameter("space4")==null? null:request.getParameter("space4");
	String space5= request.getParameter("space5")==null? null:request.getParameter("space5");
	String space6= request.getParameter("space6")==null? null:request.getParameter("space6");
	String space7= request.getParameter("space7")==null? null:request.getParameter("space7");
	String space8= request.getParameter("space8")==null? null:request.getParameter("space8");
	String space9= request.getParameter("space9")==null? null:request.getParameter("space9");
	String space10= request.getParameter("space10")==null? null:request.getParameter("space10");
	String space11= request.getParameter("space11")==null? null:request.getParameter("space11");
	
	String spaceResult = String.join(",", space1,space2,space3,space4,space5,space6,space7,space8,space9,space10,space11);
	String spaceResult2= spaceResult.replace(",null", "");
	String spaceResult3= spaceResult2.replace("null,", "");
	//
	String spcNm= request.getParameter("spcNm");
	String subTtl= request.getParameter("subTtl");
	String spcDesc= request.getParameter("spcDesc");
	String spcTag= request.getParameter("spcTag");
	
	String fill= request.getParameter("fill");
	String addr= request.getParameter("addr");
	String addrdetail= request.getParameter("addrdetail");
	String mobile1= request.getParameter("mobile1");
	String mobile2= request.getParameter("mobile2");
	String mobile3= request.getParameter("mobile3");
	String email= request.getParameter("email");
	String domain= request.getParameter("domain");

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
                        	<li>공간 유형 : <%=spaceResult3 %></li>
                        	<li>spcNm:<%=spcNm %></li>
                        	<li>subTtl:<%=subTtl %></li>
                        	
                        	<li>spcDesc:<%=spcDesc%></li>
                        	<li>spaceTagInput:<%=spcTag %></li>
                        	<li>fill:<%=fill %></li>
                        	<li>addr:<%=addr %></li>
                        	<li>addrdetail:<%=addrdetail %></li>
                        	<li>mobile1:<%=mobile1 %></li>
                        	<li>mobile1:<%=mobile2 %></li>
                        	<li>mobile1:<%=mobile3 %></li>
                        	<li>email:<%=email %></li>
                        	<li>email:<%=domain %></li>
                        </ul>
</body>
</html>
