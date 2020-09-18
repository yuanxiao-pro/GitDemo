package model;

import java.util.List;

public class MyPageInfo<T> {

	List<T> list;
	public MyPageInfo(List<T> list) {
		this.list = list;
	}
	
	int pages;
	
	public void setPages(int pages) {
		this.pages = pages;
	}
	
}
