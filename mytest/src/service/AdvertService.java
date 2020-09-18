package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.AdvertMapper;
import model.Advert;

@Service
public class AdvertService {
	
	@Autowired
	AdvertMapper advertMapper;
	
	public void addToPage(int goodId,String context) {
		
		advertMapper.addToPage(goodId,context);
		
	}
	
	public List<Advert> selectAdverts() {
		return advertMapper.selectAdvert();
	}
	
	public List<Advert> selectAdvertLimit() {
		return advertMapper.selectAdvertLimit();
	}
	
	public List<Integer> selectId() {
		return advertMapper.selectId();
	}
	
}
