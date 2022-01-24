<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 로고와 검색창 --%>
<header class="d-flex align-items-center">
	<%-- 로고 영역 --%>
	<div id="logo">
		<a href="/lesson03/quiz02/list_template.jsp"><b>Melong</b></a>
	</div>
	
	<%-- 검색 영역 --%>
	<div class="d-flex">
		<form method="get" action="/lesson03/quiz02/music_template.jsp">
			<div class="d-flex input-group">
				<input type="text" class="form-control" name="search">
				<div class="input-group-append">
					<button type="submit" class="btn btn-info">검색</button>
				</div>
			</div>
		</form>
	</div>
</header>