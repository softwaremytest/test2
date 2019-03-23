package cc.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import cc.entityclass.Order;
import cc.entityclass.Sales;
import dao.DingDao;

/**
 * Servlet implementation class SalesServlet
 */
@WebServlet("/SalesServlet")
public class SalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalesServlet() {
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
		String[] product= {"键盘","鼠标","耳机","摄像头","小音箱"};
		int[] todaynum= {0,0,0,0,0};
		int[] weekendnum= {0,0,0,0,0};
		int[] monthnum= {0,0,0,0,0};
		DingDao orderdao=new DingDao();
		List<Order> list =orderdao.queryOrders();
		//今天订单
		List<Order> order=new ArrayList<Order>();
		//这周订单
		List<Order> order1=new ArrayList<Order>();
		//这月 订单
		List<Order> order2=new ArrayList<Order>();
		SimpleDateFormat sf = new SimpleDateFormat( "yyyy-MM-dd 00:00:00 ");
		SimpleDateFormat sf1 = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss ");
		Calendar c = Calendar.getInstance();
		//今天
		String now=sf.format(c.getTime());
		//明天
		c.add(Calendar.DAY_OF_MONTH, 1);
		String now1=sf.format(c.getTime());
		//七天前
		c.add(Calendar.DAY_OF_MONTH, -7);
		String now2=sf.format(c.getTime());
		//一个月前
		c.add(Calendar.DAY_OF_MONTH, -30);
		String now3=sf.format(c.getTime());
		//今天订单
        for(int i=0;i<list.size();i++) {
        	String time=sf1.format(list.get(i).getTime());
        	if(time.compareTo(now)>0&&time.compareTo(now1)<=0)
        	   order.add(list.get(i));
        }
        for(int i=0;i<order.size();i++)
        {
        	for(int j=0;j<product.length;j++)
        	{
        	     if(order.get(i).getGoods().equals(product[j]))
        		    todaynum[j]=order.get(i).getNum()+todaynum[j];
        	}
        }
        //七天前订单
        for(int i=0;i<list.size();i++) {
        	String time=sf1.format(list.get(i).getTime());
        	if(time.compareTo(now2)>0&&time.compareTo(now)<=0)
        	   order1.add(list.get(i));
        }
        for(int i=0;i<order1.size();i++)
        {
        	for(int j=0;j<product.length;j++)
        	{
        	     if(order1.get(i).getGoods().equals(product[j]))
        	    	 weekendnum[j]=order1.get(i).getNum()+weekendnum[j];
        	}
        }
        //一个月前订单
        for(int i=0;i<list.size();i++) {
        	String time=sf1.format(list.get(i).getTime());
        	if(time.compareTo(now3)>0&&time.compareTo(now)<=0)
        	   order2.add(list.get(i));
        }
        for(int i=0;i<order2.size();i++)
        {
        	for(int j=0;j<product.length;j++)
        	{
        	     if(order2.get(i).getGoods().equals(product[j]))
        	    	 monthnum[j]=order2.get(i).getNum()+monthnum[j];
        	}
        }
        List<Sales> sales=new ArrayList<Sales>();
        for(int j=0;j<product.length;j++) {
        	sales.add(new Sales(product[j],todaynum[j],weekendnum[j],monthnum[j]));
        }
        ObjectMapper mapper = new ObjectMapper(); // 提供java-json相互转换功能的类

        String json = mapper.writeValueAsString(sales); // 将list中的对象转换为Json字符串

        System.out.println(json);
        // 将json字符串数据返回给前端
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
	}

}
