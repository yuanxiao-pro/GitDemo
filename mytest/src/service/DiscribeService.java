package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.DiscribeMapper;
import model.Discribe;

@Service
public class DiscribeService {
	
	@Autowired
	DiscribeMapper discribeMapper;
	
	public void insertDiscribe(Discribe dis) {
		discribeMapper.insertDiscribe(dis);
	}
	
	
	
	public void addDiscribe(int uid,int gid,String text) {
		discribeMapper.addDiscribe(uid, gid, text);
	}
	
	public List<Discribe> selectDis(int goodId){
		return discribeMapper.selectByPage(goodId);
	}
	
}
