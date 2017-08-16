package com.dcone.dtss.DAO;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.dc_wallet;
import com.dcone.dtss.model.gift_record;

public class LuckyBounsDAO {

	public static int bonusRandom(int isthe,JdbcTemplate jdbcTemplate ) {
		String sql="select total from lucky_money where round=4";
		int amount =jdbcTemplate.queryForInt(sql);
		int min,max;
		int bonus;
		if(amount<=100) {
			return amount;
		}
		else {
			if(isthe==1) {
				min=50;
				max=200;
			}
			else {
				min=10;
				max=100;
			}
			 Random random = new Random();
			 bonus = random.nextInt(max)%(max-min+1) + min;
		}
		return bonus;
		
	}
	
	public static int bonusGet(dc_user user,JdbcTemplate jdbcTemplate) {
		int bonus;
		bonus=bonusRandom(user.getIsOnthescene(),jdbcTemplate);
		int m = LuckyNumberDAO.luckyRain(4,bonus,jdbcTemplate);
		RowMapper<dc_user> user_mapper = new BeanPropertyRowMapper<dc_user>(dc_user.class);
		dc_wallet wallet = WalletDAO.getWalletByUid(user.getUid(),jdbcTemplate);
		int i=WalletDAO.walletAdd(wallet.getWid(),bonus,jdbcTemplate);
		Date nowdate = new Date();
		SimpleDateFormat myFmt=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=myFmt.format(nowdate);
		int j=jdbcTemplate.update("insert into lucky_record values(null,?,?,?);",new Object[] {user.getUid(),bonus,time});
		return bonus;
	}
}
