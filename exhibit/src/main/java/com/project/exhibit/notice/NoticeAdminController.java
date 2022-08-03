package com.project.exhibit.notice;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.exhibit.util.FileUtil;
import com.project.exhibit.util.SearchPageVO;



@Controller
@RequestMapping("/admin/notice")
public class NoticeAdminController {

	@Autowired
	private NoticeService notice_Service;
	
	/**
	 * 공지사항 관리자 등록 페이지 이동
	 * @return noticeRegistView
	 * */
	@RequestMapping("/registView")
	public ModelAndView RegistView(
			@ModelAttribute("notice") Notice notice,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage
			) {
		
		
		ModelAndView mav = new ModelAndView("/admin/notice/noticeRegistView");
		
		return mav;
	}
	
	/**
	 * 공지사항 관리자 등록
	 * @return noticeRegist
	 * */
	@RequestMapping("/regist")
	public String Regist(
			@ModelAttribute("notice") Notice notice,
			HttpServletRequest request,
			@RequestParam("img_file_artcl") MultipartFile[] uploadFile
			) {
		System.out.println("공지사항 관리자 등록 /regist");
		
		// 파일 저장경로 
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		System.out.println("(1) contextRoot => " + contextRoot);
		contextRoot = contextRoot + "assets\\thumbnail\\notice\\";
		System.out.println("(2) contextRoot => " + contextRoot);
		
		File uploadPath = new File(contextRoot, FileUtil.getFolder());
		
		if(uploadPath.exists()==false) { //해당 경로가 없으면 생성
			uploadPath.mkdirs();			
		}
		
		for( MultipartFile upfile :  uploadFile) {
			System.out.println("");
			System.out.println("파일명 : " + upfile.getOriginalFilename());
			System.out.println("파일사이즈 : " + upfile.getSize());
			
			//-----------UUID 파일명 처리 시작 ----------------------------
			//동일한 이름으로 업로드되면 기존 파일을 지우게 되므로 이를 방지하기 위함
			UUID uuid = UUID.randomUUID();
			System.out.println("uuid??? => " + uuid.toString());
			
			String uploadFileName = uuid.toString() + "-" + upfile.getOriginalFilename();
			
			File saveFile = new File(uploadPath, uploadFileName);
			//-----------UUID 파일명 처리 끝 ---------------------------
			
			try {
				//setUuid(uuid.toString);
				
				//-------썸네일 처리 시작---------
				//이미지 파일인지 체킹
				if(FileUtil.checkImageType(saveFile)) {
					System.out.println("이미지 파일 = true");
					  
					//uploadPath : 연/월/일이 포함된 경로 //uploadFileName : UUID가 포함된 파일명
					//FileOutputStream orignThumbnail = new FileOutputStream( new File( uploadPath, uploadFileName)); 
					//Thumbnailator.createThumbnail(upfile.getInputStream(), orignThumbnail);
					//Thumbnails.of(new File(uploadPath + uploadFileName)).size(100, 200).toFiles(uploadPath, Rename.NO_CHANGE);
					
					//FileOutputStream thumbnail = new FileOutputStream( new File( uploadPath, "s_"+uploadFileName)); 
					//Thumbnailator.createThumbnail(upfile.getInputStream(), thumbnail, 200, 200);
					
					//thumbnail.close();
					 
					upfile.transferTo(saveFile);
					
					
					notice.setImg_Path(uploadPath.getPath());
					notice.setImg_Origin_Nm(upfile.getOriginalFilename());
					notice.setImg_File_Nm(uploadFileName);
				}else {
					System.out.println("이미지 파일 = false");
				}
				//-------썸네일 처리 끝---------
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 			
		}
		
		notice_Service.insertNotice(notice);
		
		return "redirect:/admin/notice/artclList";
	}
	
	/**
	 * 공지사항 관리자 등록글 상세페이지
	 * @return noticeRegistView
	 * */
	@RequestMapping("/{artcl_Seq}/artclView")
	public ModelAndView artclView(
			@ModelAttribute("notice") Notice notice,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		System.out.println("공지사항 관리자 등록글 상세페이지");
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
	
	    if(artclView.getImg_Path() == null) {
    	System.out.println("이미지 없음");
    	}
	    
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
	    
		model.addAttribute("artclView", artclView);
		model.addAttribute("paging", paging);
	    
		ModelAndView mav = new ModelAndView("admin/notice/noticeArtclView");
		
		return mav;
	}
	
	/**
	 * 공지사항 관리자 수정 페이지 이동
	 * @return noticeRegistView
	 * */
	@RequestMapping("/updateView")
	public ModelAndView UpdateView(
			@ModelAttribute("notice") Notice notice
			) {
		System.out.println("수정 페이지 이동");
		System.out.println(notice.getArtcl_Seq());
		notice_Service.updateNotice(notice);
		
		ModelAndView mav = new ModelAndView("admin/notice/noticeUpdateView");
		
		return mav;
	}
	
	/**
	 * 공지사항 관리자 페이지
	 * @return notice
	 * */
	@RequestMapping("/artclList")
	public ModelAndView getAdminArclList(
			@ModelAttribute("notice") Notice notice,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		System.out.println("notice 어드민 시작");
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
	    	
	    	System.out.println("v v v v 이미지 파일 이름 v v v v");
	    	System.out.println(e.getImg_File_Nm());
	    	System.out.println(" ");
	    }
	    
	    model.addAttribute("artclList", artclList);
	    model.addAttribute("paging", paging);
		ModelAndView mav = new ModelAndView("/admin/notice/noticeList");
		
		return mav;
	}
}
