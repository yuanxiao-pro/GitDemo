package mapper;

import java.util.List;

import model.Detial;
import model.Goods;
import model.Order;

public interface OrderMapper {
	public void insertIntoDB(Order order);//½øÈëÎ´Ö§¸¶×´Ì¬
	
	public void updateStatusById(int orderId,String status);
	
	public void insertIntoDetial(Detial detial);
	
	public List<Order> selectOrders();
	
	public Integer sumMoneyByTime(String time);
	
	
	
}
