package model;

import org.springframework.stereotype.Component;

@Component
public class Detial {

	private int detialId;
	private int detialNumber;
	private int orderId;
	private int goodId;
	private String locality;
	private String recipientName;
	private String recipientPhone;
	private String goodDiscribe;
	
	
	public String getRecipientName() {
		return recipientName;
	}
	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}
	public String getRecipientPhone() {
		return recipientPhone;
	}
	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}
	public int getDetialId() {
		return detialId;
	}
	public void setDetialId(int detialId) {
		this.detialId = detialId;
	}
	public int getDetialNumber() {
		return detialNumber;
	}
	public void setDetialNumber(int detialNumber) {
		this.detialNumber = detialNumber;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getGoodDiscribe() {
		return goodDiscribe;
	}
	public void setGoodDiscribe(String goodDiscribe) {
		this.goodDiscribe = goodDiscribe;
	}
	
	
	
}
