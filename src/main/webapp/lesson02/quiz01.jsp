<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

<%!	// 1. 1부터 n까지의 합계 구하는 함수
	public int getSum (int num) {
		int sum = 0;
		for(int i = 1; i <= num; i++) {
			sum += i;
		}
		return sum;
	}

%>

<% // 2. 점수들의 평균 구하기
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	double avg = (double)sum / scores.length;

	// 3. 채점 결과
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
	}
	
	// 4. 나이 구하기
		String birthDay = "20010820";
		int year = 2021 - Integer.valueOf(birthDay.substring(0, 4)) + 1;
%>


<h1>
1부터 50까지의 합은 <%= getSum(50) %>입니다.<br>
평균 점수는 <%= avg %>입니다.<br>
채점 결과는 <%= score %>입니다.<br>
<%= birthDay %>의 나이는 <%= year %>입니다.<br>
</h1>

</body>
</html>