package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

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
 * Servlet implementation class ModifyInformAction
 */
@WebServlet("/ModifyInformAction")
public class ModifyInformAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyInformAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("components/ex_ven.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
	
		String account=request.getParameter("account");
		UserDao userDao=new UserDao();
		boolean result=userDao.updateUserState(account);
		if(result) {
			out.println("<script>alert('审核成功.');location='Manager/mes_vending.jsp';</script>");
		}else {
			out.println("<script>alert('审核失败.');location='Manager/mes_vending.jsp';</script>");
		}
	}

}
