package MotelMap.model.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import MotelMap.model.Service.motelServiceIplm;

@Controller
public class manageController {

	
	@Autowired
	private motelServiceIplm _motelServiceIplm;
	
	@RequestMapping("/manage")
	public ModelAndView showDataOfManage() {		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data",  _motelServiceIplm.getAllData());
		mav.setViewName("manage");	
		return mav;
	}
	

	@RequestMapping("/toHome")
	public ModelAndView showDataIndex() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("data",  _motelServiceIplm.getAllData());
		mav.setViewName("index");	
		return mav;
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		_motelServiceIplm.delete(id);	
		return "redirect:/manage";
	}
	
	

	

	
	
	
	@GetMapping("/addMotels")
	public String showAddPage() {
		return "redirect:/addAndUpdate";
	}
}
