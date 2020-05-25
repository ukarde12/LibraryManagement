package root.service;

import root.model.User;

public interface UserService {
	
	void save(User user);
	
	User findByUsername(String email);

}
