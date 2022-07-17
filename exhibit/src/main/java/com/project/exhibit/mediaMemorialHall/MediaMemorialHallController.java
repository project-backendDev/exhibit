package com.project.exhibit.mediaMemorialHall;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/introduce")
public class MediaMemorialHallController {
	
	private MediaMemorialHallService mediaMH_Service;
	
	/**
	 * 언론에 비친 기념관 페이지
	 * @return introduce3
	 * */
	@RequestMapping("/introduce3")
	public ModelAndView getArtclList(
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			Model model
			) {
		System.out.println("MediaMemorialHallController introduce3");
		
		System.out.println("");
		System.out.println("mmh 정보 출력");
		System.out.println(mmh.getArtcl_Seq());
		System.out.println(mmh.getTitle());
		
		
		List<MediaMemorialHall> mediaMemorialHallList = mediaMH_Service.selectMediaMemorialHall(mmh);
		
		ModelAndView mav = new ModelAndView("/services/introduce/introduce3");
		
		return mav;
		
	}
	
}
