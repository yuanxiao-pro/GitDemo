package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.LoadMapper;

@Service
public class LoadService {
	
	@Autowired
	LoadMapper loadMapper;
	
	public List<HashMap<String, String>> selectProvinceAll() {

		return loadMapper.selectProvinceAll();
	}

	public List<HashMap<String, String>> selectCityByCode(String code) {

		return loadMapper.selectCityByCode(code);
	}
	
	public List<HashMap<String,String>> selectAreaByCode(String code){
		
		return loadMapper.selectAreaByCode(code);
	}
	
	public void addToDB(String loc,String uid) {
		loadMapper.addToDB(loc, uid);
	}
	
	public List<HashMap<String, String>> selectProvinceByCode(String code){
		return loadMapper.selectProvinceByCode(code);
	}
	
	public List<HashMap<String, String>> selectCityByCodeToDB(String code){
		return loadMapper.selectCityByCodeToDB(code);
	}
	
	public List<HashMap<String, String>> selectAreaByCodeToDB(String code){
		return loadMapper.selectAreaByCodeToDB(code);
	}
	
}
