package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mapper.AdvertMapper;
import mapper.GoodMapper;
import mapper.UserMapper;
import model.Advert;
import model.Goods;
import model.User;

@Service
public class UserService {
	
	@Autowired
	UserMapper um;
	@Autowired
	AdvertMapper advertMapper;
	@Autowired
	GoodMapper goodMapper;
	
	public List<User> userLogin(String id,String pwd) {
		
		System.out.println("test "+id+"-"+pwd);
		
		if(um.login(id,pwd)!=null && um.login(id,pwd).size()>0) {
			System.out.println("查找成功");
			return um.login(id, pwd);
		}
		System.out.println("操作失败");
		return null;
	}
	
	public List<User> checkUsername(String username) {
		if(um.checkUsername(username)!=null) {
			System.out.println("get it !");
		}
		return um.checkUsername(username);
	}
	
	public void add(User user) {
		um.addUser(user);
	}
	
	public List<User> selectAll() {
		
		if(um.selectAll() !=null&& !um.selectAll().isEmpty()) {
			System.out.println("not null");
			
		}
		return um.selectAll();
	}
	
	public Map<String,List> selectAdvertLimit(){
		
		Map<String,List> map = new HashMap<String, List>();
		
		//分别查出商品信息和广告信息
		List<Advert> advertList = advertMapper.selectAdvertLimit();//查询前五条记录
		List<Goods> goodList =new ArrayList<Goods>();
		
		Goods goods = new Goods();
		
		System.out.println("advert list size "+advertList.size());
		
		System.out.println(advertList.get(0).getGoodId());
		
		int[] idArray = new int[5];
		
		for( int i = 0 ; i <= advertList.size()-1 ; i++ ) {
			
			idArray[i] = advertList.get(i).getGoodId(); //获取广告中商品的id
			
			System.out.println("test array "+idArray[i]);
			                                                                            
			System.out.println(advertList.get(i).getGoodId());
			
			System.out.println(goodMapper.selectAdvertInfo(advertList.get(i).getGoodId()));
			
			List<Goods>list = goodMapper.selectAdvertInfo(advertList.get(i).getGoodId());
			
			goodList.add(list.get(0));
			
			
			
			System.out.println("goodlist size "+goodList.size());
		
		}
		
		map.put("adInfo", advertList);
		map.put("goodInfo",goodList);
		return map;
	}
	
	
}
