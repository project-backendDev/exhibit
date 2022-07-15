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
	
	@RequestMapping(value = "/news1_detail")
	public ModelAndView news1_detail() {
		
		System.out.println("Controller news1_detail");
		ModelAndView mav = new ModelAndView("/services/news/news1_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news2")
	public ModelAndView news2() {
		
		System.out.println("Controller news2");
		ModelAndView mav = new ModelAndView("/services/news/news2");
		
		return mav;
	}
	
	@RequestMapping(value = "/news2_detail")
	public ModelAndView news2_detail() {
		
		System.out.println("Controller news2_detail");
		ModelAndView mav = new ModelAndView("/services/news/news2_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news3")
	public ModelAndView news3() {
		
		System.out.println("Controller news3");
		ModelAndView mav = new ModelAndView("/services/news/news3");
		
		return mav;
	}
	
	@RequestMapping(value = "/news3_detail")
	public ModelAndView news3_detail() {
		
		System.out.println("Controller news3_detail");
		ModelAndView mav = new ModelAndView("/services/news/news3_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news4")
	public ModelAndView news4() {
		
		System.out.println("Controller news4");
		ModelAndView mav = new ModelAndView("/services/news/news4");
		
		return mav;
	}
	
	@RequestMapping(value = "/news4_detail")
	public ModelAndView news4_detail() {
		
		System.out.println("Controller news4_detail");
		ModelAndView mav = new ModelAndView("/services/news/news4_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news4_write")
	public ModelAndView news4_write() {
		
		System.out.println("Controller news4_write");
		ModelAndView mav = new ModelAndView("/services/news/news4_write");
		
		return mav;
	}
	
	@RequestMapping(value = "/news5")
	public ModelAndView news5() {
		
		System.out.println("Controller news5");
		ModelAndView mav = new ModelAndView("/services/news/news5");
		
		return mav;
	}
	
}
