<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-day</title>
	<!-- bootstrap CDN link -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy");
	SimpleDateFormat sdf2 = new SimpleDateFormat("MM");
	SimpleDateFormat sdf3 = new SimpleDateFormat("dd");
	// out.print(sdf.format(today.getTime()));
	today.add(Calendar.DATE, -1);
	
%>
<div class="container">
	<div class="display-4 font-weight-bold">오늘부터 1일</div>
<%
	for (int i = 1; i < 11; i++) {	// 반복문 횟수
		today.add(Calendar.DATE, +100);

		%>
			<div class="display-3">
				<b><%= i * 100 %></b>일 : 
				<span class="text-danger">
					<b><%= sdf1.format(today.getTime()) %></b>년
					<b><%= sdf2.format(today.getTime()) %></b>월
					<b><%= sdf3.format(today.getTime()) %></b>일
				</span>
			</div>
		<%
	}
%>
	
</div>
</body>
</html>