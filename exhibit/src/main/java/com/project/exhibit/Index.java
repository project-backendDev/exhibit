package com.project.exhibit;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.exhibit.imageslide.ImageSlide;
import com.project.exhibit.imageslide.ImageSlideService;

@Controller
public class Index {
	
	@Autowired
	private ImageSlideService img_Service;
	
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
		
		ArrayList<ImageSlide> imgList = (ArrayList<ImageSlide>) img_Service.selectImageSlideList();
		
		mav.addObject("imgList", imgList);
		
		return mav;
	}
	
 
}
