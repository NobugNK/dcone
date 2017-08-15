package com.dcone.dtss.DAO;


import java.util.Locale;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dcone.dtss.model.*;

public class UserDAO {

	/**
	 * 					通过一个itcode查询到用户
	 * @param itcode	传入一个员工号	
	 * @param jdbcTemplate Spring对象
	 * @return 			返回一个dc_user对象user
	 */
	public static dc_user getUserByItcode(String itcode,JdbcTemplate jdbcTemplate) {
		RowMapper<dc_user> user_mapper = new BeanPropertyRowMapper<dc_user>(dc_user.class);
		dc_user user = null;
		try {
			
			user = jdbcTemplate.queryForObject("select * from dc_user where itcode=?", user_mapper, itcode);
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return user;	
	}
	/**
	 * 					通过一个uid查询到用户
	 * @param uid		传入一个员工的id
	 * @param jdbcTemplate Spring对象
	 * @return			返回一个dc_user对象user
	 */
	public static dc_user getUserByUid(int uid,JdbcTemplate jdbcTemplate) {
		RowMapper<dc_user> user_mapper = new BeanPropertyRowMapper<dc_user>(dc_user.class);
		dc_user user = null;
		try {
			user=jdbcTemplate.queryForObject("select * from dc_user where uid=?", user_mapper, uid);
		} catch (Exception e) {
			// TODO: handle exception
		}	
		return user;
	}
	/**
	 *  				用于创建一个新的用户
	 * @param itcode	用户的员工号
	 * @param username	用户的姓名
	 * @param isOnthescene	用户是否在现场
	 * @param jdbcTemplate  Spring对象
	 * @return 返回1表示创建成功，返回0表示其他错误，返回-1表示用户信息错误
	 */
	public static int createUser(String itcode,String username,int isOnthescene,Locale locale,JdbcTemplate jdbcTemplate) {
		int i=0;
		try {
			 i = jdbcTemplate.update("insert into dc_user values(null, ?,?,0,?);", new Object[] {itcode,username,isOnthescene});
			 int j=0;
			 j=WalletDAO.initWalletByItcode(itcode, jdbcTemplate);
			 if(i * j>0)
			 return 1;
		} catch (Exception e) {
			return -1;
			// TODO: handle exception
		}	
		return 0;
//		int i=0;
//		if(jdbcTemplate==null)
//		{
//			return 233;
//		}
//		else
//			{
//			i = jdbcTemplate.update("insert into dc_user values(null, ?,?,0,?);", new Object[] {itcode,username,isOnthescene});
//			if(i>0)
//				return 1;
//		return 0;
//		}
	}
	
	/**
	 * 查看用户的信息是否存在
	 * @param itcode 传入用户的员工号
	 * @param username 传入用户的姓名
	 * @param jdbcTemplate Spring对象
	 * @return 返回true表示存在，返回false表示不存在
	 */
	public static boolean checkUserInfo(String itcode,String username,JdbcTemplate jdbcTemplate) {
		int i=0;
		try {
			i = jdbcTemplate.queryForInt("select count(*) from dc_user where itcode=? and username=?",new Object[] {itcode,username});
			if(i>0)
			{
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	/**
	 * @param uid 通过用户的id来锁定用户
	 * @param jdbcTemplate Spring对象
	 * @return 返回true表示设置成功，false表示失败
	 */
	public static boolean lockUserById(int uid,JdbcTemplate jdbcTemplate) {
		int i=0;
		try {
			 i = jdbcTemplate.update("update dc_user set islocked =1 where uid =?;", uid);
			if(i>0)
			 return true;
		} catch (Exception e) {
			return	false;
			// TODO: handle exception
		}	
		return false;
	}
	/**
	 * 解除用户的锁定
	 * @param uid 传入解除锁定的用户的uid
	 * @param jdbcTemplate Spring对象
	 * @return false表示解除失败，true表示解除成功
	 */
	public static boolean unlockUserById(int uid,JdbcTemplate jdbcTemplate)
	{
		int i=0;
		try {
			 i = jdbcTemplate.update("update dc_user set islocked =0 where uid =?;", uid);
			if(i>0)
			 return true;
		} catch (Exception e) {
			return	false;
			// TODO: handle exception
		}	
		return false;
	}
	
	/**
	 * 需要在数据库中加一行，islock,修改数据库，还得改model，完成用户锁定
	 * @param itcode 用户的itcode
	 * @param jdbcTemplate Spring对象
	 * @return
	 */
	public static boolean lockUserByItcode(String itcode,JdbcTemplate jdbcTemplate)
	{
		int i=0;
		try {
			 i = jdbcTemplate.update("update dc_user set islocked =1 where itcode =?;", itcode);
			if(i>0)
			 return true;
		} catch (Exception e) {
			return	false;
			// TODO: handle exception
		}	
		return false;
	}
	/**
	 * 判定一下用户是否被锁定
	 * @param uid 传入用户的uid
	 * @param jdbcTemplate Spring对象
	 * @return false表示未被锁定 ，true表示被锁定
	 */
	public static boolean isLock(int uid,JdbcTemplate jdbcTemplate)
	{
		int i=0;
		try {
			i = jdbcTemplate.queryForInt("select islocked from dc_user where uid= ?",uid);
			if(i>0)
			{
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	
	/**
	 * 查看用户是在场内还是场外
	 * @param uid 传入用户的uid
	 * @param jdbcTemplate Spring对象
	 * @return 返回true表示在场内，false表示不在场内
	 */
	public static boolean isOnthesceneById(int uid,JdbcTemplate jdbcTemplate)
	{
		int i=0;
		try {
			i = jdbcTemplate.queryForInt("select isOnthescene from dc_user where uid= ?",uid);
			if(i>0)
			{
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

}
