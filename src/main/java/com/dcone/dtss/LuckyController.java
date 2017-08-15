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

import form.*;

@Controller
public class LuckyController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value ="/luckycontrol", method = RequestMethod.GET)

	public String showluckynumber(HttpSession session,Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		
		String itcode=session.getAttribute("itcode").toString();
		
		
		return "";
	}
}
