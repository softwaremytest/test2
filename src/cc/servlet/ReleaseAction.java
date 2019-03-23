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
import dao.TerraceMesDao;



/**
 * Servlet implementation class ReleaseAction
 */
@WebServlet("/ReleaseAction")
public class ReleaseAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReleaseAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("messages.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		
		String title=request.getParameter("informTitle");
		String content=request.getParameter("informContent");
		TerraceMes mes=new TerraceMes(0,title,content,(new Date()));
		TerraceMesDao mesDao=new TerraceMesDao();
		boolean result=mesDao.create(mes);
		if(result==true) {
			out.println("<script>alert('发布成功.');location='Manager/messages.jsp';</script>");
		}else {
			out.println("<script>alert('发布失败.');location='javascript:history.go(-1)';</script>");
		}
	}

}
