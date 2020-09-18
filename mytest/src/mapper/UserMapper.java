package mapper;

import java.util.List;

import model.User;

public interface UserMapper {
	List<User>login(String id,String pwd);
	
	List<User>checkUsername(String username);
	
	void addUser(User user);
	
	List<User>selectAll();
}
