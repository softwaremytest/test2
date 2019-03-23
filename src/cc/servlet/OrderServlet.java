package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cc.entityclass.Order;
import dao.DingDao;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
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
		
		DingDao orderDao = new DingDao();
		if (type.equals("listorders")) {
			// 1 查询books
			List<Order> orders = null;
			if(author != null && !author.equals("")) {
				orders = orderDao.queryOrdersBySupplier(author);
			} else {
				orders = orderDao.queryOrders();
			}
			
			
			
			// 4 设置request.setAttribute
			request.setAttribute("orders", orders);
			
			// 5 请求包含include
			request.getRequestDispatcher("components/index-order.jsp").include(request, response);
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
