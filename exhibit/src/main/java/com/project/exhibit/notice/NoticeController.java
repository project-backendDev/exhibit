package com.project.exhibit.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.exhibit.util.SearchPageVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService notice_Service;
	
	/**
	 * 공지사항 페이지
	 * @return news1
	 * */
	@RequestMapping("/news1")
	public ModelAndView getArtclList(
			@ModelAttribute("notice") Notice notice,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		
		System.out.println("notice 사용자 게시판 시작");
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
	    int total = notice_Service.selectNoticeCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    List<Notice> artclList = notice_Service.selectNotice(paging);
	    
	    System.out.println("리스트 출력");
	    for(Notice e : artclList) {
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
		ModelAndView mav = new ModelAndView("/services/news/news1");
		
		return mav;
		
	}
	
	/**
	 * 공지사항 상세페이지
	 * @return news1_detail
	 * */
	@RequestMapping("/{artcl_Seq}/artclView")
	public ModelAndView artclView(
			@ModelAttribute("notice") Notice notice,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		System.out.println("공지사항 등록글 상세페이지");
		System.out.println("artcl_Seq => " + notice.getArtcl_Seq());
		System.out.println("nowPage => " + nowPage);
		System.out.println("cntPerPage => " + cntPerPage);
		
		int spage = 1; // 기존 페이지
		if (nowPage != null && !nowPage.equals("")) {
		       spage = Integer.parseInt(nowPage); // nowPage가 없다면 기존 페이지인 1페이지
	    }
	    if (cntPerPage == null) {
	        cntPerPage = "5"; // 보여줄 라인 수 10줄 보여주겠다
    	}
	    int total = notice_Service.selectNoticeCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    
	    Notice artclView = notice_Service.selectNoticeView(notice);
	    
	    /*if(artclView.getImg_Path() == null) {
	    	System.out.println("이미지 없음");
	    }*/
	    
	    if(artclView.getImg_Path() !=null) {
	    	
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
	    notice_Service.hitUpMMH(artclView);
	    
		model.addAttribute("artclView", artclView);
		model.addAttribute("paging", paging);
	    
		ModelAndView mav = new ModelAndView("services/news/news1_detail");
		
		return mav;
	}
	
}
