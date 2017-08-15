package com.dcone.dtss;
import com.dcone.dtss.DAO.*;
import com.dcone.dtss.model.dc_user_wallet;
import com.dcone.dtss.model.luckyNumberRecord;
import com.dcone.dtss.model.menu_list;

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

import MyThread.LuckyNumberThread;
import form.*;
/**
 * 
 * @author dell
 *
 */
@Controller
public class AdminController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping("/admin")
	public String admin()
	{
		//判断用户是否登录
		return "admin";
	}
	
	boolean flag=false;
	@RequestMapping("/lucky_on")
	public String Lucky_on(String round) {
		LuckyNumberThread t =new LuckyNumberThread();
		t.setJdbcTemplate(jdbcTemplate);
		int r=0;
		try
		{
			r=Integer.parseInt(round);
		}catch (Exception e) {
			// TODO: handle exception
		}
		t.setRound(r);
		t.setFlag(true);
		t.start();
		return "luckyon";		
	}
	
	@RequestMapping("/viewrecord")
	public String ViewRecord(Model model){
		List<luckyNumberRecord> records=LuckyNumberRecordDAO.getAllRecords(jdbcTemplate);
		model.addAttribute("records", records);
		return "view_record";
	}
	@RequestMapping("/manage")
	public String ReturnManage(Model model) {
		
		return "manage";
	}
	@RequestMapping("/adduser")
	public String AddUser(Model model) {	
		return "add_user";
	}
	@RequestMapping("/useradding")
	public String AddingUser(@Valid UserForm userForm,BindingResult bindingResult,Locale locale,Model model) {
		String result="";
		if(bindingResult.hasErrors())
		{
			String msg="信息填写错误！";
			model.addAttribute("result",msg);
			return "manage_result";
		}
		else {
			int i = UserDAO.createUser(userForm.getItcode(), userForm.getUsername(),userForm.getisOnthescene(), locale, jdbcTemplate);
			if(i == 1) {
				result = "创建用户成功！";
			} else if(i == -1) {
				result = "信息填写错误!";
			}else {
				result = "创建用户失败,请稍后再试!";
			}
		}
		model.addAttribute("result",result);
		return "add_user";
	}
	
	@RequestMapping(value = "/addlist")
	public String AddList(Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		//String username=session.getAttribute("username").toString();
		model.addAttribute("menus", menus);
		return "add_list";
	}
	@RequestMapping(value ="/listadding", method = RequestMethod.GET)
	public String AddingList(@Valid ListForm listForm,BindingResult bindingResult,Locale locale,Model model) {
	    //参数没加Session，没加Logger
		String result="";
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		//如果填写不符合要求跳转回填写的空页面，似乎有问题，总是有误
		if(bindingResult.hasErrors())
		{
			result="节目信息填写有误,请重新填写";
			model.addAttribute("result",result);
			model.addAttribute("menus", menus);
			return "add_list";
		}
		else{
			
			//String username=session.getAttribute("username").toString();
		
			
			System.out.println(listForm.getPlay_name());
			
			for(menu_list temp:menus)
			{
			
				if(temp.getPlay_order()==listForm.getPlay_order())
				{
					model.addAttribute("menus", menus);
					result = "该顺序下已经有节目，添加节目失败";
					model.addAttribute("result",result);
					return "add_list";
				}
			}
			
		    int i = MenuListDAO.menulistAdd(listForm.getPlay_name(), listForm.getPlay_order(), listForm.getDepartment(),  jdbcTemplate);
		    System.out.println(i);
			
			if(i == 1) {
				result = "添加节目成功！节目名称："+listForm.getPlay_name();
			}else {
				result = "添加节目失败";
			}
		}
		menus=MenuListDAO.getAllPlays(jdbcTemplate);
		model.addAttribute("result",result);
		model.addAttribute("menus", menus);
		return "add_list";
	}
	@RequestMapping("/changelist")
	public String ChangeList(HttpSession session, Model model) {
		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		//String username=session.getAttribute("username").toString();
		String itcode=session.getAttribute("itcode").toString();
		dc_user_wallet user_wallet=UserWalletDAO.getWallInfoByItcode(itcode, jdbcTemplate);
		model.addAttribute("user_msg",user_wallet);
		model.addAttribute("menus", menus);
		return "change_list";
	}
	@RequestMapping("/listchanging")
	public String ChangingList(@Valid ChangeForm changeForm,BindingResult bindingResult,Locale locale,Model model) {
		String result="";
		try {
		if(bindingResult.hasErrors())
		{
			List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
			//String username=session.getAttribute("username").toString();
			model.addAttribute("menus", menus);
			result="信息填写错误！";
			model.addAttribute("msg",result);
			return "balance_add";
		}
		else {
			menu_list menulist = MenuListDAO.getPlayByName(changeForm.getplay_name(),jdbcTemplate);
			int i = MenuListDAO.updatePlayOrder(menulist.getPid(),changeForm.getorder(),jdbcTemplate);
			if(i == 1) {
				result = "更改成功！";
			} else{
				result = "更改失败!新顺序与其他节目冲突";
			}
		}
		}catch(Exception e) {
			result = "没有找到该节目！";
		}

		List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
		//String username=session.getAttribute("username").toString();
		model.addAttribute("menus", menus);
	
		model.addAttribute("result",result);
		return "change_list";
	}
}
