<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1]한글처리
	request.setCharacterEncoding("UTF-8");
	String space= request.getParameter("space");
	
	String spcNm= request.getParameter("spcNm");
	String subTtl= request.getParameter("subTtl");
	String spcDesc= request.getParameter("spcDesc");
	String spaceTagInput= request.getParameter("spaceTagInput");
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
                        	<li>space:<%=space %></li>
                        	<li>spcNm:<%=spcNm %></li>
                        	<li>subTtl:<%=subTtl %></li>
                        	
                        	<li>spcDesc:<%=spcDesc%></li>
                        	<li>spaceTagInput:<%=spaceTagInput %></li>
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
