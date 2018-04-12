<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<form class="form-horizontal">
		<fieldset>
		
		<!-- Form Name -->
		<legend>Form Name</legend>
		
		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="textinput">Text Input</label>  
		  <div class="col-md-4">
		  <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
		  <span class="help-block">help</span>  
		  </div>
		</div>
		
		<!-- File Button --> 
		<div class="form-group">
		  <label class="col-md-4 control-label" for="filebutton">File Button</label>
		  <div class="col-md-4">
		    <input id="filebutton" name="filebutton" class="input-file" type="file">
		  </div>
		</div>
		
		<!-- Textarea -->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="textarea">Text Area</label>
		  <div class="col-md-4">                     
		    <textarea class="form-control" id="textarea" name="textarea">default text</textarea>
		  </div>
		</div>
		
		<!-- Button -->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
		  <div class="col-md-4">
		    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="textinput">Text Input</label>  
		  <div class="col-md-4">
		  <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
		  <span class="help-block">help</span>  
		  </div>
		</div>
		
		</fieldset>
		</form>
	
</body>
</html>