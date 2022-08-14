package com.project.exhibit.news;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewsController {
	
	@RequestMapping(value = "/news1")
	public ModelAndView news1() {
		
		System.out.println("Controller news1");
		ModelAndView mav = new ModelAndView("/services/news/news1");
		
		return mav;
	}

	@RequestMapping(value = "/news2")
	public ModelAndView news2() {
		
		System.out.println("Controller news2");
		ModelAndView mav = new ModelAndView("/services/news/news2");
		
		return mav;
	}
	
	@RequestMapping(value = "/news3")
	public ModelAndView news3() {
		
		System.out.println("Controller news3");
		ModelAndView mav = new ModelAndView("/services/news/news3");
		
		return mav;
	}
	
	
	@RequestMapping(value = "/news4")
	public ModelAndView news4() {
		
		System.out.println("Controller news4");
		ModelAndView mav = new ModelAndView("/services/news/news4");
		
		return mav;
	}
	
	@RequestMapping(value = "/news5")
	public ModelAndView news5() {
		
		System.out.println("Controller news5");
		ModelAndView mav = new ModelAndView("/services/news/news5");
		
		return mav;
	}
}
