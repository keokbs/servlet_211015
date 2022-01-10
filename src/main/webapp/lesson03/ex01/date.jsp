<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <%-- 맨 윗줄을 남겨야 jsp인것을 인지 --%>
<%@ page import="java.util.Calendar" %>

<p>
	현재 시간: <%= Calendar.getInstance().getTime() %>
</p>