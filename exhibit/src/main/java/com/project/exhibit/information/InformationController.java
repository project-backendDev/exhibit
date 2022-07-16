package com.project.exhibit.information;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		// jsp 파일에 핸드폰번호 입력 input이 3개여서 같은 name을 받아와서 쉼표(,)를 하이픈(-)으로 변경
		String tel = info.getTel().replaceAll(",", "-");
		info.setTel(tel);

		// jsp 파일에 시/분 입력 select가 2개여서 같은 name을 받아와서 쉼표(,)를 하이픈(-)으로 변경 및 뒤에 '분'을 붙여줌
		String visitDayStr = info.getVisit_time().replace(",", "시 ") + "분";
		info.setVisit_time(visitDayStr);

		info_Service.insertReservation(info);
		
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
