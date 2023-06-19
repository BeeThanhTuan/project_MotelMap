package MotelMap.model.Controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class LoginController {

	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}


	@GetMapping("/loginCheck")
	public String loginCheck(@RequestParam("username") String username, @RequestParam("password") String password) {
		if (username.equals("admin") && password.equals("admin")) {
			return "redirect:/manage";
		} else {

			return "redirect:/login";
		}
	}
}
