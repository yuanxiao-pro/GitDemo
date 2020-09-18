package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver;

import com.github.pagehelper.PageInfo;

import mapper.CategoryMapper;
import model.Cart;
import model.Detial;
import model.Goods;
import model.Order;
import net.sf.jsqlparser.expression.operators.relational.OldOracleJoinBinaryExpression;
import service.CartService;
import service.CategoryService;
import service.GoodService;
import service.LoadService;
import service.OrderService;



@Controller
//@RequestMapping(value="good")
public class GoodController {
	@Autowired
	GoodService goodService;
	@Autowired
	LoadService loadService;
	@Autowired
	CartService cartService;
	@Autowired
	OrderService orderService;
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/selectGoodByCategory.do")
	@ResponseBody
	public ModelAndView selectGoodByCategory(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("����÷���");
		ModelAndView mav = new ModelAndView();
		List<Goods> list = new ArrayList<Goods>();

		System.out.println(request.getParameter("category_id"));
		System.out.println(request.getParameter("goodName"));

		String id = request.getParameter("category_id");
		String goodName = request.getParameter("goodName");

		list = goodService.selectGoodByCategory(id, goodName);

		mav.addObject("list", list);
		mav.setViewName("/gridproducts.jsp");
		return mav;
	}

	@RequestMapping("/selectByPage.do")
	public ModelAndView selectByPage(Integer nowPage) {

		if (nowPage == null || nowPage <= 0) {
			nowPage = 1;
		}
		ModelAndView mav = new ModelAndView();
		// ��ҳ��ѯ���� �͵� userList.jsp��
		PageInfo<Goods> info = goodService.selectByPage(nowPage);// ����pageInfo��info����
		mav.addObject("pageInfo", info);
		mav.setViewName("gridproducts.jsp");
		return mav;
	}

	@RequestMapping(value = "/selectAll.do")
	@ResponseBody
	public ModelAndView selectAll() {
		ModelAndView mav = new ModelAndView();
		List<Goods> list = goodService.selectAll();
		System.out.println(list.size());

		System.out.println("list : " + list.get(0));

		if (list != null && !list.isEmpty() && list.get(0) != null) {
			mav.addObject("list", list);
			mav.setViewName("gridproducts.jsp");
		} else { // gridproducts
			System.out.println("good list is null");
		}
		return mav;
	}

	@RequestMapping("/select.do")
	public ModelAndView select() {
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, String>> list = goodService.select();
		mav.addObject("list", list);
		mav.setViewName("gridproducts.jsp");
		return mav;
	}

	@RequestMapping(value = "/selectByCategory.do")
	@ResponseBody
	public ModelAndView selectByCategory(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("����÷���");
		ModelAndView mav = new ModelAndView();
		List<Goods> list = new ArrayList<Goods>();

		System.out.println(request.getParameter("category_id"));

		String id = request.getParameter("category_id");

		list = goodService.selectByCategory(id);

		mav.addObject("list", list);
		mav.setViewName("/gridproducts.jsp");
		return mav;
	}

