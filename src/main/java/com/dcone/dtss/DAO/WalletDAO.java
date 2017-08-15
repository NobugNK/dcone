﻿package com.dcone.dtss.DAO;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.dc_wallet;

public class WalletDAO {

	/**
	 * 用户账户充值
	 * @param itcode 充值的员工号
	 * @param username 充值的员工姓名
	 * @param amount 充值的金额
	 * @param locale 时间区域
	 * @param jdbcTemplate Spring对象
	 * @return 1表示成功，-1表示用户信息错误，0其他错误
	 */
	public static int balance_add(String itcode,String username, int amount ,Locale locale, JdbcTemplate jdbcTemplate) {
		RowMapper<dc_user> user_mapper = new BeanPropertyRowMapper<dc_user>(dc_user.class);
		try {
			dc_user user = jdbcTemplate.queryForObject("select * from dc_user where itcode=? and username=?;", user_mapper, new Object[] {itcode, username});
			System.out.println(user);//test
			RowMapper<dc_wallet> wallet_mapper = new BeanPropertyRowMapper<dc_wallet>(dc_wallet.class);
			dc_wallet wallet  = jdbcTemplate.queryForObject("select * from dc_wallet where uid  = ?;", wallet_mapper, user.getUid());
			System.out.println(wallet);//test
			
			Date date = new Date();
			SimpleDateFormat fdate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			String formattedDate2=fdate.format(date);
			//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

			//String formattedDate = dateFormat.format(date);
		
		//	System.out.println(formattedDate);
			System.out.println(formattedDate2);
			//int i = jdbcTemplate.update("insert into dc_trade values(null, ?,?,?,null);", new Object[] {wallet.getWid(),amount,formattedDate});
			int i = TradeDAO.createTrade(wallet.getWid(), amount, formattedDate2, "充值", jdbcTemplate);
			System.out.println(i);
			if(i>0) {
				int j = jdbcTemplate.update("update dc_wallet set amount = amount + ? where wid=?;", new Object[] {amount,wallet.getWid()});
				if(j>0) {
					return 1;
				}
			}
	
		}catch(Exception e) {
			return -1;
		}
		
		return 0;
	}
	/**
	 * 通过uid获取钱包的信息
	 * @param uid 用户钱包的的uid
	 * @param jdbcTemplate Spring对象
	 * @return
	 */
	public static dc_wallet getWalletByUid(int uid,JdbcTemplate jdbcTemplate) {
		RowMapper<dc_wallet> wallet_mapper = new BeanPropertyRowMapper<dc_wallet>(dc_wallet.class);
		dc_wallet wallet = null;
		try {
			
			wallet = jdbcTemplate.queryForObject("select * from dc_wallet where uid=?;", wallet_mapper, uid);
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return wallet;
	}
	/**
	 * 通过wid获取钱包的信息
	 * @param wid 用户钱包的的wid
	 * @param jdbcTemplate Spring对象
	 * @return
	 */
	public static dc_wallet getWalletByWid(int wid,JdbcTemplate jdbcTemplate) {
		RowMapper<dc_wallet> wallet_mapper = new BeanPropertyRowMapper<dc_wallet>(dc_wallet.class);
		dc_wallet wallet = null;
		try {
			
			wallet = jdbcTemplate.queryForObject("select * from dc_wallet where wid=?;", wallet_mapper, wid);
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return wallet;
	}
	/**
	 * 通过itcode获取钱包的信息
	 * @param itcode 用户钱包的的itcode
	 * @param jdbcTemplate Spring对象
	 * @return
	 */
	public static dc_wallet getWalletByItcode(String itcode,JdbcTemplate jdbcTemplate) {
		int uid=UserDAO.getUserByItcode(itcode, jdbcTemplate).getUid();
		dc_wallet wallet =WalletDAO.getWalletByUid(uid, jdbcTemplate);
		return wallet;
	}
	/**
	 * 通过uid来初始化钱包
	 * @param uid 用户的uid 
	 * @param jdbcTemplate Spring对象
	 * @return
	 */
	public static int initWalletById(int uid,JdbcTemplate jdbcTemplate) {
		int i=0;
		try {
			i=jdbcTemplate.update("insert into dc_wallet values(null,?,1000);",uid);
			if(i>0)
				return 1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}
	/**
	 * 通过itcode来初始化钱包
	 * @param itcode 用户的itcode 
	 * @param jdbcTemplate Spring对象
	 * @return
	 */
	public static int initWalletByItcode(String itcode,JdbcTemplate jdbcTemplate) {
		dc_user user=UserDAO.getUserByItcode(itcode, jdbcTemplate);	
		return WalletDAO.initWalletById(user.getUid(), jdbcTemplate);
	}
	/**
	 * 显示所有的钱包的信息
	 * @param jdbcTemplate
	 * @return 返回一个钱包信息的wallet
	 */
	public static List<dc_wallet> getAllWallets(JdbcTemplate jdbcTemplate) {
		RowMapper<dc_wallet> walletMapper=new BeanPropertyRowMapper<dc_wallet>(dc_wallet.class);
		List<dc_wallet> wallets=null;
		try {
			wallets=jdbcTemplate.query("select * from dc_wallet;",walletMapper);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return wallets;
	}
	/**
	 * 给用户的账户添加增加的红包
	 * @param wid 用户的wid
	 * @param number 红包的金额
	 * @param jdbcTemplate Spring对象
	 * @return 返回1表示添加成功，0表示添加失败
	 */
	public static int walletAdd(int wid,int number,JdbcTemplate jdbcTemplate)
	{
		try {
	
				int j = jdbcTemplate.update("update dc_wallet set amount = amount + ? where wid=?;", new Object[] {number,wid});
				if(j>0) {
					return 1;
				}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}
	/**
	 * 给用户的账户添加减少的钱数
	 * @param wid 用户的wid
	 * @param number 减少的金额
	 * @param jdbcTemplate Spring对象
	 * @return 返回1表示添加成功，0表示添加失败
	 */
	public static int walletCut(int wid,int number,JdbcTemplate jdbcTemplate)
	{
		try {
	
				int j = jdbcTemplate.update("update dc_wallet set amount = amount - ? where wid=?;", new Object[] {number,wid});
				if(j>0) {
					return 1;
				}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

}
