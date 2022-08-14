package com.project.exhibit.newsletter;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
@RequestMapping("admin/newsletter")
public class NewsLetterAdminController {

	@Autowired
	private NewsLetterService newsletter_Service;
	
	/**
	 * 뉴스레터 관리자 화면
	 */
	
	@RequestMapping("/artclList")
	public ModelAndView getArtclList(
			@ModelAttribute("newsletter") NewsLetter newsletter,
			@ModelAttribute("vo") SearchPageVO vo,
			@ModelAttribute("category") NewsLetterCategory category,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		int spage = 1; // 기존 페이지
		if (nowPage != null && !nowPage.equals("")) {
		       spage = Integer.parseInt(nowPage); // nowPage가 없다면 기존 페이지인 1페이지
	    }
	    if (cntPerPage == null) {
	        cntPerPage = "16"; // 보여줄 라인 수 ex.) 5줄 보여주겠다
    	}
	    int total = newsletter_Service.selectNewsLetterCount(vo);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    List<NewsLetter> artclList = newsletter_Service.selectNewsLetter(paging);
	    
	    for(NewsLetter e : artclList) {
	    	if(e.getImg_Path() !=null) {
	    		if( e.getImg_Path().contains("webapp") ) {
		    		String thumbPath = e.getImg_Path().split("webapp")[1].replace( "\\" ,  "/" );
			    	e.setImg_Path(thumbPath);	
	    		}
	    		else {
	    			e.setImg_Path(e.getImg_Path().replace("\\", "/"));
	    		}
	    	}
	    }
	    
	    // 카테고리 리스트 출력
	    List<NewsLetterCategory> categoryList = newsletter_Service.selectCategory();
	    
	    model.addAttribute("categoryList", categoryList);
	    model.addAttribute("artclList", artclList);
	    model.addAttribute("paging", paging);
		
	    ModelAndView mav = new ModelAndView("/admin/newsletter/newsLetterList");
		
		return mav;
		
	}
	
	/**
	 * 카테고리 추가
	 */
	@RequestMapping("/addCategory")
	public String addCategory(
			@ModelAttribute("category") NewsLetterCategory category
			) {
		System.out.println("카테고리 추가");
		System.out.println("생성할 카테고리 이름 => " + category.getCategory());
		newsletter_Service.insertCategory(category);
		
		return "redirect:/admin/newsletter/artclList";
	}
	
	/**
	 * 뉴스레터 사용자 등록 페이지 이동
	 * @return newsLetterRegistView
	 * */
	@RequestMapping("/registView")
	public ModelAndView RegistView(
			@ModelAttribute("newsletter") NewsLetter newsletter,
			//@ModelAttribute("category") NewsLetterCategory category,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		List<NewsLetterCategory> categoryList = newsletter_Service.selectCategory();
		model.addAttribute("categoryList", categoryList);
		
		ModelAndView mav = new ModelAndView("/admin/newsletter/newsLetterRegist");
		
		return mav;
	}
	
	/**
	 * 뉴스레터 게시판 등록
	 * @return artclList
	 * */
	@RequestMapping("/regist")
	public String Regist(
			@ModelAttribute("newsletter") NewsLetter newsletter,
			@ModelAttribute("atchmnfl") NewsLetterAtchmnfl atchmnfl,
			HttpServletRequest request,
			@RequestParam("img_file_artcl") MultipartFile imgUploadFile,
			@RequestParam("file_artcl") List<MultipartFile> uploadFile
			) {
		System.out.println("뉴스레터 등록 /regist");
		System.out.println("카테고리 seq => " + newsletter.getCategory_Seq() + " && 카테고리 값 => " + newsletter.getCategory());
		
		if( imgUploadFile.getName() != null && imgUploadFile.getSize() > 0) {
			// 이미지파일 저장경로 
			String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
			contextRoot = contextRoot + NewsLetterService.img_Path;
			
			File uploadPath = new File(contextRoot, FileUtil.getFolder());
			StringBuffer uploadFileName = null;
			
			//-----------UUID 파일명 처리 시작 ----------------------------
			//동일한 이름으로 업로드되면 기존 파일을 지우게 되므로 이를 방지하기 위함
			UUID uuid = UUID.randomUUID();
			System.out.println("uuid??? => " + uuid.toString());
			
			uploadFileName = new StringBuffer();
			uploadFileName.append(uuid.toString())
						  .append("-")
						  .append(imgUploadFile.getOriginalFilename());
			
			File saveFile = new File(uploadPath, uploadFileName.toString());
			//-----------UUID 파일명 처리 끝 ---------------------------
			if( FileUtil.checkImageType(saveFile) ) {
				if(uploadPath.exists()==false) { //해당 경로가 없으면 생성
					uploadPath.mkdirs();			
				}
				System.out.println("이미지 파일 = true");
				try {
					imgUploadFile.transferTo(saveFile);
					// 이 로직은 하나의 파일만 업로드 가능함....
					newsletter.setImg_Path(uploadPath.getPath());
					newsletter.setImg_Origin_Nm(imgUploadFile.getOriginalFilename());
					newsletter.setImg_File_Nm(uploadFileName.toString());
				} catch (IllegalStateException | IOException e) {
					System.out.println("이미지 파일 업로드 실패");
					//e.printStackTrace();
				}
			}else {
				System.out.println("이미지 파일 = false");
			}		
					
		}
		
		newsletter_Service.insertNewsLetter(newsletter);

		// ------------------------------------- 첨부파일 업로드  ------------------------------------------
		//if( uploadFile != null && uploadFile.size() > 0 && !"".equals(uploadFile.get(0).getName())) {
		if( !"".equals(uploadFile.get(0).getName()) && uploadFile.get(0).getSize() > 0) {
			List<NewsLetterAtchmnfl> atchmnflList = new ArrayList<NewsLetterAtchmnfl>();
			String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
			contextRoot = contextRoot + NewsLetterService.doc_Path;
			File uploadPath = new File(contextRoot, FileUtil.getFolder());
			StringBuffer uploadFileName = null;
			int listIndex = 0;
			
			for( MultipartFile upfile :  uploadFile) {
				System.out.println("");
				System.out.println("파일명 : " + upfile.getOriginalFilename());
				System.out.println("파일사이즈 : " + upfile.getSize());
				
				//-----------UUID 파일명 처리 시작 ----------------------------
				//동일한 이름으로 업로드되면 기존 파일을 지우게 되므로 이를 방지하기 위함
				UUID uuid = UUID.randomUUID();
				System.out.println("uuid??? => " + uuid.toString());
				
				uploadFileName = new StringBuffer();
				uploadFileName.append(uuid.toString())
							  .append("-")
							  .append(upfile.getOriginalFilename());
				
				File saveFile = new File(uploadPath, uploadFileName.toString());
				//-----------UUID 파일명 처리 끝 ---------------------------

				if(uploadPath.exists()==false) { //해당 경로가 없으면 생성
					uploadPath.mkdirs();			
				}
				try {
					upfile.transferTo(saveFile);
					atchmnfl = new NewsLetterAtchmnfl();
					atchmnfl.setDoc_Path(uploadPath.getPath());
					atchmnfl.setDoc_Origin_Nm(upfile.getOriginalFilename());
					atchmnfl.setDoc_File_Nm(uploadFileName.toString());
					atchmnfl.setArtcl_Seq(newsletter.getArtcl_Seq());
					atchmnfl.setWriter(newsletter.getWriter());
					
				} catch (IllegalStateException | IOException e) {
					System.out.println("이미지 파일 업로드 실패");
					//e.printStackTrace();
				}
				atchmnflList.add(listIndex, atchmnfl);
				listIndex++;
			}
			
			newsletter_Service.insertAtchmnfl(atchmnflList);
		}
		
		
		//return "redirect:/admin/newsletter/artclList";
		return "redirect:/admin/newsletter/artclList";
	}
	
