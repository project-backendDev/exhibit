package com.project.exhibit.information;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.Formatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InformationController {
	
	@Autowired
	private InformationService info_Service; 

	/**
	 * 관람안내 페이지
	 * @return
	 */
	@RequestMapping(value = "/information1")
	public ModelAndView information1View() {
		
		System.out.println("Controller information1");
		ModelAndView mav = new ModelAndView("/services/information/information1");
		
		return mav;
	}
	
	/**
	 * 단체관람 예약 페이지
	 * @return
	 */
	@RequestMapping(value = "/information2")
	public ModelAndView information2RegistView() {
		
		System.out.println("Controller information2RegistView");
		ModelAndView mav = new ModelAndView("/services/information/information2");
		
		return mav;
	}
	
	@RequestMapping(value = "/information2.do")
	public String information2Regist(Information info) throws ParseException {
		
		System.out.println("======		RegistController information2Regist	Start!!!!!		======");
		System.out.println("RegistController Line 52 	info.getReserve_Seq()		::	" + info.getReserve_Seq());
		System.out.println("RegistController Line 53 	info.getName()		::	" + info.getName());
		System.out.println("RegistController Line 54 	info.getTel()		::	" + info.getTel());
		System.out.println("RegistController Line 55 	info.getVisit_day()	::	" + info.getVisit_day());
		System.out.println("RegistController Line 56 	info.getVisit_time()	::	" 	+ info.getVisit_time());
		System.out.println("RegistController Line 57 	info.getReserve_people()	::	" + info.getReserve_people());
		System.out.println("RegistController Line 58 	info.getTransfer()	::	" + info.getTransfer());
		
		// jsp 파일에 input이 3개여서 같은 name을 받아와서 쉼표(,)를 하이픈(-)으로 변경
		String tel = info.getTel().replaceAll(",", "-");
		info.setTel(tel);
		
//		RegistController Line 56 	info.getVisit_time()	::	01,01
		String visitTime = info.getVisit_time().replace(",", "시");	// 01시01
		System.out.println("RegistController Line 66 	visitTime	::	" + visitTime);
		
//		info = info_Service.selectDuplicateTel(info.getTel());

			info_Service.insertReservation(info);
			System.out.println("InforController Line 47		::	" + info);
		
		return "redirect:/information2";
	}
	
	/**
	 * 자주 묻는 질문 페이지
	 * @return
	 */
	@RequestMapping(value = "/information3")
	public ModelAndView information3View() {
		
		System.out.println("Controller information3");
		ModelAndView mav = new ModelAndView("/services/information/information3");
		
		return mav;
	}
	
	/**
	 * 오시는 길 페이지
	 * @return
	 */
	@RequestMapping(value = "/information4")
	public ModelAndView information4View() {
		
		System.out.println("Controller information4");
		ModelAndView mav = new ModelAndView("/services/information/information4");
		
		return mav;
	}
}
