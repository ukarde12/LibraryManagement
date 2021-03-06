package root.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import root.model.User;
import root.service.SecurityService;
import root.service.UserService;
import root.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SecurityService securityService;
	
	
	 public UserController() {
		System.out.println("Inside Controller ");
	}
	
	@PostMapping("/registration")
	public String registration(@ModelAttribute("userForm") User userForm,BindingResult bindingResult){
		System.out.println("Inside Post registration");
		userValidator.validate(userForm, bindingResult);
		
		if(bindingResult.hasErrors()){
			return "registration";
		}
		
		userService.save(userForm);
		
		//After successful registration first time auto login
		securityService.autoLogin(userForm.getEmail(), userForm.getConfirmpassword());
		return "userDashboard";
		
	}	
	
    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "registration";
    }
	
    @GetMapping({"/index"})
    public String welcome(Model model) {
        return "index";
    }
	
	@GetMapping("/login")
	public String loginPage(){
		System.out.println("inside login jsp");
		return "login";
	}
	
	@GetMapping("/AboutUs")
	public String aboutPageRedirection(){
		return "AboutUs";
	}
	
	@GetMapping("/contactUs")
	public String contactPageRedirection(){
		return "contactUs";
	}
	
	@GetMapping("/userDashboard")
	public String userDashboardPageRedirection(Model model,String error,String logout){
		if(error !=null){
			System.out.println("inside userDashboard");
			model.addAttribute("error", "Your username & password is invalid");

	        if (logout != null)
	            model.addAttribute("message", "You have been logged out successfully.");

	        return "login";
		}
		
		return "userDashboard";
	}
	
	@GetMapping("/faliureLogin")
	public String faliureLoginPageRedirection(Model model,String error,String logout){
			System.out.println("inside userDashboard");
			model.addAttribute("error", "Your username or password is invalid");
	        return "login";
	}
}

