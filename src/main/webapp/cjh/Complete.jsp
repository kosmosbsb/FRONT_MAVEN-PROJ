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
	String name= request.getParameter("name");
	String simpleintro= request.getParameter("simpleintro");
	String spcTag= request.getParameter("spcTag");
	String fileName1= request.getParameter("fileName1");
	String addr= request.getParameter("addr");
	String addrdetail= request.getParameter("addrdetail");
	String lat= request.getParameter("lat");
	String lng= request.getParameter("lng");
	String roadAddress= request.getParameter("roadAddress");
	String jibunAddress= request.getParameter("jibunAddress");
	String sido= request.getParameter("sido");
	String sigungu= request.getParameter("sigungu");
	String bname= request.getParameter("bname");
	String bname1= request.getParameter("bname1");
	
	
	/* String mobile1= request.getParameter("mobile1");
	String mobile2= request.getParameter("mobile2");
	String mobile3= request.getParameter("mobile3"); */
	String mobile = request.getParameter("mobile1") +request.getParameter("mobile2") +request.getParameter("mobile3");  
	
	/* String email= request.getParameter("email");
	String domain= request.getParameter("domain");
	 */
	 String email= request.getParameter("email") + "@" + request.getParameter("domain"); 
	String minday= request.getParameter("minday");
	String maxday= request.getParameter("maxday");
	String minperson= request.getParameter("minperson");
	String maxperson= request.getParameter("maxperson");
	String pricestandard= request.getParameter("pricestandard");
	String priceweekday= request.getParameter("priceweekday");
	String type= request.getParameter("type");
	String precaution= request.getParameter("precaution");
	String opertime1= request.getParameter("opertime1");
	String opertime2= request.getParameter("opertime2");
	String regularlyclose= request.getParameter("regularlyclose");
	

	
	String tagOutputName = request.getParameter("tagoutputName");
	
	String facilParam = "#"+request.getParameter("facilParam").replaceAll("\r\n", "#");

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
                        	<li>name:<%=name %></li>
                        	<li>simpleintro:<%=simpleintro%></li>
                        	<li>fileName1:<%=fileName1%></li>
                        	<li>spaceTagInput:<%=tagOutputName %></li>
                        	<li>fill:<%=facilParam %></li>
                        	<li>addr:<%=addr %></li>
                        	<li>addrdetail:<%=addrdetail %></li>
                        	<li>lat:<%=lat %></li>
                        	<li>lng:<%=lng %></li>
                        	<li>roadAddress:<%=roadAddress %></li>
                        	<li>jibunAddress:<%=jibunAddress %></li>
                        	<li>sido:<%=sido %></li>
                        	<li>sigungu:<%=sigungu %></li>
                        	<li>bname:<%=bname %></li>
                        	<li>bname1:<%=bname1 %></li>
                        	
                        	<%-- <li>mobile1:<%=mobile1 %></li>
                        	<li>mobile1:<%=mobile2 %></li>
                        	<li>mobile1:<%=mobile3 %></li> --%>
                        	<li>mobile:<%=mobile %></li>
                        	<li>email:<%=email %></li>
                        	<%-- <li>domain:<%=domain %></li> --%>
                        	<li>minday:<%=minday %></li>
                        	<li>maxday:<%=maxday %></li>
                        	<li>minperson:<%=minperson %></li>
                        	<li>maxperson:<%=maxperson %></li>
                        	<li>pricestandard:<%=pricestandard %></li>
                        	<li>priceweekday:<%=priceweekday %></li>
                        	<li>type:<%=type %></li>
                        	<li>precaution:<%=precaution %></li>
                        	<li>opertime1:<%=opertime1 %></li>
                        	<li>opertime2:<%=opertime2 %></li>
                        	<li>regularlyclose:<%=regularlyclose %></li>
                        	
                        </ul>
</body>
</html>
