package mapper;

import java.util.List;

import model.Cart;

public interface CartMapper {
	
	List<Cart> selectByUid(int uid);
	
	void deleteById(int goodId,int userId);
	
	void minNumber(Cart cart);
	
	void addNumber(Cart cart);
	
	void deleteByUserId(int id);
	
	
	void insertIntoDB(int uid,int gid,int num);
	/*
	 * double sumPrice(int uid);//ÇóºÍ
	 */	
	List<Cart>selectById(int uid,int gid);
		
	void updateById(int uid,int gid,int num);
	
	List<Cart> selectAll(int uid);
	
}
