package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dcone.dtss.model.gift_result;

public class GiftResultDAO {
	/**
	 * 通过gid初始化节目的打赏的结果金额(类似于钱包余额)
	 * @param gid 结果的id
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static int initGiftResultByGid(int gid,JdbcTemplate jdbcTemplate)
	{
		return 0;
	}
	/**
	 * 通过pid初始化节目的打赏的结果金额(类似于钱包余额)
	 * @param pid 节目的id
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static int initGiftResultByPid(int pid,JdbcTemplate jdbcTemplate)
	{
		return 0;
	}
	/**
	 * 返回所有的节目的打赏的结果
	 * @param jdbcTemplate
	 * @return 一个节目打赏结果的列表
	 */
	public static List<gift_result> getAllResults(JdbcTemplate jdbcTemplate)
	{
		return null;
	}
	/**
	 * 通过gid获取节目的打赏的结果
	 * @param gid 节目的打赏的id
	 * @param jdbcTemplate
	 * @return 1成功 0失败
	 */
	public static gift_result getResultByGid(int gid,JdbcTemplate jdbcTemplate) {
		return null;
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