	// ����δ֧��״̬
	@RequestMapping(value = "/checkout.do")
	@ResponseBody
	public Map checkout(HttpServletRequest request, HttpServletResponse response) {

//		System.out.println(request.getSession().getAttribute("username"));

		System.out.println("����÷���");

		ModelAndView mav = new ModelAndView();
		List<Goods> list = new ArrayList<Goods>();

		/**
		 * ��ǰ���ٴ�һ��flag,��ʾ�Ƿ���֧��
		 * 
		 */

		String userId = request.getParameter("userId");// ����id���ҹ��ﳵ,�����
		String username = request.getParameter("username");// �ռ�������
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");// �����ַ
		String totalMoney = request.getParameter("totalMoney");
		String flag = request.getParameter("flag");

		String provinceCode = request.getParameter("province");
		String cityCode = request.getParameter("city");
		String areaCode = request.getParameter("area");

		System.out.println(
				"test info -" + userId + "-" + username + "-" + phone + "-" + address + "-" + totalMoney + "-" + flag);

		System.out.println(provinceCode + "-" + cityCode + "-" + areaCode);

		String province = "";
		String city = "";
		String area = "";

		List<HashMap<String, String>> plist = loadService.selectProvinceByCode(provinceCode);

		List<HashMap<String, String>> clist = loadService.selectCityByCodeToDB(cityCode);

		List<HashMap<String, String>> alist = loadService.selectAreaByCodeToDB(areaCode);

		if (plist == null || clist == null || alist == null || clist.size() == 0 || plist.size() == 0
				|| alist.size() == 0) {
			System.out.println("the locality has a null");
		}

		System.out.println("size + " + clist.size());

		province = plist.get(0).get("name");
		city = clist.get(0).get("name");
		area = alist.get(0).get("name");

		String locality = province + city + area;// ƴ��

		Order order = new Order();

		if (userId != null && userId != "" && username != null && username != "" && phone != null && phone != ""
				&& address != null && address != "" && locality != null && locality != "") {
			System.out.println();
			System.out.println("test uid is " + userId + "-" + Integer.valueOf(userId));
			System.out.println();
			// 1.�����ﳵ�����Ʒ��ֵ
//			double money = cartService.sum(Integer.valueOf(userId));
//			System.out.println(money);

			double money = Double.parseDouble(totalMoney);

			// 2.��ȡ��ǰʱ��
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd hh:mm:ss");
			System.out.println(sdf.format(date));
			String turnoverTime = sdf.format(date);
			// 3.����״̬
			String status = "δ֧��";

			// 4.����orderId
			Random r = new Random();
			int orderId = r.nextInt(999999);// ������0-1�������

			// �������ݿ�,��������״̬����Ϊδ֧��
			order.setOrderMoney(money);
			order.setOrderStatus(status);
			order.setOrderTime(turnoverTime);
			order.setUserId(Integer.parseInt(userId));
			order.setOrderId(orderId);

			orderService.insertIntoDB(order);// ���ɶ�����

			orderService.updateStatusById(orderId, status);// �ɹ����� //������д��detial����

			Detial detial = new Detial();
			detial.setRecipientPhone(phone);
			;
			detial.setRecipientName(username);
			detial.setLocality(locality);
			detial.setOrderId(orderId);

			orderService.insertIntoDetial(detial);// д��detial
			
		}

		Map<String, Object> map = new HashMap<>();
		map.put("code", 3);
//		mav.setViewName("index.jsp");
		return map;
	}

	
	
	 @RequestMapping(value="/payfor.do")
	 @ResponseBody
	  public Map payfor(HttpServletRequest request,
			  HttpServletResponse response) {
		 String id = request.getParameter("userId");
		 
		 Map<String, Object> map = new HashMap<>();
		 
		 if(id!=null&&id!="") {
			 int uid = Integer.parseInt(id);
			  
			//��յ�ͬʱ���goods���������
			 cartService.deleteByUserId(uid); 
			 
			 
			 System.out.println("��չ��ﳵ�ɹ�...");
			 
			 //��� -number
			 //��goodservice
			 
			 
			 
			 map.put("code",1);
		 }else {
			 map.put("code", 2);
		 }
		 return map;
	 }
	 
	 @RequestMapping(value="/selectByGoodId.do")
	 @ResponseBody
	 public ModelAndView selectByGoodId(HttpServletRequest request,HttpServletResponse response) {
		System.out.println("����÷���");
		ModelAndView mav = new ModelAndView();
		List<Goods> list = new ArrayList<Goods>();
		String goodId = request.getParameter("goodId");
		
		if(goodId!=null&&goodId!="") {
			
			int gid = Integer.parseInt(goodId);
			
			list = goodService.selectByGoodId(gid);

			mav.addObject("list", list);
			
			mav.setViewName("productdetails-fullwidth.jsp");
		}
		
		
		 return mav;
		 
		 
	 }
	 
	 
	 @RequestMapping(value="/selectCategoryName.do")
	 @ResponseBody
	 public ModelAndView selectCategoryName(HttpServletRequest request,
			 HttpServletResponse response) {
		System.out.println("����÷���");
		ModelAndView mav = new ModelAndView();
		List<Goods> list = new ArrayList<Goods>();
		
		String categoryId = request.getParameter("categoryId");
		String name = "";
		if(categoryId!=null&&categoryId!="") {
			int cid = Integer.parseInt(categoryId);
		
			name = categoryService.selectCategoryName(cid);
			
			
		}
		
		mav.addObject("categoryName", name);
		mav.setViewName("productdetails-fullwidth.jsp");
		
		return mav;
	 }
	 
