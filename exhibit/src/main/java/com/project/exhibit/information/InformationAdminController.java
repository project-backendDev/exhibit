package com.project.exhibit.information;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	

	/**
	 * 단체관람 예약자 수정 페이지
	 * @return
	 */
	@RequestMapping(value = "/admin/informationEdit")
	public ModelAndView informationEditView(@RequestParam(value = "reserve_Seq") int reserve_Seq) {
		
		ModelAndView mav = new ModelAndView("/admin/information/informationEdit");
		
		Information info = info_Service.selectByReserveSeq(reserve_Seq);
		
		mav.addObject("info", info);
		
		return mav;
	}
	
	
	/**
	 * 단체관람 예약자 수정 동작 메소드
	 * @param info 
	 * @param reserve_Seq
	 * @return
	 */
	@RequestMapping(value = "/admin/informationEdit.do")
	public String informationEdit(Information info, @RequestParam(value = "reserve_Seq") int reserve_Seq) {
		
		System.out.println("updateController	info.getName()	::	" + info.getName());
		System.out.println("updateController	info.getName()	::	" + info.getTel());
		System.out.println("updateController	info.getName()	::	" + info.getVisit_day());
		System.out.println("updateController	info.getName()	::	" + info.getVisit_time());
		System.out.println("updateController	info.getName()	::	" + info.getReserve_people());
		System.out.println("updateController	info.getName()	::	" + info.getTransfer());
		
		info_Service.updateReserveData(info);
		
		return "redirect:/admin/informationList";
	}
	
	
	@RequestMapping(value = "/admin/informationDelete.do")
	public String informationDelete(@RequestParam(value = "reserve_Seq") int reserve_Seq) {
		
		System.out.println("DeleteController	reserve_Seq		::	" + reserve_Seq);
		
		info_Service.deleteReserve(reserve_Seq);
		System.out.println("=========");
		
		return "redirect:/admin/informationList"; 
	}
	
}
