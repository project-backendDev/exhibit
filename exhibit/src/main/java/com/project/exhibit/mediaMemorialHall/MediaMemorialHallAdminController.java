package com.project.exhibit.mediaMemorialHall;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import net.coobird.thumbnailator.Thumbnailator;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.name.Rename;


@Controller
@RequestMapping("/admin/mediaMemorialHall")
public class MediaMemorialHallAdminController {

	@Autowired
	private MediaMemorialHallService mediaMH_Service;
	
	//첨부파일을 보관하는 폴더를 연/월/일 계층 형태로 생성하기 위함
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	//특정한 파일이 이미지 타입인지 검사해주는 메소드
	private boolean checkImageType(File file) {
		try {
			//file.toPath() : 파일의 전체 경로
			System.out.println("file.toPath() : " + file.toPath());
			String contentType = Files.probeContentType(file.toPath());
			System.out.println("contentType : " + contentType);
			//contentType이 image로 시작하면 이미지 타입이므로 true를 리턴함
			return contentType.startsWith("image");
		}catch(IOException e) {
			e.printStackTrace();
		}
		return false;
	}
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
			@ModelAttribute("mmh") MediaMemorialHall mmh,
			HttpServletRequest request,
			@RequestParam("img_file_artcl") MultipartFile[] uploadFile
			) {
		System.out.println("언론에 비친 기념관 관리자 등록 /regist");
		
		// 파일 저장경로 
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		System.out.println("(1) contextRoot => " + contextRoot);
		contextRoot = contextRoot + "assets\\thumbnail\\";
		System.out.println("(2) contextRoot => " + contextRoot);
		
		File uploadPath = new File(contextRoot, getFolder());
		
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
				if(checkImageType(saveFile)) {
					System.out.println("이미지 파일 = true");
					  
					//uploadPath : 연/월/일이 포함된 경로 //uploadFileName : UUID가 포함된 파일명
					//FileOutputStream orignThumbnail = new FileOutputStream( new File( uploadPath, uploadFileName)); 
					//Thumbnailator.createThumbnail(upfile.getInputStream(), orignThumbnail);
					//Thumbnails.of(new File(uploadPath + uploadFileName)).size(100, 200).toFiles(uploadPath, Rename.NO_CHANGE);
					
					//FileOutputStream thumbnail = new FileOutputStream( new File( uploadPath, "s_"+uploadFileName)); 
					//Thumbnailator.createThumbnail(upfile.getInputStream(), thumbnail, 200, 200);
					
					//thumbnail.close();
					 
					upfile.transferTo(saveFile);
					
					
					mmh.setImg_Path(uploadPath.getPath());
					mmh.setImg_Origin_Nm(upfile.getOriginalFilename());
					mmh.setImg_File_Nm(uploadFileName);
				}else {
					System.out.println("이미지 파일 = false");
				}
				//-------썸네일 처리 끝---------
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 			
		}
		
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
	        cntPerPage = "5"; // 보여줄 라인 수 10줄 보여주겠다
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
	        cntPerPage = "5"; // 보여줄 라인 수 10줄 보여주겠다
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
	    	
	    	System.out.println("v v v v 이미지 파일 이름 v v v v");
	    	System.out.println(e.getImg_File_Nm());
	    	System.out.println(" ");
	    }
	    
	    model.addAttribute("artclList", artclList);
	    model.addAttribute("paging", paging);
		ModelAndView mav = new ModelAndView("/admin/mediamemorialhall/mediaMemorialHall");
		
		return mav;
	}
}
