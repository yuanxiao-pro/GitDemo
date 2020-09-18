package model;

import org.springframework.stereotype.Component;

@Component
public class Advert {

	private int addId;
	private int goodId;
	private String addContext;
	 
	
	
	public int getAddId() {
		return addId;
	}
	public void setAddId(int addId) {
		this.addId = addId;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public String getAddContext() {
		return addContext;
	}
	public void setAddContext(String addContext) {
		this.addContext = addContext;
	}
	
	
	
}
