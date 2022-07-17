package com.project.exhibit.mediaMemorialHall;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/mediaMemorialHall")
public class MediaMemorialHallAdminController {

	@Autowired
	private MediaMemorialHallService mediaMH_Service;
	
	/**
	 * 언론에 비친 기념관 관리자 페이지
	 * @return mediaMemorialHall
	 * */
	@RequestMapping("/artclList")
	public ModelAndView getAdminArclList(
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			Model model
			) {
		System.out.println("mediaMemorialHall 어드민 시작");
		
		
		ModelAndView mav = new ModelAndView("/admin/mediamemorialhall/mediaMemorialHall");
		
		return mav;
	}
}
