package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.CartMapper;
import model.Cart;

@Service
public class CartService {
	@Autowired
	CartMapper cartMapper;
	
	public List<Cart>selectByUid(int uid){
		return cartMapper.selectByUid(uid);
	}
	
	public void deleteById(int goodId,int userId) {
		cartMapper.deleteById(goodId, userId);
	}
	
	public void minNumber(Cart cart) {
		cartMapper.minNumber(cart);
	}
	
	public void addNumber(Cart cart) {
		cartMapper.addNumber(cart);
	}
	
	//处理订单操作   未支付
	/*
	 * public double sum(int userId) {
	 * 
	 * // List<HashMap<String, String>>list = cartMapper.sumPrice(userId);
	 * System.out.println("money "+cartMapper.sumPrice(userId)); return
	 * cartMapper.sumPrice(userId); }
	 */
	public void deleteByUserId(int id) {
		cartMapper.deleteByUserId(id);
	}
	
	public void insertIntoDB(int uid,int gid,int num) {
		cartMapper.insertIntoDB(uid, gid, num);
	}
	
	public List<Cart> selectById(int uid,int gid){
		return cartMapper.selectById(uid, gid);
	}
	
	public void updateGoodNumber(int uid,int gid,int num) {
		cartMapper.updateById(uid, gid, num);
	}
	
	public List<Cart> selectAll(int uid){
		return cartMapper.selectAll(uid);
	}
	
}
