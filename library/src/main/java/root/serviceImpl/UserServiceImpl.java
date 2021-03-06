package root.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import root.model.User;
import root.repository.UserRepository;
import root.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder; 
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		userRepository.save(user);
	}

	@Override
	public User findByUsername(String email) {
		return userRepository.findByEmail(email);
	}

}
