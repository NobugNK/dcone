package com.dcone.dtss;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dcone.dtss.DAO.UserDAO;
import com.dcone.dtss.DAO.WalletDAO;
import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.dc_wallet;

import form.LoginForm;

@Controller
public class LoginController {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@Valid LoginForm loginform,BindingResult bindingResult,Locale locale,HttpSession session,Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		String res="失败";
		Integer answer = (Integer)(session.getAttribute("answer"));
		if(bindingResult.hasErrors()) {
			res="登录信息填写错误";
			model.addAttribute("res",res);
			return "home";
		}
		else {
		if(loginform.getValicode()==answer.intValue()) {
			if(UserDAO.checkUserInfo(loginform.getItcode(), loginform.getUsername(), jdbcTemplate))
			{
				session.setAttribute("username", loginform.getUsername());
				session.setAttribute("itcode", loginform.getItcode());
				String test=loginform.getUsername();
				if(test.equals("test"))
				{
				res="成功";
				model.addAttribute("res",res);
				return "login_result";
				}//如果用户名为test进入管理员界面
				else
				{
				res="成功";
				model.addAttribute("res",res);
				return "login_result_normal";
				}
			}else
			{
				res="用户不存在";
				model.addAttribute("res",res);
				return "home";
			}
		
		}
		else
		{
			res="验证码输入错误";
			model.addAttribute("res",res);
			return "home";
		}
		}
	
	}
	//用于激活钱包的操作
	@RequestMapping(value = "/activate", method = RequestMethod.GET)
	public String activatewallet (HttpSession session,Model model){
		String itcode=session.getAttribute("itcode").toString();
		dc_user user=UserDAO.getUserByItcode(itcode, jdbcTemplate);
		String res="";
		dc_wallet wallet=WalletDAO.getWalletByItcode(itcode, jdbcTemplate);
		if(wallet==null)
		{
			int j=WalletDAO.initWalletByItcode(itcode, jdbcTemplate);
			if(j>0)
			{
				res="用户"+user.getUsername()+"的钱包账户激活成功";
			}
			else
			{
				res="钱包激活失败";
			}
		}
		else
		{
			res="该账户钱包已经激活";
		}
		model.addAttribute("res", res);
		return "activate_result";
	}
}
