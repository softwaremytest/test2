package cc.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import cc.entityclass.Sales;
import dao.SalesDao;

/**
 * Servlet implementation class saleServlet
 */
@WebServlet("/saleServlet")
public class saleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SalesDao dao=new SalesDao();
        List<Sales> sales=dao.querySales();
        
        ObjectMapper mapper = new ObjectMapper(); // 提供java-json相互转换功能的类

        String json = mapper.writeValueAsString(sales); // 将list中的对象转换为Json字符串

        System.out.println(json);
        // 将json字符串数据返回给前端
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
	}

}
