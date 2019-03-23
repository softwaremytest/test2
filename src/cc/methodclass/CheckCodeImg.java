package cc.methodclass;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;

public class CheckCodeImg {
	public static BufferedImage getImageFromCode(int width,int height,Color backColor,Color lineColor,Color foreColor,String textCode){
		

		// 创建BufferedImage对象(画板)
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		// 随机操作对象
		Random r = new Random();

		// 绘制背景
		g.setColor(Color.white);
		g.fillRect(0, 0, width, height);

		int interLine = 10;
		// 绘制干扰线
		int x = r.nextInt(4), y = 0;
		int x1 = width - r.nextInt(4), y1 = 0;
		for (int i = 0; i < interLine; i++) {
			g.setColor(Color.black);
			y = r.nextInt(height - r.nextInt(4));
			y1 = r.nextInt(height - r.nextInt(4));
			g.drawLine(x, y, x1, y1);
		}
		
		
		int fsize=(int)(height*0.8);//字体大小为图片高度的80%
        int fx=0;
        int fy=fsize;
        
        g.setFont(new Font(Font.SANS_SERIF,Font.PLAIN,fsize));
        //写字符
        for(int i=0;i<textCode.length();i++){
            
            g.setColor(foreColor);
            
            g.drawString(textCode.charAt(i)+"",fx,fy);
            
            fx+=(width / textCode.length()) * (Math.random() * 0.3 + 0.8); //依据宽度浮动
            
        }
        
		
		//封笔
		g.dispose();
		
		return image;
		
	}

	public static void main(String[] args) {
		
		
		BufferedImage image = CheckCodeImg.getImageFromCode(200,40,Color.white,Color.black,Color.red,"1098");
		
		 try {
	            File file = new File("d:/图片/myeclipse/checkcode/test01.jpg");
	            ImageIO.write(image,"jpg",file);
	            System.out.println("成功保存到："+file.getAbsolutePath());
	        } catch (IOException e) {
	            System.out.println("保存失败");
	            e.printStackTrace();
	        } 

	}
}
