package model;

import org.springframework.stereotype.Component;

@Component
public class Discribe {
	
	private int disId;
	private int userId;
	private int goodId;
	private String disText;
	
	public int getDisId() {
		return disId;
	}
	public void setDisId(int disId) {
		this.disId = disId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public String getDisText() {
		return disText;
	}
	public void setDisText(String disText) {
		this.disText = disText;
	}
	
	
	
}
