package mapper;

import java.util.HashMap;
import java.util.List;

public interface LoadMapper {
	public List<HashMap<String,String>> selectProvinceAll();
	public List<HashMap<String,String>> selectCityByCode(String code);
	public List<HashMap<String,String>> selectAreaByCode(String code);
	public void addToDB(String loc,String uid);
	
	public List<HashMap<String, String>> selectProvinceByCode(String code);
	public List<HashMap<String, String>> selectCityByCodeToDB(String code);
	public List<HashMap<String, String>> selectAreaByCodeToDB(String code);
}