package MotelMap.model.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import MotelMap.model.Dto.motelDto;
import MotelMap.model.Service.motelServiceIplm;
import MotelMap.model.dao.MotelDAO;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;



@Controller
public class addAndUpdateController {
	@Autowired
	private motelServiceIplm _motelServiceIplm;
	
//	@GetMapping("/toManage")
//	public String showManagePage() {
//		return "manage";	
//	}
	
	@GetMapping("/addAndUpdate")
	public String showaddAndUpdate() {
		return "addAndUpdate";
	}

	// thêm
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	  public String addInn(HttpServletRequest request) {
		double latitude = Double.parseDouble(request.getParameter("latitude"));
	    double longitude = Double.parseDouble(request.getParameter("longitude"));
	    //String image = request.getParameter("image");
	    String name_innkeepers = request.getParameter("name_innkeepers");
	    String description = request.getParameter("description");
	    String address = request.getParameter("address");
	    String phone = request.getParameter("phone");
	    double price = Double.parseDouble(request.getParameter("price"));
		
	    // Lưu dữ liệu vào cơ sở dữ liệu
	    motelDto inn = new motelDto();
	    inn.setLatitude(latitude);
	    inn.setLongitude(longitude);
	  //  inn.setImage(image.getBytes());
	    inn.setNameInnkeepers(name_innkeepers);
	    inn.setDescription(description);
	    inn.setAddress(address);
	    inn.setPhone(phone);
	    inn.setPrice(price);
	    
	    _motelServiceIplm.save(inn);
	
	 return "redirect:/manage";
	    // Chuyển hướng về trang danh sách Inn
	  
	  }
}
