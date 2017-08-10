package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.dc_user;
import com.dcone.dtss.model.dc_user_wallet;

public class UserWalletDAO {
	/**
	 * 通过用户访问视图
	 * @param user 传入用户
	 * @param jdbcTemplate Spring对象
	 * @return 返回一个用户的账户信息
	 */
	public static dc_user_wallet getWallInfoByUser(dc_user user,JdbcTemplate jdbcTemplate) {
		dc_user_wallet userwallet=null;
		RowMapper<dc_user_wallet> userwallet_mapper = new BeanPropertyRowMapper<dc_user_wallet>(dc_user_wallet.class);
		try {
			userwallet=jdbcTemplate.queryForObject("select * from dc_user_wallet where uid=? ;", userwallet_mapper,user.getUid());
		} catch (Exception e) {
			// TODO: handle exception
		}
		return userwallet;
	}
	/**
	 * 通过uid访问视图
	 * @param uid
	 * @param jdbcTemplate
	 * @return 返回一个用户的账户信息
	 */
	public static dc_user_wallet getWallInfoByUid(int uid,JdbcTemplate jdbcTemplate) {
		dc_user user = UserDAO.getUserByUid(uid,jdbcTemplate);
		return getWallInfoByUser(user,jdbcTemplate);
	}
	/**
	 * 通过itcode访问视图
	 * @param itcode
	 * @param jdbcTemplate Spring对象
	 * @return 返回一个用户的账户信息
	 */
	public static dc_user_wallet getWallInfoByItcode(String itcode,JdbcTemplate jdbcTemplate) {
		dc_user user = UserDAO.getUserByItcode(itcode,jdbcTemplate);
		return getWallInfoByUser(user,jdbcTemplate);
	}
	/**
	 * 查看所有用户的账户信息
	 * @param jdbcTemplate Spring对象
	 * @return 返回所有用户的账户信息的一个列表
	 */
	public static List<dc_user_wallet> getAllWallInfoByUser(JdbcTemplate jdbcTemplate) {
		List<dc_user_wallet> userwallets=null;
		RowMapper<dc_user_wallet> userwallet_mapper = new BeanPropertyRowMapper<dc_user_wallet>(dc_user_wallet.class);
		try {
			userwallets=jdbcTemplate.query("select * from dc_user_wallet;", userwallet_mapper);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return userwallets;
	}
}
