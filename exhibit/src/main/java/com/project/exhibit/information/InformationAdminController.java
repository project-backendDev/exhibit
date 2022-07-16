package com.project.exhibit.information;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONArray;

@Controller
public class InformationAdminController {

	@Autowired
	private InformationService info_Service;
	

	/**
	 * 단체관람 예약 리스트 페이지
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/admin/informationList")
	public @ResponseBody ModelAndView informationView() {
		
		System.out.println("Controller admin information");
		ModelAndView mav = new ModelAndView("/admin/information/informationList");
		
		ArrayList<Information> infoList = (ArrayList<Information>) info_Service.selectReservationList();
		
//		JSONArray jsonArray = new JSONArray();
		
		mav.addObject("infoList", infoList);
//		mav.addObject("infoJsonList", JSONArray.fromObject(infoList));
		
//		System.out.println("=========================");
//		System.out.println(JSONArray.fromObject(infoList));
//		System.out.println("=========================");
		
		return mav;
	}
	
}
