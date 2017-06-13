package cn.edu.ldu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConn {
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String url="jdbc:mysql://localhost:3306/blog?useUnicode=true&characterEncoding=UTF-8";
	private static final String username="root";
	private static final String password="";
	
	public static Connection getConnection() {
		Connection conn=null;
		try {
			Class.forName(driver);				//注册驱动
			conn = DriverManager.getConnection(url,username,password);//获得连接对象
		} catch (ClassNotFoundException e) {	//捕获驱动类无法找到异常
			e.printStackTrace();										
		} catch (SQLException e) {					//捕获SQL异常
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn) {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(PreparedStatement stmt) {
		if(stmt != null) {	
			try {
				stmt.close();	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}