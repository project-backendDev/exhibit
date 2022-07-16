package com.project.exhibit.information;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InformationAdminController {

	@Autowired
	private InformationService info_Service;
	

	/**
	 * 단체관람 예약 리스트 페이지
	 * @return
	 */
	@RequestMapping(value = "/admin/information")
	public ModelAndView informationView() {
		
		System.out.println("Controller admin information");
		ModelAndView mav = new ModelAndView("/admin/information/information");
		
		ArrayList<Information> infoList = (ArrayList<Information>) info_Service.selectReservationList();
		
		mav.addObject("infoList", infoList);
		
		return mav;
	}
	
	
}
