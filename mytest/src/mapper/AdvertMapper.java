package mapper;

import java.util.List;

import model.Advert;

public interface AdvertMapper {
	void addToPage(int goodId , String context);
	
	List<Advert> selectAdvert();
	
	List<Advert> selectAdvertLimit();
	
	List<Integer> selectId();
}
