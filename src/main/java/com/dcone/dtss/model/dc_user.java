package com.dcone.dtss.model;

public class dc_user {
	int uid;
	String itcode;
	String username;
	int islocked;
	int isOnthescene;
	public dc_user(int uid, String itcode, String username, int islocked, int isOnthescene) {
		super();
		this.uid = uid;
		this.itcode = itcode;
		this.username = username;
		this.islocked = islocked;
		this.isOnthescene = isOnthescene;
	}
	public int getIslocked() {
		return islocked;
	}
	public void setIslocked(int islocked) {
		this.islocked = islocked;
	}
	public int getIsOnthescene() {
		return isOnthescene;
	}
	public void setIsOnthescene(int isOnthescene) {
		this.isOnthescene = isOnthescene;
	}
	public dc_user() {}
	@Override
	public String toString() {
		return "dc_user [uid=" + uid + ", itcode=" + itcode + ", username=" + username + ", islocked=" + islocked
				+ ", isOnthescene=" + isOnthescene + "]";
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getItcode() {
		return itcode;
	}
	public void setItcode(String itcode) {
		this.itcode = itcode;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
