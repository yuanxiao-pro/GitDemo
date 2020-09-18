package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Admin;
import model.Advert;
import model.Goods;
import model.User;
import service.AdminService;
import service.AdvertService;
import service.LoadService;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private LoadService loadService;
	@Autowired
	AdminService adminService;
//	static LoadController loadController;
	
	@Autowired
	AdvertService advertService;

	@RequestMapping("/login.do")
	@ResponseBody
	public ModelAndView userLoginCheck(HttpServletRequest request,
			
			HttpServletResponse response) {

		System.out.println("进入该方法");
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		System.out.println("request.getParameter   " + username);
		System.out.println("request.getParameter   " + password);

		Boolean result = checkLogin(username, password);
//		Map<String, List> map = new HashMap<>();
		
		ModelAndView mav = new ModelAndView();
		
		if(username!=null&&username.length()>0) {
			int aid = Integer.parseInt(username);
			List<Admin>listAdmin = adminService.selectAdminById(aid);
			if(listAdmin!=null && listAdmin.size()>0) {
				//存在
				request.getSession().setAttribute("username",username);
				String sessionId = request.getSession().getId();
				Cookie cookie = new Cookie("JSESSIONID", sessionId);
				cookie.setMaxAge(60*60*24*7);
				response.addCookie(cookie);
				mav.setViewName("pages-blank.html");
				return mav;
			}	
		}
		
		if (result) {
			request.getSession().setAttribute("username",username);
			System.out.println(request.getSession().getAttribute("username"));
			
			String sessionId = request.getSession().getId();
			//
			Cookie cookie = new Cookie("JSESSIONID", sessionId);
			cookie.setMaxAge(60*60*24*7);
			response.addCookie(cookie);
			
			Map<String,List> map = userService.selectAdvertLimit();
			
			mav.addObject("showAdvert", map); //返回一个map
			mav.setViewName("index.jsp");
		
		}else {
			mav.setViewName("login.html");
		}
		return mav;
	}
	
	

	public boolean checkLogin(String username, String password) {
		if (userService.userLogin(username, password) == null) {
			System.out.println("无此用户");
			return false;
		} else {
			return true;
		}
	}

	@ResponseBody
	@Transactional
	@RequestMapping("/checkUsername.do")
	public Map checkUsername(HttpServletRequest request) {
		System.out.println("进入该方法");
//    	System.out.println(request.getSession().getAttribute("username"));

		String neckname = request.getParameter("neckname");
		String password = request.getParameter("password");
		String confirmPwd = request.getParameter("confirmPwd");
		String realname = request.getParameter("realname");
		String usercredit = request.getParameter("usercredit");
		String phone = request.getParameter("phone");
		
		//根据这些找到相应的省市区,拼接成地址
		String provinceCode = request.getParameter("province");
		String cityCode = request.getParameter("city");
		String areaCode = request.getParameter("area");
		
		System.out.println(provinceCode+"-"+cityCode+"-"+areaCode);
		
		String province="";
		String city="";
		String area="";
		
		List<HashMap<String, String>>plist = 
		loadService.selectProvinceByCode(provinceCode);
		
		List<HashMap<String, String>>clist = 
		loadService.selectCityByCodeToDB(cityCode);
		
		List<HashMap<String, String>>alist = 
		loadService.selectAreaByCodeToDB(areaCode);
		
		if(plist==null||clist==null||alist==null) {
			System.out.println("the locality has a null");
		}
		
		System.out.println("size + "+clist.size());
		
		province = plist.get(0).get("name");
		city = clist.get(0).get("name");	
		area = alist.get(0).get("name");
		
		String locality = province+city+area;//拼接
		
		Random r = new Random();
		r.nextInt(999999);// 产生从0-1的随机数
		String uid = String.valueOf((int) r.nextInt(999999));

		User user = new User();
		user.setRealName(realname);
		user.setUserCredit(usercredit);
		user.setUserName(neckname);
		user.setUserPhone(phone);
		user.setUserPwd(password);
		user.setUserUid(uid);
		
		
		System.out.println("request.getParameter   " + neckname);
		System.out.println("request.getParameter   " + password);
		System.out.println("request.getParameter   " + confirmPwd);
		System.out.println("request.getParameter   " + realname);
		System.out.println("request.getParameter   " + usercredit);
		System.out.println("request.getParameter   " + phone);
		System.out.println("request.getParameter   " + uid);
		
		System.out.println("request.getParameter   " + province);
		System.out.println("request.getParameter   " + city);
		System.out.println("request.getParameter   " + area);

		Map<String, Object> map = new HashMap<>();

		if (!userService.checkUsername(neckname).isEmpty()) {
			map.put("code", 1);
		} else if (!password.equals(confirmPwd)) {
			map.put("code", 2);
		} else {
			userService.add(user);

			System.out.println("test getter : " + locality);
			System.out.println(uid);
//    		System.out.println();
			if (locality != null && uid != null && loadService != null && locality != null) {
				loadService.addToDB(locality, uid);//保存进数据库

			} else {
				System.out.println("getter is null");
			}
			map.put("code", 0);
		}

		return map;
	}

	@RequestMapping("selectAllUser.do")
	public ModelAndView selectAll() {
		ModelAndView mav = new ModelAndView();
		List<User> list = userService.selectAll();
		System.out.println(list.size());

//		list.removeAll(Collections.singleton(null));

		System.out.println("list : " + list.get(0));

		/*
		 * for(int i=0;i<list.size();i++) {
		 * System.out.println("list forEach : "+list.get(i)); }
		 */

		if (list != null && !list.isEmpty()) {
			mav.addObject("list", list);
			mav.setViewName("gridproducts.jsp");
		} else { // gridproducts
			System.out.println("good list is null");
		}
		return mav;
	}

	public ModelAndView saveSession(String username, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		request.getSession().setAttribute("username", username);
		mav.setViewName("index.jsp");
		return mav;
	}

	
	
	
}
