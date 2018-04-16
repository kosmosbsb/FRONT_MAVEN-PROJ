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
	<form class="form-horizontal" action="Complete.jsp">
		<fieldset>
		
		<!-- Form Name -->
		<legend>Form Name</legend>
		
		<!-- Multiple Checkboxes -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="checkboxes">Multiple Checkboxes</label>
						<div class="col-md-4">
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="1"> <span class="label-text">월요일</span>
							</label>
						</div>
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="2"> <span class="label-text">화요일</span>
							</label>
						</div>
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="3"> <span class="label-text">수요일</span>
							</label>
						</div>
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="4"> <span class="label-text">목요일</span>
							</label>
						</div>
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="5" > <span class="label-text">금요일</span>
							</label>
						</div>
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="6"> <span class="label-text">토요일</span>
							</label>
						</div>
						<div class="form-check">
							<label>
								<input type="checkbox" name="check" value="0"> <span class="label-text">일요일</span>
							</label>
						</div>
						</div>
					</div>
					
					<div>
						<button type="submit">전송</button>
					</div>
		
		</fieldset>
		</form>
	
</body>
</html>