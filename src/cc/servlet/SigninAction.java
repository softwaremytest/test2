package cc.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cc.entityclass.User;
import dao.UserDao;


/**
 * Servlet implementation class SigninAction
 */
@WebServlet("/SigninAction")
public class SigninAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SigninAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("signin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("inputEmail");
		String password = request.getParameter("inputPassword");
		String role = request.getParameter("role");
		
		UserDao userDao = new UserDao();
		User user = userDao.query(username);
		
		if (user != null && user.getPassword().equals(password)&&user.getType().equals(role)&&role.equals("supplier")) {
			request.getSession(true).setAttribute("User", user);
			out.println("<script>alert('登录成功.');location='index.jsp';</script>");
		}else if (user != null && user.getPassword().equals(password)&&user.getType().equals(role)&&role.equals("vending")) {
			request.getSession(true).setAttribute("User", user);
			out.println("<script>alert('登录成功.');location='index1.jsp';</script>");
		}else if (user != null && user.getPassword().equals(password)&&user.getType().equals(role)&&role.equals("manager")) {
			request.getSession(true).setAttribute("User", user);
			out.println("<script>alert('登录成功.');location='Manager/sup_man.jsp';</script>");
		}   else {
			out.println("<script>alert('登录失败.');location='signin.jsp';</script>");
		}
	

	}
	protected static int getRandom(int count) {
	    return (int) Math.round(Math.random() * (count));
	}
	protected String getRandomString(int length){
		String string = "abcdefghijklmnopqrstuvwxyz"; 
	    StringBuffer sb = new StringBuffer();
	    int len = string.length();
	    for (int i = 0; i < length; i++) {
	        sb.append(string.charAt(getRandom(len-1)));
	    }
	    return sb.toString();
	}
	protected Date randomDate(String beginDate,String endDate){
		try {
			 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss "); 
			 Date start = format.parse(beginDate);  // 构造开始日期 
			 Date end = format.parse(endDate);  // 构造结束日期  
			// getTime()表示返回自 1970 年 1 月 1 日 00:00:00 GMT 以来此 Date 对象表示的毫秒数。
			 if(start.getTime() >= end.getTime()){  
				 return null;  
			 }
			 long date = random(start.getTime(),end.getTime()); 
			 return new Date(date);  
		} catch (Exception e) {  
			e.printStackTrace();  
		}
		 
		return null;  
		
	}
	protected long random(long begin,long end) {
		long rtn = begin + (long)(Math.random() * (end - begin));  
		// 如果返回的是开始时间和结束时间，则递归调用本函数查找随机值  
		 if(rtn == begin || rtn == end){  
			 return random(begin,end); 
		 }
		return rtn;  
	}
}
