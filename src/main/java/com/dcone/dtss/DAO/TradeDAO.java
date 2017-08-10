
package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.*;
public class TradeDAO {
	/**
	 * 通过钱包的wid来获取交易记录的信息
	 * @param wid 钱包的wid
	 * @param jdbcTemplate Spring对象
	 * @return 交易记录的信息
	 */
	public static List<dc_trade> getTradesByWid(String wid,JdbcTemplate jdbcTemplate){
		RowMapper<dc_trade> trade_mapper = new BeanPropertyRowMapper<dc_trade>(dc_trade.class);
		List<dc_trade> trades=null;
		try {
		trades = jdbcTemplate.query("select * from dc_trade where wid=?", trade_mapper, wid);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return trades;
	}
	/**
	 * 通过钱包的uid 来获取到交易的信息
	 * @param uid 用户的uid
	 * @param jdbcTemplate Spring对象
	 * @return 返回交易记录的列表
	 */
	public static List<dc_trade> getTradesByUid(int uid,JdbcTemplate jdbcTemplate){
		dc_wallet wallet=WalletDAO.getWalletByUid(uid, jdbcTemplate);
		int wid=wallet.getWid();
		RowMapper<dc_trade> trade_mapper = new BeanPropertyRowMapper<dc_trade>(dc_trade.class);
		List<dc_trade> trades=null;
		try {
			trades=jdbcTemplate.query("select * from dc_trade where wid = ? ;", trade_mapper,wid);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return trades;
	}
	/**
	 * 通过用户的itcode获取交易的记录
	 * @param itcode 用户的itcode 
	 * @param jdbcTemplate Spring对象
	 * @return 返回交易记录的列表
	 */
	public static List<dc_trade> getTradesByItcode(String itcode,JdbcTemplate jdbcTemplate)
	{
		dc_user user=UserDAO.getUserByItcode(itcode,jdbcTemplate);
		List<dc_trade> tradeByUid = getTradesByUid(user.getUid(),jdbcTemplate);
		return tradeByUid;
	}
	/**
	 * 通过具体的user对象来获取到交易的信息
	 * @param user 传入的user的信息
	 * @param jdbcTemplate Spring对象
	 * @return 返回交易记录的列表
	 */
	public static List<dc_trade> getTradesByUser(dc_user user,JdbcTemplate jdbcTemplate)
	{
		return getTradesByUid(user.getUid(),jdbcTemplate);
	}
	/**
	 * 查询具体的某个交易记录
	 * @param id
	 * @return 返回一个交易记录
	 */
	public static dc_trade getTradeByTid(int tid,JdbcTemplate jdbcTemplate)
	{
		RowMapper<dc_trade> trade_mapper = new BeanPropertyRowMapper<dc_trade>(dc_trade.class);
		dc_trade trade=null;
		try {
			trade=jdbcTemplate.queryForObject("select * from dc_trade where tid=?", trade_mapper, tid);
		} catch (Exception e) {
			// TODO: handle exception
		}	
		return trade;
	}
	/**
	 * 判断一下钱包还有没有钱
	 * @param wid 钱包id
	 * @param amount 需要操作的金额
	 * @param jdbcTemplate Spring对象
	 * @return 返回true表示可以交易，false表示不可以交易
	 */
	private static boolean preTrade(int wid,int amount,JdbcTemplate jdbcTemplate) {
		dc_wallet wallet=WalletDAO.getWalletByWid(wid, jdbcTemplate);
		if(wallet.getAmount()>=amount)
			return true;
		else
			return false;
	}
	/**
	 * 创建一个交易记录
	 * @param wid 钱包的ID
	 * @param amount 账户的钱
	 * @param date 时间日期
	 * @param memo 备注信息
	 * @param jdbcTemplate Spring对象
	 * @return 返回True表示创建成功 ，false表示失败
	 */
	public static int createTrade(int wid,int amount,String date,String memo,JdbcTemplate jdbcTemplate) {
		if(preTrade(wid,amount,jdbcTemplate)) {
			//RowMapper<dc_trade> trade_mapper = new BeanPropertyRowMapper<dc_trade>(dc_trade.class);
//			Date nowdate = new Date();
//			SimpleDateFormat myFmt=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			String nowtime=myFmt.format(nowdate);
//			
			try {
				int i=jdbcTemplate.update("insert into dc_trade values(null,?,?,?,?);",new Object[] {wid,amount,date,memo});
				if(i>0)
					return 1;
			} catch (Exception e) {
				// TODO: handle exception
			}
			return 0;
		}else {
		return 0;
		}
		
	}
}
