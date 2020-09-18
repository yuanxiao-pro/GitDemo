package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Cart;
import service.CartService;
import service.UserService;

@Controller
public class CartController {
	@Autowired
	CartService cartService;
	UserService userService;

	@RequestMapping("/loadCart.do")
	@ResponseBody
	public ModelAndView loadCart(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		String username = request.getParameter("username");

		System.out.println("username ---> " + username);

		if (username != null && username != "") {
			int uid = Integer.parseInt(username); // 转成int类型
			List<Cart> list = cartService.selectByUid(uid);

			/*
			 * if(list !=null) {
			 * System.out.println("cart test : "+cartService.selectByUid(uid).get(0).getList
			 * ().get(0).getGoodName());
			 * System.out.println("size : "+cartService.selectByUid(uid).size()); }
			 */
			request.getSession().setAttribute("username", username);	
			mav.addObject("list", list);
			mav.setViewName("shoppingcart.jsp");

		}
		return mav;
	}

	@RequestMapping("/deleteById.do")
	@ResponseBody
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		String goodId = request.getParameter("goodId");
		String userId = request.getParameter("userId");
		int status = 0;

		int gid = 0;
		int uid = 0;
		System.out.println("delete test " + goodId + "-" + userId);

		if (goodId != null && goodId != "" && userId != null && userId != "") {
			PrintWriter out;
			status = 1;
			// 删除
			// 先转成int类型

			gid = Integer.parseInt(goodId);
			uid = Integer.parseInt(userId);

			cartService.deleteById(gid, uid);

		}
		mav.addObject("username", userId);
		mav.setViewName("loadCart.do?username=" + userId);
		return mav;
	}

	@RequestMapping("/loadCartOnIndex.do")
	@ResponseBody
	public ModelAndView loadCartOnIndex(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("开始加载购物车...");
		ModelAndView mav = new ModelAndView();
		String username = request.getParameter("username");

		System.out.println("username ---> " + username);

		if (username != null && username != "") {
			int uid = Integer.parseInt(username); // 转成int类型
			List<Cart> list = cartService.selectByUid(uid);
			System.out.println("list size is " + list.size());
			mav.addObject("list", list);
			mav.setViewName("index.jsp");

		}
		return mav;
	}

	@RequestMapping("/updateNumber.do")
	@ResponseBody
	public ModelAndView minNumber(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("开始更新...");
		response.setCharacterEncoding("UTF-8");

		ModelAndView mav = new ModelAndView();
		String number = request.getParameter("number");
		String uid = request.getParameter("userId");
		String goodId = request.getParameter("goodId");
		String flag = request.getParameter("flag");
		Cart cart = new Cart();

		if (number != null && number != "" && uid != null && uid != "" && goodId != null && goodId != "") {
			if (flag == "0") {
				int num = Integer.parseInt(number);
				int gid = Integer.parseInt(goodId);
				int userid = Integer.parseInt(uid);

				cart.setGoodId(gid);
				cart.setGoodNumber(num);
				cart.setUserId(userid);

				cartService.minNumber(cart);

				mav.setViewName("loadCart.do?username=" + uid);	
			} else if (flag == "1") {
				int num = Integer.parseInt(number);
				int gid = Integer.parseInt(goodId);
				int userid = Integer.parseInt(uid);

				cart.setGoodId(gid);
				cart.setGoodNumber(num);
				cart.setUserId(userid);

				cartService.addNumber(cart);

				mav.setViewName("loadCart.do?username=" + uid);
			}
		}else {
			System.out.println("接受参数失败...");
		}

		System.out.println("test " + number + "-" + uid + "-" + goodId);

		

		return mav;

	}
	
	@RequestMapping("/loadCartOnCheckout.do")
	@ResponseBody
	public ModelAndView loadCartOnCheckout(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("开始加载购物车...");
		ModelAndView mav = new ModelAndView();
		String username = request.getParameter("username");

		System.out.println("username ---> " + username);

		if (username != null && username != "") {
			int uid = Integer.parseInt(username); // 转成int类型
			List<Cart> list = cartService.selectByUid(uid);
			System.out.println("list size is " + list.size());
			
			//设置session
			request.getSession().setAttribute("userId", username);
			System.out.println("loadCartOnCheckout"+request.getSession().getAttribute("userId"));
			mav.addObject("list", list);
			mav.setViewName("checkout.jsp");

		}
		return mav;
	}

	/*
	 * @RequestMapping("/deleteByUserId.do")
	 * 
	 * @ResponseBody public void deleteByUserId (HttpServletRequest request,
	 * HttpServletResponse response) {
	 * 
	 * 
	 * 
	 * }
	 */
	
}