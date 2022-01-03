package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02") // web.xml대신 주소를 걸어준다(둘중에 하나만 사용) >> shift + ctrl + O 
public class UrlMappingEx02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 1 ~ 10 합계 : 1 + 2 + ... + 10
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.print("<html><head></head><body>");
		out.print("합계 : <strong>" + sum +"</strong>");
		out.print("</body></html>");
	}
}
