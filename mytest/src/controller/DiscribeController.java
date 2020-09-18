package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Discribe;
import model.Goods;
import service.DiscribeService;
import service.GoodService;

@Controller
public class DiscribeController {

	@Autowired
	DiscribeService discribeService;
	
	@Autowired
	GoodService goodService;
	
	 @RequestMapping(value="/loadDiscribe.do")
	 @ResponseBody
	 public ModelAndView loadDiscribe(HttpServletRequest request,
			 HttpServletResponse response) {
		 
		 System.out.println("评论加载中...");
		 
		 ModelAndView mav = new ModelAndView();
		 List<Discribe> list = new ArrayList<Discribe>();
		 //查出的数据放入mav
		 String goodId = request.getParameter("goodId");
		 
		 System.out.println("session : "+goodId);
		 
		 
		 
		 if(goodId!=null && goodId!="") {
			 int id = Integer.parseInt(goodId);
			 
			 list = discribeService.selectDis(id);
			 
			 
			 if(list!=null&&list.size()>0) {
				 System.out.println("list + "+list.size());
				 
				 mav.addObject("disList", list);
//				 mav.setViewName("selectByGoodId.do?goodId="+goodId);
				 
				 mav.setViewName("productdetails-fullwidth.jsp");
			 }else {
				 mav.setViewName("404page.html");
			 }			 
		 }else {
			 mav.setViewName("404page.html");
		 }
		  
		 return mav;
	 
	 }
	
	 @RequestMapping(value="/addDiscribe.do")
	 @ResponseBody
	 public ModelAndView addDiscribe(HttpServletRequest request,
			 HttpServletResponse response) {
		 ModelAndView mav = new ModelAndView();
		 System.out.println("评论保存中...");
		 String userId = request.getParameter("userId");
		 String goodId = request.getParameter("goodId");
		 String comment = request.getParameter("comment");
		 
		 System.out.println(userId+"-"+goodId+"-"+comment);
		 
		 if(goodId!=null && goodId!=""&&userId!=null && userId!=""
				 &&comment!=null && comment!="") {
			 //把id转为int
			 int uid = Integer.parseInt(userId);
			 int gid = Integer.parseInt(goodId);
			 //插入
			 discribeService.addDiscribe(uid, gid, comment);
			 
			 //重新查找商品
			 List<Goods> list = goodService.selectByGoodId(gid);
			 
			 mav.addObject("list",list);
			 mav.setViewName("selectByGoodId.do?goodId="+goodId);//跳转到评论
			 
		 }else {
			 mav.setViewName("404page.html");
		 }
		 
		 
		 return mav;
	 }
	 
}
