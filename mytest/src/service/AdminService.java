package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.AdminMapper;
import model.Admin;

@Service
public class AdminService {
	
	@Autowired
	AdminMapper adminMapper;
	
	public List<Admin> selectAdminById(int id){
		return adminMapper.selectAdminById(id);
	}
	
	
}	
