package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Advert;
import service.AdvertService;

@Controller
public class AdvertController {
	
	@Autowired
	AdvertService advertService;
	
	@RequestMapping(value = "/addToAdvertPage.do")
	@ResponseBody
	public ModelAndView addToPage(HttpServletRequest request,
			 HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		String goodId = request.getParameter("goodId");
		String context = request.getParameter("goodDiscribe");
		
		System.out.println(goodId+"-"+context);
		
		if( goodId != null && goodId != "" && context != null && context != "" ) {
			
			//转int
			int id = Integer.parseInt(goodId);
			advertService.addToPage(id, context); //写入数据库
			
			List<Advert>list = advertService.selectAdverts(); //重新查询
			
			mav.addObject("advertList", list);
			mav.setViewName("showadvert.jsp");
		}
		
		
		return mav;
	}
	
	@RequestMapping(value = "/selectAdvert.do")
	@ResponseBody
	public ModelAndView selectAdvert(HttpServletRequest request,
			 HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		List<Advert>list = advertService.selectAdverts();
		
		System.out.println(list.size());
		
		System.out.println(list.get(0).getAddContext());
		
		if(list != null && list.size()>0 ) {
			System.out.println("get the advert");
			mav.addObject("advertList", list);
			mav.setViewName("showadvert.jsp");
		}
		
		
		return mav;
	}
	
	
	
	
}
