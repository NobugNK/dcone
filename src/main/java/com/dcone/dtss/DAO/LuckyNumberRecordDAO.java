package com.dcone.dtss.DAO;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.*;
public class LuckyNumberRecordDAO {
	/**
	 * 生成一条红包的记录
	 * @param wid 钱包账户的wid
	 * @param luck_number 发的红包的钱
	 * @param round	是第几轮的红包
	 * @param jdbcTemplate Spring对象
	 * @return 返回1表示创建成功，返回0表示创建失败
	 */
	public static int newRecord(int wid,int luck_number,int round,JdbcTemplate jdbcTemplate)
	{
		try {
			int i=jdbcTemplate.update("insert into lucky_money_record values(null,?,?,?);",new Object[] {wid,luck_number,round});
			if(i>0)
				return 1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}
	/**
	 * 获取到所有的红包记录的信息
	 * @param jdbcTemplate Spring对象
	 * @return 返回的是一个红包记录的List
	 */
	public static List<luckyNumberRecord> getAllRecords(JdbcTemplate jdbcTemplate)
	{
		List<luckyNumberRecord> luckynumberrecords=null;
		RowMapper<luckyNumberRecord> lucknumberrecord_mapper = new BeanPropertyRowMapper<luckyNumberRecord>(luckyNumberRecord.class);
		try {
			luckynumberrecords=jdbcTemplate.query("select * from lucky_money_record;", lucknumberrecord_mapper);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return luckynumberrecords;
	}
	
}