	 @RequestMapping(value="/addToCart.do")
	 @ResponseBody
	 public ModelAndView addToCart(HttpServletRequest request,
			 HttpServletResponse response) {
		System.out.println("����÷���");
		//ֱ�������ݿ���д��OK
		String userId = request.getParameter("userId");
		String goodId = request.getParameter("goodId");
		String number = request.getParameter("number");
				
		Map<String ,Object> map = new HashMap<String, Object>();
		ModelAndView mav = new ModelAndView();
		List<Cart> list = new ArrayList<Cart>(); 
		
		System.out.println(userId+"-"+goodId+"-"+number);
		
		if(userId!=null&&userId!=""&&goodId!=null&&goodId!=""&&number!=null&&number!="") {
			//д�����ݿ�
			int uid = Integer.parseInt(userId);
			int gid = Integer.parseInt(goodId);
			int num = Integer.parseInt(number);
			
			//���ж�userId+goodId�ļ�¼�Ƿ����,���ھ��޸���Ʒ����,�����ھͲ���
			if(cartService.selectById(uid, gid) != null && cartService.selectById(uid, gid).size() >0 ) {
				//�޸�����
				cartService.updateGoodNumber(uid, gid, num);
				System.out.println("���޸�");
			}else {
				//charu
				//ִ��
				System.out.println("�Ѳ���");
				cartService.insertIntoDB(uid, gid, num);
			}
			
			list = cartService.selectByUid(uid);
//			list = cartService.selectAll(uid);
			
			mav.addObject("list",list);
			mav.setViewName("shoppingcart.jsp");
			
		}
		
		return mav;	
	 }
	 
	 	
	 
	 	@RequestMapping(value = "/selectGoodsAll.do")
		@ResponseBody
		public ModelAndView selectGoodsAll(Integer nowPage) {
	 		
	 		if(nowPage == null || nowPage <= 0) {
				System.out.println("nowPage is null");
	 			nowPage = 1;
			}
	 		
			ModelAndView mav = new ModelAndView();
			PageInfo<Goods> info = goodService.selectByPage(nowPage);
			
			if (info != null) {
				mav.addObject("pageInfo", info);
				mav.setViewName("table-basic.jsp");
			} else {
				
				System.out.println("good list is null");
			
			}
			return mav;
		}
	 	
	 	
	 
	 	@RequestMapping(value = "/updateByGoodId.do")
		@ResponseBody
		public ModelAndView deleteByGoodId(HttpServletRequest request,
			 HttpServletResponse response) {
	 		ModelAndView mav = new ModelAndView();
	 		List<Goods> list = goodService.selectAll();
	 		
	 		
	 		String flag = request.getParameter("flag");
	 		String id = request.getParameter("goodId");
	 		
	 		if( flag != null && flag != "" && id != null && id != "" ) {
	 			
	 			//ת��int
	 			int gid = Integer.parseInt(id);
	 			
	 			if(flag.equals("0")) {
		 			//ɾ��
		 			goodService.deleteGoodById(gid);
		 			
		 			mav.setViewName("selectGoodsAll.do");
		 			
		 			
		 		}else if(flag.equals("1")) {
		 			//�޸�
		 			//��תȥ�޸�ҳ��
		 			
		 			//�����
		 			list = goodService.selectByGoodId(gid);
		 			
		 			mav.addObject("list",list);
		 			mav.setViewName("update.jsp");
		 			
		 		}
	 		}
	 		
	 		return mav;
	 	}
	 	
