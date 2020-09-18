package model;

import org.springframework.stereotype.Component;

@Component
public class User {
	private String userUid;
	private String userName;
	private String realName;
	private String userCredit;
	private String userPhone;
	private String userPwd;
	
	
	

	public String getUserUid() {
		return userUid;
	}
	public void setUserUid(String userUid) {
		this.userUid = userUid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getUserCredit() {
		return userCredit;
	}
	public void setUserCredit(String userCredit) {
		this.userCredit = userCredit;
	}
	
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	
	
}
