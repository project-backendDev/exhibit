package com.project.exhibit.information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InformationController {

	
	@RequestMapping(value = "/information1")
	public ModelAndView information1() {
		
		System.out.println("Controller information1");
		ModelAndView mav = new ModelAndView("/services/information/information1");
		
		return mav;
	}
	
	@RequestMapping(value = "/information2")
	public ModelAndView information2() {
		
		System.out.println("Controller information2");
		ModelAndView mav = new ModelAndView("/services/information/information2");
		
		return mav;
	}
	
	@RequestMapping(value = "/information3")
	public ModelAndView information3() {
		
		System.out.println("Controller information3");
		ModelAndView mav = new ModelAndView("/services/information/information3");
		
		return mav;
	}
	
	@RequestMapping(value = "/information4")
	public ModelAndView information4() {
		
		System.out.println("Controller information4");
		ModelAndView mav = new ModelAndView("/services/information/information4");
		
		return mav;
	}
}
