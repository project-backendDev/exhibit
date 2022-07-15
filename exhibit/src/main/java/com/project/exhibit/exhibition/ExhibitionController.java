package com.project.exhibit.exhibition;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExhibitionController {

	@RequestMapping(value = "/exhibition1")
	public ModelAndView exhibition1() {
		
		System.out.println("Controller exhibition1");
		ModelAndView mav = new ModelAndView("/services/exhibition/exhibition1");
		
		return mav;
	}
	
	@RequestMapping(value = "/exhibition2")
	public ModelAndView exhibition2() {
		
		System.out.println("Controller exhibition2");
		ModelAndView mav = new ModelAndView("/services/exhibition/exhibition2");
		
		return mav;
	}
	
	@RequestMapping(value = "/exhibition3")
	public ModelAndView exhibition3() {
		
		System.out.println("Controller exhibition3");
		ModelAndView mav = new ModelAndView("/services/exhibition/exhibition3");
		
		return mav;
	}
	
	@RequestMapping(value = "/exhibition4")
	public ModelAndView exhibition4() {
		
		System.out.println("Controller exhibition4");
		ModelAndView mav = new ModelAndView("/services/exhibition/exhibition4");
		
		return mav;
	}
	
	@RequestMapping(value = "/exhibition5")
	public ModelAndView exhibition5() {
		
		System.out.println("Controller exhibition5");
		ModelAndView mav = new ModelAndView("/services/exhibition/exhibition5");
		
		return mav;
	}
	
	@RequestMapping(value = "/exhibition6")
	public ModelAndView exhibition6() {
		
		System.out.println("Controller exhibition6");
		ModelAndView mav = new ModelAndView("/services/exhibition/exhibition6");
		
		return mav;
	}
}
