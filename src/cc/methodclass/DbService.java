package cc.methodclass;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cc.entityclass.Yixiajia;

public class DbService {

	// 获取数据库连接
	public static Connection getConnect() {

		Connection conn = null;
		try {

			// 1注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 2获取数据库连接
			conn = DriverManager
					.getConnection(
							"jdbc:mysql://localhost:3306/seventest?useUnicode=true&characterEncoding=UTF-8",
							"root", "123");
		} catch (ClassNotFoundException e) {

			System.out.print("加载驱动错误！");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.print("数据库连接错误！");
			e.printStackTrace();
		}
		return conn;
	}
	
	// 供货商获取所有的已下架信息
			public static ArrayList<Yixiajia> G_getAllgood(){

				Connection conn = DbService.getConnect();

				// 3 实例化QueryRunner对象
				QueryRunner qr = new QueryRunner();

				String sql = "select * from yixiajia order by id asc";

				ArrayList<Yixiajia> dmlist = null;

				try {
					dmlist = qr.query(conn, sql, new BeanListHandler(Yixiajia.class));
					// 4 释放资源
					DbUtils.closeQuietly(conn);

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println("数据库出错！");
					e.printStackTrace();

				}

				return dmlist;

			}
			// 发布产品
			public static void releaseProduct(String brand,String syrq,String sex,String material,String length,String style,
					String decorate,String type,String title) throws SQLException {

				Connection conn = DbService.getConnect();

				// 3 实例化QueryRunner对象
				QueryRunner qr = new QueryRunner();

				String sql = "insert into release_products(brand,syrq, sex, material, length, style, decorate, type, title) values(?,?,?,?,?,?,?,?,?)";

				qr.update(conn, sql, brand,syrq, sex, material, length, style, decorate, type, title);

				// 4 释放资源
				DbUtils.closeQuietly(conn);

			}

}
