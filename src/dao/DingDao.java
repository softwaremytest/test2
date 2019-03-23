package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cc.entityclass.Order;
import util.DBUtil;

public class DingDao {
	public List<Order> queryOrders() {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM ding ORDER BY Id ASC";
		ResultSet rs = null;
		List<Order> temps = new ArrayList<Order>();		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Order temp = new Order();
				temp.setSupplier(rs.getString(2));
				temp.setBuyer(rs.getString(3));
				temp.setVending(rs.getString(4));
				temp.setGoods(rs.getString(5));
				temp.setNum(rs.getInt(6));
				temp.setPrice(rs.getFloat(7));
				temp.setTime(rs.getTimestamp(8));
				temps.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
		return temps;
	}
	public List<Order> queryOrdersBySupplier(String author) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM ding WHERE supplier=? ";
		ResultSet rs = null;
		List<Order> orders = new ArrayList<Order>();		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, author);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Order book = new Order();
				book.setId(rs.getInt(1));
				book.setSupplier(rs.getString(2));
				book.setBuyer(rs.getString(3));
				book.setVending(rs.getString(4));
				book.setGoods(rs.getString(5));
				book.setNum(rs.getInt(6));
				book.setPrice(rs.getFloat(7));
				book.setTime(rs.getTimestamp(8));
				orders.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
		return orders;
	}
}
