package com.dcone.dtss.model;
/**
 * 
 * @author 233
 *
 */
public class gift_record {
	int rid;//打赏记录id
	int pid;//打赏节目的id
	int uid;//用户的id
	int gift_number;//打赏的金额
	String gift_time;//打赏的时间
	public gift_record() {

	}
	@Override
	public String toString() {
		return "gift_record [rid=" + rid + ", pid=" + pid + ", uid=" + uid + ", gift_number=" + gift_number
				+ ", gift_time=" + gift_time + "]";
	}
	public gift_record(int rid, int pid, int uid, int gift_number, String gift_time) {
		super();
		this.rid = rid;
		this.pid = pid;
		this.uid = uid;
		this.gift_number = gift_number;
		this.gift_time = gift_time;
	}

	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getGift_number() {
		return gift_number;
	}
	public void setGift_number(int gift_number) {
		this.gift_number = gift_number;
	}
	public String getGift_time() {
		return gift_time;
	}
	public void setGift_time(String gift_time) {
		this.gift_time = gift_time;
	}
}
