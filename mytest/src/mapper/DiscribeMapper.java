package mapper;

import java.util.List;

import model.Discribe;

public interface DiscribeMapper {
	
	void insertDiscribe(Discribe discribe);
	
	List<Discribe> loadDiscribe(int gid);
	
	void addDiscribe(int uid,int gid,String text);
	
	public List<Discribe> selectByPage(int goodId);
	
}
