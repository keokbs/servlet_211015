package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03") // web.xml대신 주소를 걸어준다(둘중에 하나만 사용) >> shift + ctrl + O 
public class UrlMappingQuiz03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		Date date = new Date();
		// 2021/12/28 17:18:20
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
		PrintWriter out = response.getWriter();
	
		out.print("<html><head><title>마룬달 사이트</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>"
				+ "<p>기사 입력 시간: " + sdf.format(date) + "</p>"
				+ "<hr>"
				+ "끝");
		out.print("</body></html>");
	}
}