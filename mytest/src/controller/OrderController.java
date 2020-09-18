package controller;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import model.Goods;
import model.Order;
import service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	
	@RequestMapping(value="/selectOrders.do")
	@ResponseBody
	public ModelAndView selectOrders(Integer nowPage) {
		System.out.println("进入该方法");
		
		if(nowPage == null || nowPage <= 0) {
			System.out.println("nowPage is null");
 			nowPage = 1;
		}
 		
		ModelAndView mav = new ModelAndView();
		PageInfo<Order> info = orderService.selectByPage(nowPage);
		
		if (info != null) {
			mav.addObject("pageInfo", info);
			mav.setViewName("ordertable.jsp");
		} else {
			
			System.out.println("good list is null");
		
		}
		
		return mav;
	}
	
	@RequestMapping(value="/caculate.do")
	@ResponseBody
	public ModelAndView selectOrders(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("进入该方法");
		
		
		ModelAndView mav = new ModelAndView();
		HashMap<String, List>resultMap = new HashMap<String, List>();//存放要返回的值 String
		List<HashMap> resultList = new ArrayList<HashMap>();
		
		
		if(orderService.caculate()!=null && orderService.caculate().size()> 0) {
			System.out.println("get the result");
			resultList = orderService.caculate();//获取结果链表
		}
		
		
		mav.addObject("result",resultList); //返回页面
		mav.setViewName("statistics.jsp");
		
		return mav;
	}
	
	
	
}
