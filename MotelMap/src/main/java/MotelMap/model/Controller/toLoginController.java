package MotelMap.model.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MotelMap.model.Service.motelServiceIplm;


@ComponentScan
@Controller
public class toLoginController {

	@Autowired
	private motelServiceIplm _motelServiceIplm;
	
	@GetMapping("/toLogin")
	public String showLoginPage() {
	    return "login";
	}
	
	@RequestMapping("/")
	public ModelAndView showDataIndex() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("data",  _motelServiceIplm.getAllData());
		mav.setViewName("index");	
		return mav;
	}
}
