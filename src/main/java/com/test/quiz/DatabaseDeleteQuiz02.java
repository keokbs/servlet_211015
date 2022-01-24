package com.test.quiz;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;
@WebServlet("/db/quiz02_delete")
public class DatabaseDeleteQuiz02 extends HttpServlet{
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException{
		// 1. request에서 파라미터를 꺼낸다.
		int id = Integer.valueOf(request.getParameter("id"));
		
		// 2. DB 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// 3. delete query
		String deleteQuery = "delete from `bookmark` where id=" + id;
		try {
			mysql.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 4. DB 해제
		mysql.disconnection();
		
		// 5. 리다이렉트 => quiz02.jsp (즐찾 목록)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
		
	}
}
