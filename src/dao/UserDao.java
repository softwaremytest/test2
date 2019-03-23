package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import cc.entityclass.User;
import util.DBUtil;


public class UserDao {
    public boolean create(User user) {
    	Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql="INSERT INTO user VALUES(?,?,?,?,?,?,?,?,?,?)";
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getEamil());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getPhone());
			pstmt.setString(4, user.getIdNum());
			pstmt.setString(5, user.getRealname());
			pstmt.setString(6, user.getGender());
			pstmt.setString(7, user.getIntroduce());
			pstmt.setString(8, user.getAccount());
			pstmt.setString(9, user.getType());
			pstmt.setString(10, user.getState());
			result=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
    	return result==1;
    }
    public boolean updateUser(User user) {
    	Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql="UPDATE user SET password=?,phone=?,gender=? WHERE account=?";
		ResultSet rs = null;
		int result=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(4, user.getAccount());
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getPhone());
			pstmt.setString(3, user.getGender());
			result=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
    	return result==1;
    }
    public boolean updateUserState(String accont) {
    	Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql="UPDATE user SET state=? WHERE account=?";
		ResultSet rs = null;
		int result=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(2, accont);
			pstmt.setString(1, "审核");
			result=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
    	return result==1;
    }
    public User query(String username) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM user WHERE email=?";
		ResultSet rs = null;
		User user = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
		return user;
	}
    public List<User> querySupplier() {
    	Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM user ";
		ResultSet rs = null;
		List<User> temps = new ArrayList<User>();		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				User temp = new User();
				temp.setEamil(rs.getString(1));
				temp.setPassword(rs.getString(2));
				temp.setPhone(rs.getString(3));
				temp.setIdNum(rs.getString(4));
				temp.setRealname(rs.getString(5));
				temp.setGender(rs.getString(6));
				temp.setIntroduce(rs.getString(7));
				temp.setAccount(rs.getString(8));
				temp.setType(rs.getString(9));
				temp.setState(rs.getString(10));
				temps.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
		return temps;
  	}
    public List<User> queryVending() {
    	Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM user ";
		ResultSet rs = null;
		List<User> temps = new ArrayList<User>();		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				User temp = new User();
				temp.setEamil(rs.getString(1));
				temp.setPassword(rs.getString(2));
				temp.setPhone(rs.getString(3));
				temp.setIdNum(rs.getString(4));
				temp.setRealname(rs.getString(5));
				temp.setGender(rs.getString(6));
				temp.setIntroduce(rs.getString(7));
				temp.setAccount(rs.getString(8));
				temp.setType(rs.getString(9));
				temp.setState(rs.getString(10));
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
