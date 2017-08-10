package com.dcone.dtss.model;

public class gift_result {
	int gid;//节目的打赏结果的id
	int pid;//节目的id
	int volume;//节目打赏的结果的金额，类似于余额
	public gift_result(int gid, int pid, int volume) {
		super();
		this.gid = gid;
		this.pid = pid;
		this.volume = volume;
	}
	public gift_result() {
	
	}
	@Override
	public String toString() {
		return "gift_result [gid=" + gid + ", pid=" + pid + ", volume=" + volume + "]";
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
	
}
