package com.dcone.dtss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dcone.dtss.DAO.LuckyDAO;
import com.dcone.dtss.DAO.WalletDAO;
import com.dcone.dtss.model.dc_wallet;
/**
 * 
 * @author dell
 *
 */
@Controller
public class AdminController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	boolean flag=false;
	@RequestMapping("/lucky_on")
	public String Lucky_on() {
		List<dc_wallet> wallets=WalletDAO.getAllWallets(jdbcTemplate);
		for(dc_wallet temp:wallets)
		{
		System.out.println(temp.getUid()+" "+temp.getAmount());
			if(flag) {
				LuckyDAO.LuckyRain(jdbcTemplate);
				//发红包,还需完善，新建一个表格，把所有发的红包雨的记录给记录下来，dc_trade交易记录,将来两个是要核对的
			}
		}
		return null;		
	}
}
