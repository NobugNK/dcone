package com.dcone.dtss.DAO;

import org.springframework.jdbc.core.JdbcTemplate;

public class LuckyNumberDAO {
	/**
	 * 获取当前红包的余额
	 * @param i 当前红包是第几轮，参数为int，表示有几轮
	 * @return 返回当前红包的余额rest
	 */
	public static int getTotalbyRound(int i,JdbcTemplate jdbcTemplate) {
		int rest=0;
		try {
			rest=jdbcTemplate.queryForInt("select total from lucky_money where round =?;",i);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return rest;
	}
	/**
	 * 红包总额记减
	 * @param round 轮次 
	 * @param number 红包数额
	 * @return 1 成功 0失败
	 */
	public static int luckyRain(int round,int number,JdbcTemplate jdbcTemplate)
	{
		int r=0;
		try {

			r=jdbcTemplate.update("update lucky_money set total = total - ? where round=?;",new Object[] {number,round});
			if(r>0)
			{
				r=1;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return r;
	}
	
}
