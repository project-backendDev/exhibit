package com.project.exhibit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Index {
	
	@RequestMapping(value = "/")
	public ModelAndView index() {
		System.out.println("Controller 메인");
		ModelAndView mav = new ModelAndView("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/information2")
	public ModelAndView reservation() {
		
		System.out.println("Controller information2");
		ModelAndView mav = new ModelAndView("/services/information/information2");
		
		return mav;
	}
}
