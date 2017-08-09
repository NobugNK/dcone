package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dcone.dtss.model.menu_list;
/**
 * 
 * @author ymk
 *
 */
public class MenuListDAO {
	
	/**
	 * 在列表中添加一个节目
	 * @param play_name 节目的名字
	 * @param play_order 节目的顺序
	 * @param jdbcTemplate Spring对象
	 * @return 返回1表示添加成功，返回0表示添加失败
	 */
	public static int menulistAdd(String play_name,int play_order,JdbcTemplate jdbcTemplate){
		
		return 0;
	}
	/**
	 * 通过节目的id获取节目
	 * @param pid 节目的id
	 * @param jdbcTemplate Spring对象
	 * @return 返回一个menu_list对象
	 */
	public static menu_list getPlayById(int pid,JdbcTemplate jdbcTemplate) {
		return null;
	}
	/**
	 * 通过节目的名字获取节目
	 * @param play_name 节目的名字
	 * @param jdbcTemplate Spring对象
	 * @return 返回一个menu_list对象
	 */
	public static menu_list getPlayByName(String play_name,JdbcTemplate jdbcTemplate) {
		return null;
	}
	/**
	 * 获取所有的节目信息
	 * @param jdbcTemplate
	 * @return 返回节目信息的一个List
	 */
	public static List<menu_list> getAllPlays(JdbcTemplate jdbcTemplate){
		return null;
	}
	/**
	 * 更改节目的顺序
	 * @param pid 节目的id
	 * @param order 节目的顺序
	 * @param jdbcTemplate
	 * @return int 1表示成功，0表示失败
	 */
	public static int updatePlayOrder(int pid,int order,JdbcTemplate jdbcTemplate) {
		return 0;
	}
}
