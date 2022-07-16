package com.project.exhibit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Index {
	
	@RequestMapping(value = "/")
	public ModelAndView index() {
		System.out.println("Controller index");
		ModelAndView mav = new ModelAndView("/index");
		
		return mav;
	}
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		System.out.println("Admin index");
		ModelAndView mav = new ModelAndView("/admin/index");
		
		return mav;
	}
	
 
}
