package com.project.exhibit.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class NoticeController {

	@Autowired
	private NoticeService notice_Service;
	
//	@RequestMapping(value = "/")
//	public ModelAndView index() {
//		System.out.println("Controller 메인");
//		ModelAndView mav = new ModelAndView("/admin/index");
//		
//		return mav;
//	}
	
	@GetMapping(value = "/admin/main")
	public void login() {

	}
	
	// 공지사항 등록 페이지로 이동
	@RequestMapping(value = "/admin/notice/noticeRegistView")
	public ModelAndView noticeRegistView() {
		System.out.println("Controller RegistView");
		ModelAndView mav = new ModelAndView("/admin/notice/noticeRegistView");
		
		return mav;
	}
	
	/**
	 * 공지사항 등록 메소드
	 * @param notice - 공지사항
	 * @return
	 */
	@RequestMapping(value = "/admin/notice/noticeRegist")
	public String noticeRegist(Notice notice) {
		System.out.println("Controller Regist");
		
		notice_Service.insertNotice(notice);
		
		return "redirect:/admin/notice/noticeList";
	}
	
	/**
	 * 공지사항 리스트
	 * @param notice - 공지사항
	 * @return
	 */
	@RequestMapping(value = "/admin/notice/noticeList")
	public String noticeList(
			@ModelAttribute Notice notice,
			Model model
			) {
		System.out.println("noticeList 공지사항 리스트 시작");
		
		List<Notice> getNoticeList = notice_Service.getNoticeList();
		
		System.out.println("getNoticeList 값's ");
		for(Notice e : getNoticeList) {
			System.out.println(e.getArtcl_Seq());
			System.out.println(e.getTitle());
			System.out.println(e.getWriter());
			System.out.println(e.getContent());
			System.out.println("------------------ ");
		}
		
		model.addAttribute("getNoticeList", getNoticeList);
		
		return "/admin/notice/noticeList";
	}
}
