package valicode;

import java.awt.Font;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.awt.*;
/**
 * Servlet implementation class Code
 */
/**
 * 
 * @author ymk
 * 验证码的实现，同时可以将session设置一个answer值
 *
 */
public class Code extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Code() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("image/jpeg");
		response.addHeader("Cache_Control","no-cache");
		response.addHeader("Pragma","no-cache"); 
		response.addDateHeader("Expires",0); 
		
		BufferedImage img =new BufferedImage(80, 25, BufferedImage.TYPE_INT_RGB);
		java.awt.Graphics g= img.getGraphics();
		Random r = new Random();
		int a=r.nextInt(10);
		int b=r.nextInt(10);
		int answer =a+b;
		HttpSession session=request.getSession();
		session.setAttribute("answer", answer);
		g.setFont(new Font("宋体",Font.BOLD,24)); 
		g.setColor(new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)));
		g.drawString(a+"" ,10 , 20);
		g.setColor(new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)));
		g.drawString("+",25 , 20);
		g.setColor(new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)));
		g.drawString(b+"",40 , 20);
		g.setColor(new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)));
		g.drawString("=",55 , 20);
		for(int i=0;i<10;i++)
		{
			g.setColor(new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)));
			g.drawLine(r.nextInt(80), r.nextInt(25),r.nextInt(80), r.nextInt(25));
		}
		ImageIO.write(img, "jpeg", response.getOutputStream());
//		System.out.println("当前的答案为"+session.getAttribute("answer"));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	

}
