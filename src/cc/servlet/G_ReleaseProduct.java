package cc.servlet;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.entityclass.Yixiajia;
import cc.methodclass.CheckCodeImg;
import cc.methodclass.DbService;

@WebServlet(urlPatterns = "/G_ReleaseProduct")
public class G_ReleaseProduct extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");

		request.setCharacterEncoding("utf-8");

		String brand = request.getParameter("brand");
		String syrq = request.getParameter("syrq");
		String sex=request.getParameter("sex");
		String material=request.getParameter("material");
		String length=request.getParameter("length");
		String style=request.getParameter("style");	
		String decorate=request.getParameter("decorate");	
		String type=request.getParameter("type");	
		String title=request.getParameter("title");	
		
		//添加用户
		try{
			DbService.releaseProduct(brand, syrq, sex, material, length, style, decorate, type, title);
		
			//转发
		request.getRequestDispatcher("products_Release.jsp").forward(request,response);
		}catch(NumberFormatException e){
			System.out.print("数据转换错误！");		
			//转发
			request.setAttribute("error", "数据提交失败，发生数据转换错误！");
			request.getRequestDispatcher("index.jsp").forward(request,response);		
			e.printStackTrace();
		}catch(SQLException e){
			System.out.print("数据库错误！");
			request.setAttribute("error", "数据提交失败，数据库错误！");
			request.getRequestDispatcher("index.jsp").forward(request,response);
			e.printStackTrace();
		}
	}

}
