package cc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.entityclass.User;
import dao.UserDao;

/**
 * Servlet implementation class SearchAction
 */
@WebServlet("/SearchAction")
@MultipartConfig
public class SearchAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String search = request.getParameter("search");
		
		if(search.equals("state_d_address")) {
			//request.getRequestDispatcher("/manager/arrival.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/sup_man_arrival.jsp");
		}
		else if(search.equals("state_d_mail")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/sup_man_mail.jsp");
		}
		else if(search.equals("state_d_Cname")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/sup_man_company.jsp");
		}
		else if(search.equals("state_d_product")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/sup_man_product.jsp");
		}
		else if(search.equals("state_d_phone")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/sup_man_iphone.jsp");
		}
		else if(search.equals("state_d_Pname")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/sup_man_people.jsp");
		}
		else if(search.equals("state_u_address")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/u_arrival.jsp");
		}
		
		else if(search.equals("state_u_mail")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/u_mail.jsp");
		}
		
		else if(search.equals("state_u_phone")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/u_phone.jsp");
		}
		
		else if(search.equals("state_u_Pname")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/u_people.jsp");
		}
		
		else if(search.equals("state_s_phone")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/vending_phone.jsp");
		}
		
		else if(search.equals("state_s_name")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/vending_name.jsp");
		}
		else if(search.equals("state_s_address")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/vending_arrival.jsp");
		}
		
		else if(search.equals("state_s_mail")) {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			response.sendRedirect("/SevenTest/Manager/vending_mail.jsp");
		}
		else  {
			//request.getRequestDispatcher("/manager/mail.jsp").forward(request, response);
			//response.sendRedirect("/SevenTest/manager/state_s_mail.jsp");
		}
	}

}
