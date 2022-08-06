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
@RequestMapping("/introduce")
public class MediaMemorialHallController {
	
	@Autowired
	private MediaMemorialHallService mediaMH_Service;
	
	/**
	 * 언론에 비친 기념관 페이지
	 * @return introduce3
	 * */
	@RequestMapping("/introduce3")
	public ModelAndView getArtclList(
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		
		System.out.println("mediaMemorialHall 사용자 게시판 시작");
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
	        cntPerPage = "5"; // 보여줄 라인 수 ex.) 5줄 보여주겠다
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
	    	//System.out.println("내용 : " + e.getContent());
	    	//System.out.println("작성자 : " + e.getWriter());
	    	//System.out.println("등록날짜 = > " + e.getReg_date());
	    	if(e.getImg_Path() !=null || !"".equals(e.getImg_Path())) {
	    		System.out.println("e.getImg_Path() => " + e.getImg_Path());
	    		if( e.getImg_Path().contains("webapp") ) {
		    		//System.out.println("e.getImg_Path().split(\"webapp\")[1] " + e.getImg_Path().split("webapp")[0]);
		    		String thumbPath = e.getImg_Path().split("webapp")[1].replace( "\\" ,  "/" );
			    	e.setImg_Path(thumbPath);
			    	System.out.println(" 스플릿한 경로 : " + thumbPath);
	    		}
	    		else {
	    			e.setImg_Path(e.getImg_Path().replace("\\", "/"));
	    		}
	    	}
	    }
	    
	    model.addAttribute("artclList", artclList);
	    model.addAttribute("paging", paging);
		ModelAndView mav = new ModelAndView("/services/introduce/introduce3");
		
		return mav;
		
	}
	
	/**
	 * 언론에 비친 기념관 상세페이지
	 * @return introduce3_detail
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
	        cntPerPage = "5"; // 보여줄 라인 수 10줄 보여주겠다
    	}
	    int total = mediaMH_Service.selectMediaMemorialHallCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    
	    MediaMemorialHall artclView = mediaMH_Service.selectMediaMemorialHallView(mmh);
	    
	    /*if(artclView.getImg_Path() == null) {
	    	System.out.println("이미지 없음");
	    }*/
	    
	    if(artclView.getImg_Path() !=null || !"".equals(artclView.getImg_Path())) {
	    	
	    	if( artclView.getImg_Path().contains("webapp") ) {
	    		System.out.println("artclView.getImg_Path().split(\"webapp\")[1] => " + artclView.getImg_Path().split("webapp")[1]);
		    	String thumbPath = artclView.getImg_Path().split("webapp")[1];
		    	artclView.setImg_Path(thumbPath.replace( "\\" ,  "/" ));
		    	System.out.println(" 스플릿한 경로 : " + thumbPath);
    		}
    		else {
    			artclView.setImg_Path(artclView.getImg_Path().replace("\\", "/"));
    		}
	    }
	    
	    	    
	    artclView.setHit(artclView.getHit()+1); // 조회수 업데이트
	    System.out.println("조회수 : " + artclView.getHit());
	    mediaMH_Service.hitUpMMH(artclView);
	    
		model.addAttribute("artclView", artclView);
		model.addAttribute("paging", paging);
	    
		ModelAndView mav = new ModelAndView("services/introduce/introduce3_detail");
		
		return mav;
	}
	
}
