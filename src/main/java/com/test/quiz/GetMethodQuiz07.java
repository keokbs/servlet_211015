package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>주문 결과</title></head><body>");
		
		if (address.contains("서울시") == false) { // 포함할 때
			out.print("배달 불가 지역입니다");
		} else if (card.equals("신한카드")) { // 완전히 같을때
			out.print("결제 불가 카드 입니다.");
		} else {
			out.print(address + " <b>배달 준비중</b><br>");
			out.print("결제금액: " + price +"원");	
		}
		
		out.print("</body></html>");
		
	
	
	}
}
