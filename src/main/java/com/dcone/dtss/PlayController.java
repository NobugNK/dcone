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
import com.dcone.dtss.DAO.TradeDAO;
import com.dcone.dtss.DAO.UserDAO;
import com.dcone.dtss.DAO.UserWalletDAO;
import com.dcone.dtss.DAO.WalletDAO;
import com.dcone.dtss.model.*;


import form.GiftForm;


@Controller
public class PlayController {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@SuppressWarnings("unused")
	@RequestMapping(value ="/menulist", method = RequestMethod.GET)
	public String showmenu(HttpSession session,Model model) {
		try{
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		//String username=session.getAttribute("username").toString();
		String itcode=session.getAttribute("itcode").toString();
		dc_user_wallet user_wallet=UserWalletDAO.getWallInfoByItcode(itcode, jdbcTemplate);
		dc_user user=UserDAO.getUserByItcode(itcode, jdbcTemplate);
		dc_wallet wallet=WalletDAO.getWalletByUid(user.getUid(), jdbcTemplate);

		
		
		model.addAttribute("user_msg",user_wallet);
		model.addAttribute("menus", menus);
		
		return "menu_list";
		}
		catch (Exception e) {
			model.addAttribute("getluckresult", "钱包未激活");
			return "login_result_normal";
			// TODO: handle exception
		}
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
			String msg="节目序号和节目打赏金额只能为正整数";
			model.addAttribute("msg",msg);
			return "menu_list";
		}
		else {
			int gift_number=giftform.getGift_number()*100;
			int pid=giftform.getPid();
			if(gift_number>user_wallet.getAmount())
			{
				String msg="账户钱包余额不足，请及时<a href=\"balance_add\">充值</a>";
				model.addAttribute("msg",msg);
				return "menu_list";
			}
			gift_result temp=GiftResultDAO.getResultByPid(pid, jdbcTemplate);
			if(temp==null)
			{
				String msg="打赏失败,不存在该节目";
				model.addAttribute("msg",msg);
				return "menu_list";
			}
			Date date = new Date();
			SimpleDateFormat fdate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			String formattedDate2=fdate.format(date);
			//获取当前时间
			dc_user user=UserDAO.getUserByItcode(itcode, jdbcTemplate);
			
			int g_rec_res=GiftRecordDAO.createRecord(temp.getPid(),user.getUid(), gift_number, formattedDate2, jdbcTemplate);
			if(g_rec_res==0)
			{
				String msg="创建记录失败，打赏失败";
				model.addAttribute("msg",msg);
				return "menu_list";
			}
			int g_res=GiftResultDAO.giftAdd(temp.getGid(), gift_number, jdbcTemplate);
			//给节目加钱
			int wid=WalletDAO.getWalletByUid(user.getUid(), jdbcTemplate).getWid();
			//获取用户钱包wid
			int w_res=WalletDAO.walletCut(wid, gift_number, jdbcTemplate);
			//钱包扣钱
			int t_res=TradeDAO.createTrade(wid, gift_number, formattedDate2, "红包打赏支出", jdbcTemplate);
			//创造交易记录
//			System.out.println(formattedDate2);
			
//			System.out.println(g_rec_res);
			if(g_res*w_res*g_rec_res*t_res>0)
				{
				String msg="打赏节目"+pid+"一共" +giftform.getGift_number()+"元成功，谢谢您的支持";
				model.addAttribute("msg",msg);
				return "menu_list";
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
