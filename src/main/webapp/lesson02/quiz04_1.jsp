<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<!-- bootstrap CDN link -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
	span {color: skyblue}
</style>
</head>
<body>
<div>

		<%
			int startNum = Integer.valueOf(request.getParameter("startNum"));
			String operator = request.getParameter("operator");
			int endNum = Integer.valueOf(request.getParameter("endNum"));
			double result = 0;

			 String printOperator = null;
			 
			 switch(operator) {
			 case "plus":
				 printOperator = "+";
				 result = startNum + endNum;
				 break;
			 case "minus":
				 printOperator = "-";
				 result = startNum - endNum;
				 break;
			 case "multiple":
				 printOperator = "X";
				 result = startNum * endNum;
				 break;
			 case "divide":
				 printOperator = "÷";
				 result = (double)startNum / endNum;
				 break;
			 }
		%>
		
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-1">
			<%
				// 3 X 5 = 15.0
				out.print(startNum + " " + printOperator + " " + endNum + " = ");
				out.print("<span>" + result + "</span>");
			
			%>

		</div>
	</div>
	
	
</div>
</body>
</html>