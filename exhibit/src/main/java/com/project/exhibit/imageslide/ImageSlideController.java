package com.project.exhibit.imageslide;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

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
	
	@ResponseBody
	@RequestMapping(value = "/admin/imgRegist.do", method = RequestMethod.POST)
	public String imgRegist(HttpServletRequest request, @RequestParam("artcl_file") List<MultipartFile> multipartFile) {
		
		System.out.println("imgRegist Controller Start!!!");
		
		String result = "{ \"result\" : \"FAIL\" }";
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		
		try {
			// 파일이 있을때
			if (multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
				for (MultipartFile file : multipartFile) {
					
					fileRoot = contextRoot + "img/upload/";
					System.out.println("fileRoot	::	" + fileRoot);
					
					// 오리지널 파일명
					String originalFileName = file.getOriginalFilename();
					// 파일 확장자
					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
					// 저장될 파일명
					String savedFileName = UUID.randomUUID() + extension;
					File targetFile = new File(fileRoot + savedFileName);
					
					try {
						InputStream fileStream = file.getInputStream();
						// 파일 저장
						FileUtils.copyInputStreamToFile(fileStream, targetFile);
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
}
