<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.text.DateFormat"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Calendar"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_1</title>
	<!-- bootstrap CDN link -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <style>
 	.font {font-size: 35px}
 </style>

</head>
<body>
	
	<!-- 하고 싶은 것 -->
	<!-- 클릭했을 때 넘어온 키로 확인 후 맞는 함수 출력-->
	<div class="container d-flex justify-content-center">
		<div class="font">
			
			<%-- 내가 한 답
				Date date = new Date();
			
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
				String today = dateFormat.format(date);
				
				SimpleDateFormat nowFormat = new SimpleDateFormat("HH시 mm분 ss초");
				String now = nowFormat.format(date);
				
				
				String type = request.getParameter("type");
				if (type.equals("time")){
					out.print("현재 시간은 " + now + " 입니다.");
				} else {
					out.print("오늘의 날짜는 " + today + " 입니다.");
				}
			
			--%>
			
			<%	
				// 강사님 답
				
				String type = request.getParameter("type");
			
				Date now = new Date();
				SimpleDateFormat sdf;
				
				if (type.equals("time")) {
					sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
				} else {
					sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일 입니다.");
				}
				
				String result = sdf.format(now);
				
				out.print(result);
				
			%>
		</div>
	</div>

</body>
</html>