package com.project.exhibit.introduce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IntroduceController {

	/**
	 * 설립자 소개
	 * @return
	 */
	@RequestMapping(value = "/introduce1_1")
	public ModelAndView introduce1_1View() {
		
		System.out.println("Controller introduce1_1");
		ModelAndView mav = new ModelAndView("/services/introduce/introduce1_1");
		
		return mav;
	}
	
	@RequestMapping(value = "/introduce1_2")
	public ModelAndView introduce1_2View() {
		
		System.out.println("Controller introduce1_2");
		ModelAndView mav = new ModelAndView("/services/introduce/introduce1_2");
		
		return mav;
	}
	
	@RequestMapping(value = "/introduce1_3")
	public ModelAndView introduce1_3View() {
		
		System.out.println("Controller introduce1_3");
		ModelAndView mav = new ModelAndView("/services/introduce/introduce1_3");
		
		return mav;
	}
	
	@RequestMapping(value = "/introduce2")
	public ModelAndView introduce2View() {
		
		System.out.println("Controller introduce2");
		ModelAndView mav = new ModelAndView("/services/introduce/introduce2");
		
		return mav;
	}
	
	@RequestMapping(value = "/introduce3")
	public ModelAndView introduce3View() {
		
		System.out.println("Controller introduce3");
		ModelAndView mav = new ModelAndView("/services/introduce/introduce3");
		
		return mav;
	}
}
