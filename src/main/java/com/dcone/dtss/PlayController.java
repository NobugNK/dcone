package com.dcone.dtss;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dcone.dtss.DAO.MenuListDAO;
import com.dcone.dtss.DAO.UserWalletDAO;
import com.dcone.dtss.model.dc_user_wallet;
import com.dcone.dtss.model.menu_list;

@Controller
public class PlayController {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value ="/menulist", method = RequestMethod.GET)
	public String showmenu(HttpSession session,Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		//String username=session.getAttribute("username").toString();
		String itcode=session.getAttribute("itcode").toString();
		dc_user_wallet user_wallet=UserWalletDAO.getWallInfoByItcode(itcode, jdbcTemplate);
		model.addAttribute("user_msg",user_wallet);
		model.addAttribute("menus", menus);
		
		return "menu_list";
	}
	
	@RequestMapping(value ="/gifting",method = RequestMethod.GET)
	public String gift(HttpSession session,Model model) {
		String itcode=session.getAttribute("itcode").toString();
		dc_user_wallet user_wallet=UserWalletDAO.getWallInfoByItcode(itcode, jdbcTemplate);
		model.addAttribute("user_msg",user_wallet);
		
		
		return "menu_list";
	}
}