	 	@RequestMapping(value = "/updateByInfoId.do")
		@ResponseBody
		public ModelAndView updateByGoodId(HttpServletRequest request,MultipartFile myFile,
				 HttpServletResponse response) {
	 		ModelAndView mav = new ModelAndView();
	 		
	 		List<Goods> list = goodService.selectAll();
	 		
	 		String goodId = request.getParameter("goodId");
	 		String goodName = request.getParameter("goodName");
	 		String goodPrice = request.getParameter("goodPrice");
	 		String goodBrand = request.getParameter("goodBrand");
	 		String goodDiscribe = request.getParameter("goodDiscribe");
	 		String goodStatus = request.getParameter("goodStatus");
	 		String goodAcount = request.getParameter("goodAcount");
	 		String goodSize = request.getParameter("goodSize");
	 		String category = request.getParameter("category");
	 		String dis = request.getParameter("goodDis");
//	 		String pic = request.getParameter("file");
	 		
	 		Goods good = new Goods();
	 		
	 		good.setGoodName(goodName);
	 		good.setGoodPrice(goodPrice);
	 		good.setGoodBrand(goodBrand);
	 		good.setGoodDiscribe(goodDiscribe);
	 		good.setGoodStatus(goodStatus);
	 		good.setGoodAcount(goodAcount);
	 		
	 		if(goodSize != null && goodSize != "" && category != null && category != "") {
	 			int id = Integer.parseInt(goodId);
	 			int size = Integer.parseInt(goodSize);
	 			int cate = Integer.parseInt(category);
	 			double disc = Double.parseDouble(dis);
	 			good.setGoodSizeId(size);
		 		good.setCategoryId(cate);
		 		good.setGoodDis(disc);
		 		good.setGoodId(id);
	 		}
	 		
	 		//ͼƬ����
	 		String oldName = myFile.getOriginalFilename();
	 		String basePath = request.getRealPath("/");
	 		String newname = oldName.substring(oldName.lastIndexOf("."));
	 		
	 		System.out.println("base path is "+basePath);
	 		
	 		System.out.println(newname);
	 		
	 		long timestamp = System.currentTimeMillis();
	 		
	 		String path = basePath+timestamp+newname;
	 		///mytest/WebContent/assets/images/avt-blog1.png
	 		System.out.println(path);
	 		
	 		try {
	 			myFile.transferTo(new File(path));
	 			good.setGoodPic(timestamp+newname);
	 			list.add(good);
	 			//�����ݸ��µ����ݿ�
	 			goodService.updateGoodById(good);
	 			
//	 			mav.addObject("list",list);
	 			mav.setViewName("selectGoodsAll.do");
	 		} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 		return mav;
	 	}
	 	
	 	@RequestMapping(value="/saveToDB.do")
		 @ResponseBody
		 public ModelAndView saveToDB(HttpServletRequest request,MultipartFile myFile,
				 HttpServletResponse response) {
			System.out.println("����÷���");

			String goodName = request.getParameter("goodName");
	 		String goodBrand = request.getParameter("goodBrand");
	 		String goodDiscribe = request.getParameter("goodDiscribe");
	 		String goodStatus = request.getParameter("goodStatus");
	 		String goodAcount = request.getParameter("goodAcount");
	 		String goodSize = request.getParameter("goodSize");
	 		String category = request.getParameter("category");
	 		
	 		String dis = request.getParameter("goodDis");
	 		String goodPrice = request.getParameter("goodPrice");
			
					
			Map<String ,Object> map = new HashMap<String, Object>();
			ModelAndView mav = new ModelAndView();
			Goods good = new Goods();
			
			String oldName = myFile.getOriginalFilename();
	 		String basePath = request.getRealPath("/");
	 		String newname = oldName.substring(oldName.lastIndexOf("."));
	 		
	 		System.out.println("base path is "+basePath);
	 		
	 		System.out.println(newname);
	 		
	 		long timestamp = System.currentTimeMillis();
	 		
	 		String path = basePath+timestamp+newname;
	 		///mytest/WebContent/assets/images/avt-blog1.png
	 		System.out.println(path);
	 		
	 		try {
				myFile.transferTo(new File(path));
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 		
			
			if(dis != null && dis != "" && goodPrice != null && goodPrice != "" && 
					goodSize != null && goodSize != "" && 
					category != null && category != "") {
				//д�����ݿ�
				int price = Integer.parseInt(goodPrice);
				double disc = Double.parseDouble(dis);
				int size = Integer.parseInt(goodSize);
				int cate = Integer.parseInt(category);
				
				
				good.setGoodName(goodName);
				good.setGoodBrand(goodBrand);
				good.setGoodDiscribe(goodDiscribe);
				good.setGoodStatus(goodStatus);
				good.setGoodAcount(goodAcount);
				good.setGoodSizeId(size);
				good.setCategoryId(cate);
				good.setGoodDis(disc);
				good.setGoodPrice(goodPrice);
				good.setGoodPic(timestamp+newname);
				
				
				goodService.saveIntoDB(good);
				mav.setViewName("selectGoodsAll.do");
			}
			
			return mav;	
		 }
	 	
}
