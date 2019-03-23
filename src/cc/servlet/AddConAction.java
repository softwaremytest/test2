package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.entityclass.Conact;
import dao.ConactDao;

/**
 * Servlet implementation class AddConAction
 */
@WebServlet("/AddConAction")
public class AddConAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddConAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("addcon.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String eamil=request.getParameter("inputEmail");
		String job=request.getParameter("job");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String name=request.getParameter("name");
		String zphone=request.getParameter("zphone");
		String remark=request.getParameter("remark");
		Conact user=new Conact(eamil,name,gender,job,phone,zphone,remark);
		ConactDao userDao=new ConactDao();
		boolean result=userDao.create(user);
		if(result==true) {
			out.println("<script>alert('add successful.');location='account/account.jsp';</script>");
		}else {
			out.println("<script>alert('add failed.');location='account/contact.jsp';</script>");
		}
	}

}
