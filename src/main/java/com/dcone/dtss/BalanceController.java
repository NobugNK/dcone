package com.dcone.dtss;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
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

import com.dcone.dtss.DAO.*;
import com.dcone.dtss.model.*;


import form.WalletForm;


@Controller
public class BalanceController {
	@Autowired
	JdbcTemplate jdbcTemplate;

	@RequestMapping(value="/sort_log",method=RequestMethod.GET)
	public String sortlog(Model model) {
		List<dc_user_wallet> msgs=UserWalletDAO.getAllWallInfoByUser(jdbcTemplate);
		model.addAttribute("msgs", msgs);
		return "sort_log";
	}
	
	@RequestMapping(value="/sort_loging",method=RequestMethod.GET)
	public String sortlogres(HttpSession session,int uid,Model model) {
		dc_wallet wallet=WalletDAO.getWalletByUid(uid, jdbcTemplate);
		dc_user user=UserDAO.getUserByUid(uid, jdbcTemplate);
		List<dc_trade> res=TradeDAO.getTradesByWid(wallet.getWid()+"",jdbcTemplate);
		model.addAttribute("res",res);
		model.addAttribute("user",user);
		model.addAttribute("wallet",wallet);
		
		session.setAttribute("sort_uid", uid);
//		System.out.println(UserDAO.createUser("2", "haha", 0,jdbcTemplate));
//		System.out.println(UserDAO.checkUserInfo("1", "aa",jdbcTemplate));
//		
		
		return "sort_log_result";
	}
	
	@RequestMapping(value="/sort_loging_normal",method=RequestMethod.GET)
	public String sortlogres(HttpSession session,Model model) {
		String itcode=session.getAttribute("itcode").toString();
		dc_user user=UserDAO.getUserByUid(Integer.parseInt(itcode), jdbcTemplate);
		dc_wallet wallet=WalletDAO.getWalletByUid(user.getUid(), jdbcTemplate);
	
		List<dc_trade> res=TradeDAO.getTradesByWid(wallet.getWid()+"",jdbcTemplate);
		model.addAttribute("res",res);
		model.addAttribute("user",user);
		model.addAttribute("wallet",wallet);
//		System.out.println(UserDAO.createUser("2", "haha", 0,jdbcTemplate));
//		System.out.println(UserDAO.checkUserInfo("1", "aa",jdbcTemplate));
//		
		session.setAttribute("sort_uid", user.getUid());
		return "sort_log_result";
	}
	
	
	@RequestMapping(value="/sort_loging_bytime",method=RequestMethod.GET)
	public String sortlogbytime(HttpSession session,String starttime,String endtime,Model model) {
		String uid=session.getAttribute("sort_uid").toString();
		dc_user user=UserDAO.getUserByUid(Integer.parseInt(uid), jdbcTemplate);
		dc_wallet wallet=WalletDAO.getWalletByUid(user.getUid(), jdbcTemplate);
	
		List<dc_trade> res=TradeDAO.getTradesByWidAndTime(wallet.getWid()+"", starttime, endtime, jdbcTemplate);
		model.addAttribute("res",res);
		model.addAttribute("user",user);
		model.addAttribute("wallet",wallet);
//		System.out.println(UserDAO.createUser("2", "haha", 0,jdbcTemplate));
//		System.out.println(UserDAO.checkUserInfo("1", "aa",jdbcTemplate));
		session.setAttribute("sort_uid", user.getUid());
		return "sort_log_result";
	}
	
	
	@RequestMapping(value="/balance_add",method=RequestMethod.GET)
	public String balanceAdd() {
		
		return "balance_add";
	}
	@RequestMapping(value="/balance_adding")
	public String BalanceAdding(@Valid WalletForm walletForm,BindingResult bindingResult,Locale locale,Model model) {

	String result="";
	if(bindingResult.hasErrors())
	{
		String msg="用户姓名最少为1最多为8\nitcode最少为1最多为11\n金额最少1元";
		model.addAttribute("msg",msg);
		return "balance_add";
	}
	else {
		System.out.println(walletForm);
		int i = WalletDAO.balance_add(walletForm.getItcode(), walletForm.getUsername(), walletForm.getAmount()*100, locale, jdbcTemplate);
		
		
		if(i == 1) {
			result = "给用户"+walletForm.getUsername()+"成功充值"+walletForm.getAmount()+"元";
		} else if(i == -1) {
			result = "用户信息填写错误!";
		}else {
			result = "充值失败,请稍后再试!";
		}

		}
	model.addAttribute("username",walletForm.getUsername());
	model.addAttribute("addresult",result);
	
	return "balance_add";
	}
	
	
	@RequestMapping(value="/balance_add_normal")
	public String BalanceAddingNormal() {
		return "balance_add_normal";
	}
	
	@RequestMapping(value="/balance_adding_normal")
	public String BalanceAddNormal(String amount,HttpSession session,Model model) {
		
		model.addAttribute("res", "充值失败");
		String username=session.getAttribute("username").toString();
		String itcode=session.getAttribute("itcode").toString();
		dc_wallet wallet=WalletDAO.getWalletByItcode(itcode, jdbcTemplate);
		Date date = new Date();
		SimpleDateFormat fdate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		String formattedDate2=fdate.format(date);
		int i=TradeDAO.createTrade(wallet.getWid(),Integer.parseInt(amount)*100, formattedDate2,"用户自己充值", jdbcTemplate);
		if(i>0)
		{
			int j=WalletDAO.walletAdd(wallet.getWid(),Integer.parseInt(amount)*100, jdbcTemplate);
			if(j>0)
			{
				model.addAttribute("res", username+"充值"+amount+"元成功");
			}
		}
		return "balance_add_normal";
	}
}
