package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.entityclass.TerraceMes;
import cc.entityclass.User;
import dao.TerraceMesDao;
import dao.UserDao;

/**
 * Servlet implementation class SupServlet
 */
@WebServlet("/SupServlet")
public class SupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String type = request.getParameter("type");	
		String bookId = request.getParameter("id");
		String author = request.getParameter("author");
		
		UserDao orderDao = new UserDao();
		
		if (type.equals("listsuppliers")) {
			// 1 查询books
			List<User> users = null;
			users = orderDao.querySupplier();
			List<User> sups=new ArrayList<User>();
			for(int i=0;i<users.size();i++)
			{
				if(users.get(i).getType().equals("supplier")&&users.get(i).getState().equals("未审核"))
					sups.add(users.get(i));
			}
			// 4 设置request.setAttribute
			request.setAttribute("sups", sups);
			
			// 5 请求包含include
			request.getRequestDispatcher("components/ex-sup.jsp").include(request, response);
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
