package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cc.entityclass.Conact;
import util.DBUtil;

public class ConactDao {

	 public boolean create(Conact user) {
	    	Connection conn = DBUtil.getConnection();
			PreparedStatement pstmt = null;
			String sql="INSERT INTO contact VALUES(?,?,?,?,?,?,?)";
			int result=0;
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, user.getEmail());
				pstmt.setString(2, user.getName());
				pstmt.setString(3, user.getGender());
				pstmt.setString(4, user.getJob());
				pstmt.setString(5, user.getPhone());
				pstmt.setString(6, user.getZphone());
				pstmt.setString(7, user.getRemark());
				result=pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBUtil.closeJDBC(null, pstmt, conn);
			}
	    	return result==1;
	    }
}
