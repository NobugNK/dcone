package com.dcone.dtss.DAO;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

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
	 * @param department 节目的单位
	 * @param jdbcTemplate Spring对象
	 * @return 返回1表示添加成功，返回0表示添加失败
	 */
	public static int menulistAdd(String play_name,int play_order,String department,JdbcTemplate jdbcTemplate){
		int r=0;
		int i=0;
		try
		{
			r=jdbcTemplate.update("insert into menu_list values (null,?,?,?);",new Object[] {play_name,play_order,department});
			menu_list temp=MenuListDAO.getPlayByName(play_name, jdbcTemplate);
			i=GiftResultDAO.initGiftResultByPid(temp.getPid(), jdbcTemplate);
			if(r*i>0)
				return 1;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}
	/**
	 * 通过节目的id获取节目
	 * @param pid 节目的id
	 * @param jdbcTemplate Spring对象
	 * @return 返回一个menu_list对象
	 */
	public static menu_list getPlayById(int pid,JdbcTemplate jdbcTemplate) {
		menu_list menu=null;
		RowMapper<menu_list> menu_list_mapper = new BeanPropertyRowMapper<menu_list>(menu_list.class);
		try {
			menu=jdbcTemplate.queryForObject("select * from menu_list where pid=?;", menu_list_mapper,pid);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return menu;
	}
	/**
	 * 通过节目的名字获取节目
	 * @param play_name 节目的名字
	 * @param jdbcTemplate Spring对象
	 * @return 返回一个menu_list对象
	 */
	public static menu_list getPlayByName(String play_name,JdbcTemplate jdbcTemplate) {
		menu_list menu=null;
		RowMapper<menu_list> menu_list_mapper = new BeanPropertyRowMapper<menu_list>(menu_list.class);
		try {
			menu=jdbcTemplate.queryForObject("select * from menu_list where play_name=?;", menu_list_mapper,play_name);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return menu;
	}
	/**
	 * 获取所有的节目信息
	 * @param jdbcTemplate
	 * @return 返回节目信息的一个List
	 */
	public static List<menu_list> getAllPlays(JdbcTemplate jdbcTemplate){
		List<menu_list> menus=null;
		RowMapper<menu_list> menu_list_mapper = new BeanPropertyRowMapper<menu_list>(menu_list.class);
		try {
			menus=jdbcTemplate.query("select * from menu_list order by play_order;", menu_list_mapper);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return menus;
	}
	/**
	 * 更改节目的顺序
	 * @param pid 节目的id
	 * @param order 节目的顺序
	 * @param jdbcTemplate
	 * @return int 1表示成功，0表示失败
	 */
	public static int updatePlayOrder(int pid,int order,JdbcTemplate jdbcTemplate) {
		int r=0;
		try {
			List<menu_list> menus=MenuListDAO.getAllPlays(jdbcTemplate);
			
			for(menu_list temp:menus)
			{
				if(temp.getPid()!=pid)
				{
					if(temp.getPlay_order()==order)
						return 0;
				}
			}
			r=jdbcTemplate.update("update menu_list set play_order=? where pid=?;",new Object[] {order,pid});
		} catch (Exception e) {
			// TODO: handle exception
		}
		return r;
	}
}
