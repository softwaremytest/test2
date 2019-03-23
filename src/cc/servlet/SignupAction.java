package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

import cc.entityclass.User;
import dao.UserDao;

import java.io.File;

/**
 * Servlet implementation class SignupAction
 */
@WebServlet("/SignupAction")
@MultipartConfig
public class SignupAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("signup.jsp");
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
		String password=request.getParameter("inputPassword");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String realname=request.getParameter("realname");
		String IdNum=request.getParameter("IdNum");
		String introduce=request.getParameter("introduce");
		String account=	eamil;
		String type=request.getParameter("ty");
		User user=new User(eamil,password,phone,IdNum,realname,gender,introduce,account,type,"未审核");
		UserDao userDao=new UserDao();
		boolean result=userDao.create(user);
		if(result==true) {
			out.println("<script>location='signin.jsp';</script>");
		}else {
			out.println("<script>location='signup.jsp';</script>");
		}
	}

}
