package model;

import java.util.List;

public class Cart {
	private int cartId;
	private int goodId;
	private int goodNumber;
	private int userId;
	
	//Goods²¿·Ö
	private List<Goods> list;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public int getGoodNumber() {
		return goodNumber;
	}
	public void setGoodNumber(int goodNumber) {
		this.goodNumber = goodNumber;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public List<Goods> getList() {
		return list;
	}
	public void setList(List<Goods> list) {
		this.list = list;
	}
	
	
	
}
