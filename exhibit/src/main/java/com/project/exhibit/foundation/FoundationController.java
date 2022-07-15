package com.project.exhibit.foundation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FoundationController {

	@RequestMapping(value = "/foundation1")
	public ModelAndView foundation1() {
		
		System.out.println("Controller foundation1");
		ModelAndView mav = new ModelAndView("/services/foundation/foundation1");
		
		return mav;
	}
	
	@RequestMapping(value = "/foundation2")
	public ModelAndView foundation2() {
		
		System.out.println("Controller /foundation2");
		ModelAndView mav = new ModelAndView("/services/foundation/foundation2");
		
		return mav;
	}
	
	@RequestMapping(value = "/foundation3")
	public ModelAndView foundation3() {
		
		System.out.println("Controller foundation3");
		ModelAndView mav = new ModelAndView("/services/foundation/foundation3");
		
		return mav;
	}
}
