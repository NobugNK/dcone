package com.dcone.dtss;
import com.dcone.dtss.DAO.*;
import com.dcone.dtss.model.luckyNumberRecord;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;


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
			model.addAttribute("msg",msg);
			return "balance_add";
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
		return "manage_result";
	}
	@RequestMapping("/addlist")
	public String AddList(Model model) {
		return "add_list";
	}
	@RequestMapping("/listadding")
	public String AddingList(Model model) {
		return "";
	}
	@RequestMapping("/changelist")
	public String ChangeList(Model model) {
		return "change_list";
	}
	@RequestMapping("/listchanging")
	public String ChangingList(Model model) {
		return "";
	}
}
