package com.project.exhibit.imageslide;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageSlideController {
	// 파일을 저장 할 경로
	// Resource res = resLoader.getResource("resources/upload");

	@Autowired
	private ImageSlideService img_Service;
	
	/**
	 * 프로젝트 경로 및 DB에 이미지 등록하는 메소드
	 * @param request
	 * @param multipartFile
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/admin/imgRegist.do", method = RequestMethod.POST)
	public String imgRegist(HttpServletRequest request, @RequestParam("artcl_file") List<MultipartFile> multipartFile) {

		//HttpSession session = request.getSession(false);
		
		String result = "{ \"result\" : \"FAIL\" }";
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		try {
			// 파일이 있을때
			if (multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
//				img_Service.deleteImageSlide();
				
				ImageSlide imgSlide = new ImageSlide();
				fileRoot = contextRoot + "img/upload/";
				System.out.println("fileRoot	::	" + fileRoot);
				File imgDir = new File(fileRoot);
				
				// 이미지를 저장할 폴더가 없을때 폴더 생성
				if (!imgDir.exists()) {
					System.out.println("폴더생성");
					imgDir.mkdir();
				}
				
				/** 삭제하지 않기위해 주석처리
				 
				// 이미지를 등록할 때마다 안에 있는 파일들을 삭제
				if (imgDir.exists()) {
					System.out.println("폴더있음");
					String[] files = imgDir.list();
					
					System.out.println("이미지 리스트	::	" + files);
					
					for (int i = 0; i < files.length; i++) {
						File f = new File(fileRoot + files[i]);
						f.delete();
						System.out.println("폴더 안에 파일 삭제");
					}
				}
				
				*/
				
				// 받은 파일들을 INSERT
				for (MultipartFile file : multipartFile) {
					
					// 오리지널 파일명
					String originalFileName = file.getOriginalFilename();
					// 파일 확장자
					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
					// 저장될 파일명
					String savedFileName = UUID.randomUUID() + extension;
					
					// ImageSlide DB에 오리지널 파일 넣기
					imgSlide.setOrigin_Nm(originalFileName);
					// ImageSlide DB에 변경된 파일 넣기
					imgSlide.setChange_Nm(savedFileName);
					// ImageSlide DB에 url 넣기
					imgSlide.setUrl("img/upload/" + savedFileName);
					
					File targetFile = new File(fileRoot + savedFileName);
					
					try {
						InputStream fileStream = file.getInputStream();
						// 파일 저장
						FileUtils.copyInputStreamToFile(fileStream, targetFile);
						// ImageSlide DB에 저장
						img_Service.insertImageSlide(imgSlide);
					} catch (Exception e) { // 파일 삭제	
						// 저장된 현재 파일 삭제
						FileUtils.deleteQuietly(targetFile);
						
						e.printStackTrace();
						break;
					}
				}
				
				result = "{ \"result\" : \"OK\" }";
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("imgRegist Controller End!!!");
		
		return result;
	}
	
	
	
	/**
	 * 이미지 삭제  메소드
	 * @param artcl_seq
	 * @return
	 */
	@RequestMapping(value = "/admin/imgDelete.do")
	public String imgDelete(HttpServletRequest request, @RequestParam(value = "artcl_seq") int artcl_seq) {
		
//		HttpSession session = request.getSession(false);
		
		System.out.println("DeleteController	artcl_seq		::	" + artcl_seq);
		img_Service.deleteImageSlideBySeq(artcl_seq);
		
		return "redirect:/admin";
	}
}
