package com.dcone.dtss.model;

public class lucky_record {

	int lrid;//记录id
	int uid;//用户id
	int lr_amount;//金额
	String lr_time;//时间
	
	public lucky_record(int lrid, int uid, int lr_amount, String lr_time) {
		super();
		this.lrid = lrid;
		this.uid = uid;
		this.lr_amount = lr_amount;
		this.lr_time = lr_time;
	}
	@Override
	public String toString() {
		return "gift_record [lrid=" + lrid + ",uid=" + uid + ", lr_amount=" + lr_amount
				+ ", lr_time=" + lr_time + "]";
	}
	public int getLRid() {
		return lrid;
	}
	public void setLRid(int lrid) {
		this.lrid = lrid;
	}
	public int geLramount() {
		return lr_amount;
	}
	public void setLrmount(int lramount) {
		this.lr_amount =lramount;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getLr_time() {
		return lr_time;
	}
	public void setLr_time(String lr_time) {
		this.lr_time = lr_time;
	}
}
