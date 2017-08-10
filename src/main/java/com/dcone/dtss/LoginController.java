package com.dcone.dtss;

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

import form.LoginForm;

@Controller
public class LoginController {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@Valid LoginForm loginform,BindingResult bindingResult,HttpSession session,Model model) {

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
				res="成功";
				model.addAttribute("res",res);
				return "login_result";
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
	
}
