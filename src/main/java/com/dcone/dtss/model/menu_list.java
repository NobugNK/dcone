package com.dcone.dtss.model;

public class menu_list {
	int pid;//节目的id
	String play_name;//节目的名字
	int play_order;//节目的顺序
	String department;//节目的部门
	public menu_list(int pid, String play_name, int play_order, String department) {
		super();
		this.pid = pid;
		this.play_name = play_name;
		this.play_order = play_order;
		this.department = department;
	}
	public menu_list() {
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPlay_name() {
		return play_name;
	}
	public void setPlay_name(String play_name) {
		this.play_name = play_name;
	}
	public int getPlay_order() {
		return play_order;
	}
	public void setPlay_order(int play_order) {
		this.play_order = play_order;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	@Override
	public String toString() {
		return "menu_list [pid=" + pid + ", play_name=" + play_name + ", play_order=" + play_order + ", department="
				+ department + "]";
	}
	
}
