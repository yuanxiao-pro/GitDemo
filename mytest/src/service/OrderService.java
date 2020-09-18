package service;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.OrderMapper;
import model.Detial;
import model.Goods;
import model.Order;

@Service
public class OrderService {

	@Autowired
	OrderMapper orderMapper;
	
	public void insertIntoDB(Order order) {
		orderMapper.insertIntoDB(order);
	}
	
	public void updateStatusById(int orderId,String status) {
		orderMapper.updateStatusById(orderId, status);
	}
	
	public void insertIntoDetial(Detial detial) {
		orderMapper.insertIntoDetial(detial);
	}
	
	public PageInfo<Order> selectByPage(Integer nowPage){
		PageHelper.startPage(nowPage, 10);//当前页向后10页
		List<Order> myList = orderMapper.selectOrders();
		
		if(myList == null ||myList.size()==0) {
			System.out.println("list is null");
		}
		
		PageInfo<Order> pageInfo = new PageInfo<Order>(myList);//这个list是结果集
		System.out.println(pageInfo);
		return pageInfo;
		
	}
	
	public List<HashMap> caculate() { //分类计算,别一个一个写(传flag)
		
		int dailyAim = 25000;
		int monthAim = 250000*3;
		int silgeAim = 25000/4;
		String result = "0"; //百分数
		//存放单个数据记录
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		//封装单个记录map
		List<HashMap<String, Object>> dataList = new ArrayList<HashMap<String,Object>>();
		//存放要返回的值
		HashMap<String, List>resultMap = new HashMap<String, List>();		
		List<HashMap> resultList = new ArrayList<HashMap>();
		
		
		Date date = new Date();
	    SimpleDateFormat sdf1 = new SimpleDateFormat ("yyyy.MM.dd"); //计算日
	    String time1 = sdf1.format(date);
	    SimpleDateFormat sdf2 = new SimpleDateFormat ("yyyy.MM"); //计算日
	    String time2 = sdf2.format(date);
	    
	    Integer dailyMoney = orderMapper.sumMoneyByTime(time1);
	    Integer monthlyMoney = orderMapper.sumMoneyByTime(time2);
	    
	    if(dailyMoney == null) {
	    	dailyMoney = 0;
	    }else if(monthlyMoney == null) {
	    	monthlyMoney = 0;
	    	
	    }
	    
	    System.out.println("dailyMoney"+dailyMoney+"-"+"monthlyMoney"+monthlyMoney);
	    
	    if(dailyMoney != null || monthlyMoney != null) {
	    	
	    	//计算月销售额
			if(monthlyMoney > monthAim) {
				result = "100";
			}else {
				NumberFormat numberFormat = NumberFormat.getInstance();
				numberFormat.setMaximumFractionDigits(2);
				result = 
				numberFormat.format((float)monthlyMoney / (float)monthAim * 100);
			}
			map.put("monthlymoney", monthlyMoney);
			map.put("monthlyprecent", result);
			dataList.add(map);
			resultMap.put("monthlyRes", dataList);//存入结果集
			resultList.add(resultMap);
	    }
	    	
	    	//计算日销售额
		    if(dailyMoney > dailyAim) {
				result = "100";
			}else {
				NumberFormat numberFormat = NumberFormat.getInstance();
				numberFormat.setMaximumFractionDigits(2);
				result = 
				numberFormat.format((float)dailyMoney / (float)dailyAim * 100);
				
			}
		    map.put("dailymoney", dailyMoney);
			map.put("dailyprecent", result);
			dataList.add(map);
			resultMap.put("dailyRes", dataList);//存入结果集
			
			System.out.println("dailyRes "+dataList.get(0).get("money"));
			
			resultList.add(resultMap);
			/********************************************************************************/
			
			
		/********************************************************************************/
		
	    System.out.println(resultList.size());
	    
	    System.out.println(resultList.get(0).get("dailyRes"));
	    
		//按类计算
		
		
		
		return resultList;
		
	 }
	
}
