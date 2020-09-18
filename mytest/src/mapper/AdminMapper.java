package mapper;

import java.util.List;

import model.Admin;

public interface AdminMapper {
	
	List<Admin> selectAdminById(int id);

}
