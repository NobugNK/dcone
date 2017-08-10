package com.dcone.dtss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dcone.dtss.DAO.MenuListDAO;
import com.dcone.dtss.model.menu_list;

@Controller
public class PlayController {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value ="/menulist", method = RequestMethod.GET)
	public String showmenu(Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		model.addAttribute("menus", menus);
		return "menu_list";
	}
}
