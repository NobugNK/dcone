package com.dcone.dtss;
import com.dcone.dtss.DAO.*;
import com.dcone.dtss.model.luckyNumberRecord;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import MyThread.LuckyNumberThread;
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
}
