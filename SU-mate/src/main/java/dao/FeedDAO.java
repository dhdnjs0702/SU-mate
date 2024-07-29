package dao;

import java.sql.*;
import javax.naming.NamingException;
import java.util.ArrayList;
import util.*;

public class FeedDAO {
	public boolean insert(String uid, String ucon, String uimages) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = ConnectionPool.get();
			String sql = "INSERT INTO feed(id, content) VALUES(?, ?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, uid);
			stmt.setString(2, ucon);
			stmt.setString(3, uimages);

			int count = stmt.executeUpdate();
			return (count == 1);
			
		} catch (SQLException | NamingException e) {
			// 예외 발생 시 상세 메시지 출력
			e.printStackTrace();
			return false;
		} finally {
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
	}

	public ArrayList<FeedObj> getList() throws NamingException, SQLException {
		Connection conn = ConnectionPool.get();;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM feed ORDER BY ts DESC";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
		 
			ArrayList<FeedObj> feeds = new ArrayList<FeedObj>();
			while(rs.next()) {
				feeds.add(new FeedObj(rs.getString("id"), rs.getString("content"), rs.getString("ts"), rs.getString("images")));
			}
			return feeds;
		} finally {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
	}
}