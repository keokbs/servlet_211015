<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	out.print(today + "<br>");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.print("오늘 날짜:" + sdf.format(today.getTime()) + "<br>"); // Calendar -> Date 객체로 변환 후 format 적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 날짜 단위로 -1을 추가 -> 하루전 
	// yesterday.add(Calendar.MONTH, -1); // 월 단위로 -1을 추가 -> 한달전
	// yesterday.add(Calendar.YEAR, -1); // 년 단위로 -1을 추가 -> 1년전
	out.print("어제 날짜:" + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교
	// 기준값.compareTo(비교값);
	// 기준값이 크면 : 1
	// 같으면 : 0
	// 기준값이 작으면 : -1
	int result = today.compareTo(yesterday);
	if (result > 0) {
		out.print("today가 더 크다.");
	} else if (result == 0) {
		out.print("두 날짜는 같다.");
	} else {
		out.print("yesterday가 더 크다.");
	}
	
	
%>
</body>
</html>
