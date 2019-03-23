package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cc.entityclass.Sales;
import util.DBUtil;

public class SalesDao {
	public List<Sales> querySales() {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM sales ORDER BY Id ASC";
		ResultSet rs = null;
		List<Sales> temps = new ArrayList<Sales>();		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Sales temp = new Sales();
				temp.setName(rs.getString(2));
				temp.setTodaynum(rs.getInt(3));
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
