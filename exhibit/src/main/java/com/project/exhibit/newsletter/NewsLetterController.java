package com.project.exhibit.newsletter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.exhibit.util.SearchPageVO;

@Controller
@RequestMapping("newsletter")
public class NewsLetterController {
	
	@Autowired
	private NewsLetterService newsletter_Service;
	
	/**
	 * 뉴스레터 페이지 이동
	 * */
	@RequestMapping("/news3")
	public ModelAndView getArtclList(
			@ModelAttribute("newsletter") NewsLetter newsletter,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		
		System.out.println("newsletter 사용자 게시판 시작");
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
	        cntPerPage = "10"; // 보여줄 라인 수 ex.) 5줄 보여주겠다
    	}
	    int total = newsletter_Service.selectNewsLetterCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    List<NewsLetter> artclList = newsletter_Service.selectNewsLetter(paging);
	    
	    System.out.println("리스트 출력");
	    for(NewsLetter e : artclList) {
	    	System.out.println("순번 : " + e.getArtcl_Seq());
	    	System.out.println("제목 : " + e.getTitle());
	    	//System.out.println("내용 : " + e.getContent());
	    	//System.out.println("작성자 : " + e.getWriter());
	    	//System.out.println("등록날짜 = > " + e.getReg_date());
	    	if(e.getImg_Path() !=null) {
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
		
	    ModelAndView mav = new ModelAndView("/services/news/news3");
		
		return mav;
		
	}
	
	/**
	@RequestMapping(value = "/news1")
	public ModelAndView news1() {
		
		System.out.println("Controller news1");
		ModelAndView mav = new ModelAndView("/services/news/news1");
		
		return mav;
	}
	
	@RequestMapping(value = "/news1_detail")
	public ModelAndView news1_detail() {
		
		System.out.println("Controller news1_detail");
		ModelAndView mav = new ModelAndView("/services/news/news1_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news2")
	public ModelAndView news2() {
		
		System.out.println("Controller news2");
		ModelAndView mav = new ModelAndView("/services/news/news2");
		
		return mav;
	}
	
	@RequestMapping(value = "/news2_detail")
	public ModelAndView news2_detail() {
		
		System.out.println("Controller news2_detail");
		ModelAndView mav = new ModelAndView("/services/news/news2_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news3")
	public ModelAndView news3() {
		
		System.out.println("Controller news3");
		ModelAndView mav = new ModelAndView("/services/news/news3");
		
		return mav;
	}
	
	@RequestMapping(value = "/news3_detail")
	public ModelAndView news3_detail() {
		
		System.out.println("Controller news3_detail");
		ModelAndView mav = new ModelAndView("/services/news/news3_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news4")
	public ModelAndView news4() {
		
		System.out.println("Controller news4");
		ModelAndView mav = new ModelAndView("/services/news/news4");
		
		return mav;
	}
	
	@RequestMapping(value = "/news4_detail")
	public ModelAndView news4_detail() {
		
		System.out.println("Controller news4_detail");
		ModelAndView mav = new ModelAndView("/services/news/news4_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/news4_write")
	public ModelAndView news4_write() {
		
		System.out.println("Controller news4_write");
		ModelAndView mav = new ModelAndView("/services/news/news4_write");
		
		return mav;
	}
	
	@RequestMapping(value = "/news5")
	public ModelAndView news5() {
		
		System.out.println("Controller news5");
		ModelAndView mav = new ModelAndView("/services/news/news5");
		
		return mav;
	}
	**/
}
