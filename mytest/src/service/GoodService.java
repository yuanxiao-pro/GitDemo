package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.GoodMapper;
import model.Goods;
import model.Order;

@Service
public class GoodService {
	@Autowired
	GoodMapper goodMapper;
	
	public List<Goods>selectGoodByCategory(String category,String goodName){
		List<Goods> list = goodMapper.selectGoodByCategory(category,goodName.toUpperCase());
		if(goodMapper.selectGoodByCategory(category,goodName)==null) { //�ǿ�
			System.out.println("the category is null");
		}
		return list;
	}
	
	
	public PageInfo<Goods> selectByPage(Integer nowPage){

		PageHelper.startPage(nowPage, 10);//��ǰҳ���10ҳ
		List<Goods> myList = goodMapper.selectByPage();
		
		System.out.println("myList : "+myList);//null
		System.out.println("myList ele "+myList.get(0));
		
		if(myList == null ||myList.size()==0) {
			System.out.println("list is null");
		}
		
		PageInfo<Goods> pageInfo = new PageInfo<Goods>(myList);//���list�ǽ����
		System.out.println(pageInfo);
		return pageInfo;
	}
	
	
	public List<Goods>selectAll(){
		
		if(goodMapper.selectAll()==null) {
			System.out.println("no info");
		}
		return goodMapper.selectAll();
	}
	
	public List<HashMap<String, String>> select() {
		return goodMapper.select();
	}
	
	public List<Goods>selectByCategory(String categoryId){
		return goodMapper.selectByCategory(categoryId);
	}
	
	/*
	 * //����״̬���� public void updateOrderStatus(Order order) { //�����ݴ���order��
	 * 
	 * 
	 * }
	 */
	public List<Goods>selectByGoodId(int goodId){
		
		return goodMapper.selectByGoodId(goodId);
	
	}
	
	public void deleteGoodById(int gid) {
		
		goodMapper.deleteGoodById(gid);
		
	}
	
	public void updateGoodById(Goods good) {
		goodMapper.updateGoodById(good);
	}
	
	public void saveIntoDB(Goods good) {
		goodMapper.saveIntoDB(good);
	}
	
	public List<Goods> selectAdvertInfo(int goodId) {
		return goodMapper.selectAdvertInfo(goodId);
	}
	
	
}
