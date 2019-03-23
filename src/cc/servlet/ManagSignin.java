package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.entityclass.User;
import dao.UserDao;

/**
 * Servlet implementation class ManagSignin
 */
@WebServlet("/ManagSignin")
public class ManagSignin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagSignin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("signin2.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("inputEmail");
		String password = request.getParameter("inputPassword");
		
		
		UserDao userDao = new UserDao();
		User user = userDao.query(username);
		
		if (user != null && user.getPassword().equals(password)) {
			request.getSession(true).setAttribute("User", user);
			out.println("<script>alert('登录成功.');location='Manager/sup_man.jsp';</script>");
		} else {
			out.println("<script>alert('登录失败.');location='signin2.jsp';</script>");
		}
	}

}