	/**
	 * 뉴스레터 상세페이지
	 * @return newsLetterRegistView
	 * */
	@RequestMapping("/{artcl_Seq}/artclView")
	public ModelAndView artclView(
			@ModelAttribute("newsletter") NewsLetter newsletter,
			@ModelAttribute("vo") SearchPageVO vo,
			String nowPage,
			String cntPerPage,
			Model model
			) {
		System.out.println("뉴스레터 등록글 상세페이지");
		System.out.println("artcl_Seq => " + newsletter.getArtcl_Seq());
		System.out.println("nowPage => " + nowPage);
		System.out.println("cntPerPage => " + cntPerPage);
		
		int spage = 1; // 기존 페이지
		if (nowPage != null && !nowPage.equals("")) {
		       spage = Integer.parseInt(nowPage); // nowPage가 없다면 기존 페이지인 1페이지
	    }
	    if (cntPerPage == null) {
	        cntPerPage = "5"; // 보여줄 라인 수 10줄 보여주겠다
    	}
	    int total = newsletter_Service.selectNewsLetterCount(vo);
		
	    System.out.println("카운트 => " + total);
	    
	    SearchPageVO paging = new SearchPageVO(total, spage, Integer.parseInt(cntPerPage)); // 토탈값, 현재페이지, 보여줄 라인 수
	    paging.setSearchType(vo.getSearchType());
	    paging.setSearchValue(vo.getSearchValue());
	    
	    NewsLetter artclView = newsletter_Service.selectNewsLetterView(newsletter);
	    
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
	    
	    List<Map<String, String>> selectAtchmnfl = newsletter_Service.selectAtchmnfl(artclView); 
	    System.out.println("맵 결과");
	    System.out.println(selectAtchmnfl.toString());
	    
	    model.addAttribute("atchmnfl", selectAtchmnfl);
	    
	    artclView.setHit(artclView.getHit()+1); // 조회수 업데이트
	    System.out.println("조회수 : " + artclView.getHit());
	    newsletter_Service.hitUp(artclView);
	    
		model.addAttribute("artclView", artclView);
		model.addAttribute("paging", paging);
	    
		ModelAndView mav = new ModelAndView("admin/newsletter/newsLetterRegistView");
		
		return mav;
	}
	
	// 파일 다운로드
	@RequestMapping("/fileDownload")
	public  void fileDownload(
			  @ModelAttribute("atchmnfl") NewsLetterAtchmnfl atchmnfl
			, HttpSession session
			, HttpServletRequest req
			, HttpServletResponse res
			, ModelAndView mav) throws Throwable {
		
		System.out.println("다운로드로직");
		System.out.println(atchmnfl.getAtchmnfl_Seq());
		
		atchmnfl = newsletter_Service.downloadAtchmnfl(atchmnfl);
		atchmnfl.setDoc_Path(atchmnfl.getDoc_Path().replace("\\", "/"));
		System.out.println("파일 경로 : " + atchmnfl.getDoc_Path());
		System.out.println("파일 이름 : " + atchmnfl.getDoc_File_Nm());
		System.out.println("파일 찐이름 : " + atchmnfl.getDoc_Origin_Nm());
		try {
			FileUtil fileDown = new FileUtil(); //파일다운로드 객체생성
			//fileDown.filDown(req, res, "파일경로입력" + "/" , "파일이름이력", "다운받았을때출력되는파일이름입력"); //파일다운로드 
			
			fileDown.filDown(req, res, atchmnfl.getDoc_Path() + "/" , atchmnfl.getDoc_File_Nm(), atchmnfl.getDoc_Origin_Nm());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
