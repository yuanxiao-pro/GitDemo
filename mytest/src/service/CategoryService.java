package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.CategoryMapper;

@Service
public class CategoryService {
	
	@Autowired
	CategoryMapper categoryMapper;
	
	public String selectCategoryName(int id) {
		return categoryMapper.selectCategoryName(id);
	}
	
	
}
