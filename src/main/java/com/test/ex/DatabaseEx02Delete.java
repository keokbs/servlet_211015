package com.test.ex;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class DatabaseEx02Delete extends HttpServlet{
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 쿼리 파라미터 id값을 얻는다.
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		// id 값으로 delete query 수행
		String deleteQuery = "delete from `new_user` where id=" + id;
		try {
			mysql.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		mysql.disconnection(); // DB 해제

		// 목록 화면 이동
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
	}

}
