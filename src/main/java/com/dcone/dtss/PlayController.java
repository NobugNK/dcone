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

import com.dcone.dtss.DAO.GiftRecordDAO;
import com.dcone.dtss.DAO.GiftResultDAO;
import com.dcone.dtss.DAO.MenuListDAO;
import com.dcone.dtss.DAO.UserDAO;
import com.dcone.dtss.DAO.UserWalletDAO;
import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.dc_user_wallet;
import com.dcone.dtss.model.gift_result;
import com.dcone.dtss.model.menu_list;

import form.GiftForm;


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
	public String gift(@Valid GiftForm giftform,BindingResult bindingResult,HttpSession session,Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		String itcode=session.getAttribute("itcode").toString();
		dc_user_wallet user_wallet=UserWalletDAO.getWallInfoByItcode(itcode, jdbcTemplate);
		model.addAttribute("user_msg",user_wallet);
		model.addAttribute("menus", menus);
		
		if(bindingResult.hasErrors())
		{
			String msg="节目序号和节目打赏金额必须为正整数且不能为负";
			model.addAttribute("msg",msg);
			return "menu_list";
		}
		else {
			int gift_number=giftform.getGift_number()*100;
			int pid=giftform.getPid();

			gift_result temp=GiftResultDAO.getResultByPid(pid, jdbcTemplate);
			if(temp==null)
			{
				String msg="打赏失败,不存在该节目";
				model.addAttribute("msg",msg);
				return "menu_list";
			}
			dc_user user=UserDAO.getUserByItcode(itcode, jdbcTemplate);
			int g_res=GiftResultDAO.giftAdd(temp.getGid(), gift_number, jdbcTemplate);
			Date date = new Date();
			SimpleDateFormat fdate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			String formattedDate2=fdate.format(date);
			System.out.println(formattedDate2);
			int g_rec_res=GiftRecordDAO.createRecord(temp.getPid(),user.getUid(), gift_number, formattedDate2, jdbcTemplate);
			System.out.println(g_rec_res);
			if(g_res*g_rec_res>0)
				{
				return "gift_success";
				}
			else
			{
				String msg="打赏失败";
				model.addAttribute("msg",msg);
				return "menu_list";
			}
		}
	}
}
