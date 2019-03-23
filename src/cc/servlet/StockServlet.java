package cc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import cc.entityclass.Stock;
import cc.entityclass.product;

/**
 * Servlet implementation class StockServlet
 */
@WebServlet("/StockServlet")
public class StockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StockServlet() {
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
		List<Stock> list = new ArrayList<Stock>();

        // 数据添加到集合里面，这里可以改为获取sql数据信息，然后转为json字符串，然后存到list中。
        //这里把“类别名称”和“销量”作为两个属性封装在一个Product类里，
        //每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合。
        list.add(new Stock("键盘", 100));
        list.add(new Stock("鼠标", 205));
        list.add(new Stock("耳机", 301));
        list.add(new Stock("摄像头", 320));
        list.add(new Stock("小音箱", 30));

        ObjectMapper mapper = new ObjectMapper(); // 提供java-json相互转换功能的类

        String json = mapper.writeValueAsString(list); // 将list中的对象转换为Json字符串

        System.out.println(json);

        // 将json字符串数据返回给前端
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
	}

}
