package com.dcone.dtss.model;

public class dc_wallet {
	int wid;
	int uid;
	int amount;
	public dc_wallet() {
	}
	public dc_wallet(int wid, int uid, int amount) {
		super();
		this.wid = wid;
		this.uid = uid;
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "dc_wallet [wid=" + wid + ", uid=" + uid + ", amount=" + amount + "]";
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
