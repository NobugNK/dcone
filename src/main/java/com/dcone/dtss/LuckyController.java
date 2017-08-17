package com.dcone.dtss;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dcone.dtss.DAO.*;
import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.*;

import MyThread.LuckyNumberThread;
import form.*;
@SuppressWarnings("unused")
@Controller
public class LuckyController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private int i=0;  //执行判断的变量
	
	@RequestMapping(value ="/luckycontrol", method = RequestMethod.GET)

	public String showluckynumber(HttpSession session,Model model) {
	
		List<menu_list> getluckresult=MenuListDAO.getAllPlays(jdbcTemplate);
		
		String itcode=session.getAttribute("itcode").toString();
		
		
		return "";
	}
	@RequestMapping("/deliverlucky")
	public String deliverLuck(Model model) {
		if(i==1)
		{
			model.addAttribute("status", "开");
		}
		else
		{
			model.addAttribute("status", "关");
		}
		return "deliverlucky";		
	}
	
	@RequestMapping("/deliveringluck")
	public String deliveringLuck(Model model) {
		i=1;
		if(i==1)
		{
			model.addAttribute("status", "开");
		}
		else
		{
			model.addAttribute("status", "关");
		}
		System.out.println(i);
		return "deliverlucky";		
	}
	@RequestMapping("/shutdownluck")
	public String shutdownLuck(Model model) {
		i=0;
		if(i==1)
		{
			model.addAttribute("status", "开");
		}
		else
		{
			model.addAttribute("status", "关");
		}
		System.out.println(i);
		return "deliverlucky";		
	}
	//用户点击抢红包时调用
	@RequestMapping("/getluck")
	public String getLuck(HttpSession session,Model model) {
		String getluckresult="";
		if (i==1) {
			//获取用户
			String itcode=session.getAttribute("itcode").toString();
			dc_user user=UserDAO.getUserByItcode(itcode, jdbcTemplate);
			//调用函数生成随机数等等
			int bonus=LuckyBounsDAO.bonusGet(user,jdbcTemplate);
			System.out.println(bonus);
			//并跳转到显示红包数额的页面
			getluckresult = "恭喜您获得了"+bonus+"元红包";
			model.addAttribute("getluckresult", getluckresult);
			return "redenveloperain";
		}
		else {
			//跳转页面提示用户抢红包还没有开启
			getluckresult="抢红包还没有开启~";
			return "login_result_normal";
		}
		
		
	}
//	
//	@RequestMapping("/redenvelope")
//	public String getredenvelope()
//	{
//		return "redenvelope";
//	}
}
