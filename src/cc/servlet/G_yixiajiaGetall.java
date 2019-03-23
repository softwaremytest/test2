package cc.servlet;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
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

@WebServlet(urlPatterns = "/G_yixiajiaGetall")
public class G_yixiajiaGetall extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 获取所有点名数据
				ArrayList<Yixiajia> dmList = DbService.G_getAllgood();

				// 把获取的点名数据放入请求中
				request.setAttribute("dmList", dmList);

				// 转发到dmlist.jsp中
				request.getRequestDispatcher("products_Management.jsp").forward(request,
						response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
