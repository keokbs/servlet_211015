<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
	<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%

List<Map<String, Object>> list = new ArrayList<>();

Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);

String search = request.getParameter("search"); // 검색어는 무조건 쓴다고 전재
String pointCheck = null;
if (request.getParameter("pointCheck") != null) { // null 체크
	pointCheck = "pointCheck";
}
	
%>
<div class="container">
	<h1 class="text-center"> 검색 결과</h1>
	<table class="table text-center">
		<tr>
			<th>메뉴</th>
			<th>상호</th>
			<th>별점</th>
		</tr>
		<%	
		// 별점 4점 이하 제외
		// iterator 사용해 봤는데 많은 iterator가 필요함

		// 체크박스 먼저 확인
		if (pointCheck != null) { // pointCheck를 했다면
			// 구현해야할 것
			for (int i = 0; i < list.size(); i++) {
				double point = (double) list.get(i).get("point"); // Object 캐스팅
			// 1. 포인트가 4점 초과인지 확인
				if (point > 4){
			// 2. 해당사항이라면 검색어인지 확인
					if (search.equals(list.get(i).get("menu"))){
			// 3. 메뉴 상호 별점 모두 출력
		%>			
				<tr>
					<td><%= list.get(i).get("menu") %></td>
					<td><%= list.get(i).get("name") %></td>
					<td><%= list.get(i).get("point") %></td>
				</tr>
		<%
					}
				}
		
			}
		} else { // pointCheck를 안했다면
			for (int i = 0; i < list.size(); i++) {
				// 1. 검색어 인지 확인
				if (search.equals(list.get(i).get("menu"))) {
				// 2. 메뉴 상호 별점 모두 출력
				%>			
						<tr>
							<td><%= list.get(i).get("menu") %></td>
							<td><%= list.get(i).get("name") %></td>
							<td><%= list.get(i).get("point") %></td>
						</tr>
				<%
				}
			}
		}
		
		%>
		
	</table>
</div>


</body>
</html>