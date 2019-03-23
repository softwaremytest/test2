package cc.servlet;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.methodclass.CheckCodeImg;

@WebServlet(urlPatterns = "/111111")
public class CheckCodeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("image/jpeg");

		OutputStream os = response.getOutputStream();

		Random r = new Random();
		// ���һ����λ�����
		int code = r.nextInt(8999) + 1000;

		BufferedImage image = CheckCodeImg.getImageFromCode(80, 30, Color.white,
				Color.black, Color.red, String.valueOf(code));

		ImageIO.write(image, "jpg", os);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
