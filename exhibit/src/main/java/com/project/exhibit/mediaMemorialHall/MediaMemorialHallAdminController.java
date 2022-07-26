package com.project.exhibit.mediaMemorialHall;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.exhibit.util.SearchPageVO;


@Controller
@RequestMapping("/admin/mediaMemorialHall")
public class MediaMemorialHallAdminController {

	@Autowired
	private MediaMemorialHallService mediaMH_Service;
	
	
	/**
	 * 언론에 비친 기념관 관리자 등록 페이지 이동
	 * @return mediaMemorialHallRegistView
	 * */
	@RequestMapping("/registView")
	public ModelAndView RegistView(
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage
			) {
		
		
		ModelAndView mav = new ModelAndView("/admin/mediamemorialhall/mediaMemorialHallRegistView");
		
		return mav;
	}
	
	/**
	 * 언론에 비친 기념관 관리자 등록
	 * @return mediaMemorialHallRegistView
	 * */
	@RequestMapping("/regist")
	public String Regist(
			@ModelAttribute("mmh") MediaMemorialHall mmh
			) {
		
		mediaMH_Service.insertMediaMemorialHall(mmh);
		
		return "redirect:/admin/mediaMemorialHall/artclList";
	}
	
	/**
	 * 언론에 비친 기념관 관리자 등록글 상세페이지
	 * @return mediaMemorialHallRegistView
	 * */
	@RequestMapping("/{artcl_Seq}/artclView")
	public ModelAndView artclView(
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		System.out.println("언론에 비친 기념관 관리자 등록글 상세페이지");
		System.out.println("artcl_Seq => " + mmh.getArtcl_Seq());
		System.out.println("nowPage => " + nowPage);
		System.out.println("cntPerPage => " + cntPerPage);
		
		int spage = 1; // 기존 페이지
		if (nowPage != null && !nowPage.equals("")) {
		       spage = Integer.parseInt(nowPage); // nowPage가 없다면 기존 페이지인 1페이지
	    }
	    if (cntPerPage == null) {
	        cntPerPage = "10"; // 보여줄 라인 수 10줄 보여주겠다
    	}
	    int total = mediaMH_Service.selectMediaMemorialHallCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    
	    MediaMemorialHall artclView = mediaMH_Service.selectMediaMemorialHallView(mmh);
		
		model.addAttribute("artclView", artclView);
		model.addAttribute("paging", paging);
	    
		ModelAndView mav = new ModelAndView("admin/mediamemorialhall/mediamemorialhallArtclView");
		
		return mav;
	}
	
	/**
	 * 언론에 비친 기념관 관리자 수정 페이지 이동
	 * @return mediaMemorialHallRegistView
	 * */
	@RequestMapping("/updateView")
	public ModelAndView UpdateView(
			@ModelAttribute("mmh") MediaMemorialHall mmh
			) {
		System.out.println("수정 페이지 이동");
		System.out.println(mmh.getArtcl_Seq());
		mediaMH_Service.updateMediaMemorialHall(mmh);
		
		ModelAndView mav = new ModelAndView("admin/mediamemorialhall/mediamemorialhallUpdateView");
		
		return mav;
	}
	
	/**
	 * 언론에 비친 기념관 관리자 페이지
	 * @return mediaMemorialHall
	 * */
	@RequestMapping("/artclList")
	public ModelAndView getAdminArclList(
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		System.out.println("mediaMemorialHall 어드민 시작");
		System.out.println("nowPage 스트링타입 => " + nowPage);
		System.out.println("cntPerPage 스트링타입 => " + cntPerPage);
		System.out.println("searchType ==> " + vo.getSearchType());
		System.out.println("searchValue ==> " + vo.getSearchValue());
		System.out.println(vo.toString());
		int spage = 1; // 기존 페이지
		if (nowPage != null && !nowPage.equals("")) {
		       spage = Integer.parseInt(nowPage); // nowPage가 없다면 기존 페이지인 1페이지
	    }
	    if (cntPerPage == null) {
	        cntPerPage = "10"; // 보여줄 라인 수 10줄 보여주겠다
    	}
	    int total = mediaMH_Service.selectMediaMemorialHallCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    List<MediaMemorialHall> artclList = mediaMH_Service.selectMediaMemorialHall(paging);
	    
	    System.out.println("리스트 출력");
	    for(MediaMemorialHall e : artclList) {
	    	System.out.println("순번 : " + e.getArtcl_Seq());
	    	System.out.println("제목 : " + e.getTitle());
	    	System.out.println("내용 : " + e.getContent());
	    	System.out.println("작성자 : " + e.getWriter());
	    	System.out.println(" ");
	    }
	    
	    model.addAttribute("artclList", artclList);
	    model.addAttribute("paging", paging);
		ModelAndView mav = new ModelAndView("/admin/mediamemorialhall/mediaMemorialHall");
		
		return mav;
	}
}
