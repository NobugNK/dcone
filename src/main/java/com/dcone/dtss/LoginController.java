package com.dcone.dtss;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dcone.dtss.DAO.UserDAO;

@Controller
public class LoginController {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String username,String itcode,String valicode,HttpSession session,Model model) {

		String res="失败";
		Integer answer = (Integer)(session.getAttribute("answer"));
		if(Integer.parseInt(valicode)==answer.intValue()) {
			if(UserDAO.checkUserInfo(itcode, username, jdbcTemplate))
			{
				session.setAttribute("username", username);
				session.setAttribute("itcode", itcode);
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
