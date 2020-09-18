package model;

import org.springframework.stereotype.Component;

@Component
public class Goods {
	private int goodId;
	private String goodName;
	private String goodPrice;
	private double goodDis;
	private String goodBrand;
	private String goodPic;
	private String goodDiscribe;
	private String goodStatus;
	private String goodAcount;
	private int goodSizeId;
	private int categoryId;					
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public String getGoodPrice() {
		return goodPrice;
	}
	public void setGoodPrice(String goodPrice) {
		this.goodPrice = goodPrice;
	}
	public double getGoodDis() {
		return goodDis;
	}
	public void setGoodDis(double goodDis) {
		this.goodDis = goodDis;
	}
	public String getGoodBrand() {
		return goodBrand;
	}
	public void setGoodBrand(String goodBrand) {
		this.goodBrand = goodBrand;
	}
	public String getGoodPic() {
		return goodPic;
	}
	public void setGoodPic(String goodPic) {
		this.goodPic = goodPic;
	}
	public String getGoodDiscribe() {
		return goodDiscribe;
	}
	public void setGoodDiscribe(String goodDiscribe) {
		this.goodDiscribe = goodDiscribe;
	}
	public String getGoodStatus() {
		return goodStatus;
	}
	public void setGoodStatus(String goodStatus) {
		this.goodStatus = goodStatus;
	}
	public String getGoodAcount() {
		return goodAcount;
	}
	public void setGoodAcount(String goodAcount) {
		this.goodAcount = goodAcount;
	}
	public int getGoodSizeId() {
		return goodSizeId;
	}
	public void setGoodSizeId(int goodSizeId) {
		this.goodSizeId = goodSizeId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	@Override
	public String toString() {
		return "Goods [goodId=" + goodId + ", goodName=" + goodName + ", goodPrice=" + goodPrice + ", goodDis="
				+ goodDis + ", goodBrand=" + goodBrand + ", goodPic=" + goodPic + ", goodDiscribe=" + goodDiscribe
				+ ", goodStatus=" + goodStatus + ", goodAcount=" + goodAcount + ", goodSizeId=" + goodSizeId
				+ ", categoryId=" + categoryId + "]";
	}
	
	
	
}
