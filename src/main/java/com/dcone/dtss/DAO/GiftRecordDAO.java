package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.gift_record;
//这是一条注释

public class GiftRecordDAO {
	/**
	 * 创建一条打赏记录
	 * @param pid 打赏的节目的id
	 * @param uid 打赏的用户的id
	 * @param gift_number 打赏的金额
	 * @param gift_time 打赏的时间
	 * @param jdbcTemplate
	 * @return
	 */
	public static int createRecord(int pid,int uid,int gift_number,String gift_time,JdbcTemplate jdbcTemplate)
	{
		return 0;
	}
	/**
	 * 查询某个节目的打赏记录
	 * @param pid 节目的ID
	 * @param jdbcTemplate
	 * @return 返回记录的一个LIST
	 */
	public static List<gift_record> getRecordsByPid(int pid,JdbcTemplate jdbcTemplate){
		return null;
	}
	/**
	 * 查询某个用户的打赏记录
	 * @param uid 用户的uid
	 * @param jdbcTemplate
	 * @return 返回一个list
	 */
	public static List<gift_record> getRecordsByUid(int uid,JdbcTemplate jdbcTemplate){
		return null;
	}
	/**
	 * 返回所有的打赏记录
	 * @param jdbcTemplate
	 * @return
	 */
	public static List<gift_record> getAllRecords(JdbcTemplate jdbcTemplate){
		return null;
	}
	/**
	 * 通过用户查询记录
	 * @param user
	 * @param jdbcTemplate
	 * @return
	 */
	public static List<gift_record> getRecordsByUser(dc_user user,JdbcTemplate jdbcTemplate){
		return null;
	}
}
