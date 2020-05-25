package root.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import root.model.User;
import root.service.UserService;

@Component
public class UserValidator implements org.springframework.validation.Validator{

	@Autowired
	UserService userService;
	
	@Override
	public boolean supports(Class<?> aClass) {
		 return User.class.equals(aClass);
	}

	@Override
	public void validate(Object object, Errors error) {
		
		User user = (User)object;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "firstname", "NotEmpty");
		if(!error.hasFieldErrors("firstname") && 
				user.getFirstname().length() < 6 || user.getFirstname().length() > 32){
			error.rejectValue("firstname", "Size.userForm.firstname");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "lastname", "NotEmpty");
		if(!error.hasFieldErrors("lastname") &&
				user.getLastname().length() < 6 || user.getLastname().length() > 32){
			error.rejectValue("lastname", "Size.userForm.lastname");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "email", "NotEmpty");
		if(!error.hasFieldErrors("email") && 
				userService.findByUsername(user.getEmail()) != null){
			error.rejectValue("email", "Duplicate.userForm.username");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "password", "NotEmpty");
		if( !error.hasFieldErrors("password") &&
				user.getPassword().length() < 8 || user.getPassword().length() > 32){
			error.rejectValue("password", "Size.userForm.password");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "confirmpassword", "NotEmpty");
		if( !error.hasFieldErrors("confirmpassword") && 
				user.getConfirmpassword().length() < 8 || user.getConfirmpassword().length() > 32){
			error.rejectValue("confirmpassword", "Size.userForm.confirmpassword");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "confirmpassword", "PasswordNotMatching");
		if(!error.hasFieldErrors("confirmpassword") && 
				!user.getConfirmpassword().equals(user.getPassword())){
			error.rejectValue("confirmpassword","Diff.userForm.passwordConfirm");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "contactno", "NotEmpty");
		if( !error.hasFieldErrors("contactno") &&  
				user.getContactno().length() != 10 ){
			error.rejectValue("contactno", "Incorrect.userForm.number");
		}
	}

	

}
