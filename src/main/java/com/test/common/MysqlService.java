package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	// jdbc:mysql: >> http 프로토콜과 같음
	// 도메인 뒤에 접속할 database 명까지 써준다
	private String url = "jdbc:mysql://localhost:3306/boram_211015"; // jdbc:mysql: >> http 프로토콜과 같음
	private String id = "root";
	private String pw = "root";
	
	private Connection conn= null; // db 연결 클래스
	private Statement statement;
	private ResultSet res;
	
	// Singleton 패턴 : MysqlService 객체가 단 하나만 생성되도록 하는 디자인 패턴
	// DB 연결을 여러 객체에서 하지 않도록 Singleton패턴 사용
	public static MysqlService getInstance() {
		if (mysqlService == null) { // 비어있으면 새로만듬
			mysqlService = new MysqlService();
		}
		// 존재하면 그 값으로, 비어있으면 새로 만든 값으로 return
		return mysqlService;
	}
	
	public void connection() {
		// 1. 드라이버를 메모리에 로딩
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB connection
			conn = DriverManager.getConnection(url, pw, id);
			
			// 3. statement: DB와 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void disconnection() {
		try {
			statement.close();
			conn.close();
			// 연결했을 때와 반대의 순서로 끊어준다
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
