<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="resources/css/style.css" rel="stylesheet">
        <link href="resources/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="resources/stylesheet" href="css/lightbox.min.css">
        <link href="resources/css/responsive.css" rel="stylesheet">
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/instafeed.min.js" type="text/javascript"></script>
        <script src="resources/js/custom.js" type="text/javascript"></script>
        
        <style>
        .search_btn{
        	width: 138px; 
        	height: 50px; 
        	background-color: #704de4;
        	color: white; 
        	font-size: 20px;
        }
        </style>
  </head>
  <body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->


    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="검색어를 입력해주세요.">
        </div>
      </form>
      <!-- 버튼완성 -------------------------------------------->
      <button type="submit" class="search_btn"><img src='<c:url value="/resources/images/icons/search_ico2.png"/>'>검색</button>
 	<!-- 버튼완성 -------------------------------------------->
		

      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  </body>
</html>