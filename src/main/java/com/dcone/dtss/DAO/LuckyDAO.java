package com.dcone.dtss.DAO;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dcone.dtss.model.dc_wallet;

public class LuckyDAO {
	/**
	 * 还需要一个红包记录表
	 * 1.修改红包总的余额
	 * 2.给用户的钱包加入指定的数额
	 * 3.添加交易记录
	 * 4.添加红包记录
	 * 四个必须连续操作，必须都成功
	 * @param jdbcTemplate
	 * @param wallet
	 * @param number
	 * @return
	 */
	public static int LuckyRain(JdbcTemplate jdbcTemplate,dc_wallet wallet,int number)
	{
		return 0;
	}
}
