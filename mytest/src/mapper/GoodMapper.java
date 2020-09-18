package mapper;

import java.util.HashMap;
import java.util.List;

import model.Goods;
import model.User;
import service.GoodService;

public interface GoodMapper {
	List<Goods> selectGoodByCategory(String category,String goodName);
	List<Goods> selectByPage();
	List<Goods> selectAll();
	
	List<HashMap<String, String>> select();
	
	List<Goods> selectByCategory(String categoryId);
	
	List<Goods> selectByGoodId(int goodId);
	
	void updateNumberById(int gid,int num);
	
	void deleteGoodById(int id);
	
	void updateGoodById(Goods good);
	
	void saveIntoDB(Goods good);
	
	List<Goods> selectAdvertInfo(int goodId);
}
