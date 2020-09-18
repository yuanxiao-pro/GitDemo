package model;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Order {
	
	private int orderId;
	private String orderTime;
	private double orderMoney;
	private int userId;
	private String orderStatus;
	
	private Detial mydetial;
	
	
	
	
	public Detial getMydetial() {
		return mydetial;
	}
	public void setMydetial(Detial mydetial) {
		this.mydetial = mydetial;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public double getOrderMoney() {
		return orderMoney;
	}
	public void setOrderMoney(double orderMoney) {
		this.orderMoney = orderMoney;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	
	
	
	
	
}
