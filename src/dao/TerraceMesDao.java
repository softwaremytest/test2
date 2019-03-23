package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import cc.entityclass.Order;
import cc.entityclass.TerraceMes;
import cc.entityclass.User;
import util.DBUtil;

public class TerraceMesDao {
	public boolean create(TerraceMes mes) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO terrace_mes(title, content) VALUES(?,?)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mes.getTitle());
			pstmt.setString(2, mes.getContent());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
		return result==1;
	}
	public boolean updateTerraceMes(TerraceMes temp) {
    	Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql="UPDATE terrace_mes SET title=?,content=? WHERE id=?";
		ResultSet rs = null;
		int result=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(3, temp.getId());
			pstmt.setString(1, temp.getTitle());
			pstmt.setString(2, temp.getContent());
			result=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
    	return result==1;
    }
	public List<TerraceMes> queryTerraceMes() {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM terrace_mes ";
		ResultSet rs = null;
		List<TerraceMes> temps = new ArrayList<TerraceMes>();		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				TerraceMes temp = new TerraceMes();
				temp.setId(rs.getInt(1));
				temp.setTitle(rs.getString(2));
				temp.setContent(rs.getString(3));
				temps.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
		return temps;
	}
}
