package model;

import org.springframework.stereotype.Component;

@Component
public class Admin {
	private int adminId;
	private int adminPwd;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public int getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(int adminPwd) {
		this.adminPwd = adminPwd;
	}
	
	
	
}
