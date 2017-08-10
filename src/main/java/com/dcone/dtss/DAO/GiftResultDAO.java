package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.gift_result;

public class GiftResultDAO {

	/**
	 * 通过pid初始化节目的打赏的结果金额(类似于钱包余额)
	 * @param pid 节目的id
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static int initGiftResultByPid(int pid,JdbcTemplate jdbcTemplate)
	{
		int result=0;
		try {
			String sql="insert into gift_result values(null,?,?);";
			jdbcTemplate.update(sql, new Object[] {pid,0});
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 返回所有的节目的打赏的结果
	 * @param jdbcTemplate
	 * @return 一个节目打赏结果的列表
	 */
	public static List<gift_result> getAllResults(JdbcTemplate jdbcTemplate)
	{
		List<gift_result> giftresults = null;
		RowMapper<gift_result> rowmapper=new BeanPropertyRowMapper<gift_result>(gift_result.class);
		String sql="select * from gift_result";
		try {
			giftresults=jdbcTemplate.query(sql, rowmapper);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return giftresults;
	}
	/**
	 * 通过gid获取节目的打赏的结果
	 * @param gid 节目的打赏的id
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static gift_result getResultByGid(int gid,JdbcTemplate jdbcTemplate) {
		gift_result newgiftresult = null;
		RowMapper<gift_result> rowMapper=new BeanPropertyRowMapper<gift_result>(gift_result.class);
		String sql="select * from gift_result where gid=?";
		try {
			newgiftresult=jdbcTemplate.queryForObject(sql, rowMapper,gid);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return newgiftresult;
	}
	/**
	 * 通过pid获取节目的打赏的结果
	 * @param pid 节目的id
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static gift_result getResultByPid(int pid,JdbcTemplate jdbcTemplate) {
		return null;
	}
	/**
	 * 通过gid打赏节目
	 * @param gid 节目的打赏结果的gid
	 * @param number 打赏的金额
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static int giftAdd(int gid,int number,JdbcTemplate jdbcTemplate) {
		
		return 0;
	} 
}
