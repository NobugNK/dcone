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
import com.dcone.dtss.model.dc_user_wallet;
import com.dcone.dtss.model.menu_list;

import MyThread.LuckyNumberThread;
import form.*;

@Controller
public class LuckyController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private int i=0;  //执行判断的变量
	
	@RequestMapping(value ="/luckycontrol", method = RequestMethod.GET)

	public String showluckynumber(HttpSession session,Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		
		String itcode=session.getAttribute("itcode").toString();
		
		
		return "";
	}
	@RequestMapping("/deliverlucky")
	public String deliverLuck() {
		return "deliverlucky";		
	}
	
	@RequestMapping("/deliveringluck")
	public String deliveringLuck() {
		i=1;
		return "";		
	}
	//用户点击抢红包时调用
	@RequestMapping("/getluck")
	public String getLuck() {
		if (i==1) {
			//调用函数生成随机数等等
			//并跳转到显示红包数额的页面
			return "";
		}
		else {
			//跳转页面提示用户抢红包还没有开启
			return "";
		}
		
	}
}
