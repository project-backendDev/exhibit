package com.project.exhibit.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	
	//첨부파일을 보관하는 폴더를 연/월/일 계층 형태로 생성하기 위함
	public static String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	//특정한 파일이 이미지 타입인지 검사해주는 메소드
	public static boolean checkImageType(File file) {
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
	
	// 이미지 파일 저장
	public static void imgFileSave(String contextRoot, MultipartFile[] file) {
		
		File uploadPath = new File(contextRoot, getFolder());
		StringBuffer uploadFileName = null;
		
		for( MultipartFile upfile : file ) {
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
			if( checkImageType(saveFile) ) {
				if(uploadPath.exists()==false) { //해당 경로가 없으면 생성
					uploadPath.mkdirs();			
				}
				System.out.println("이미지 파일 = true");
				try {
					upfile.transferTo(saveFile);
				} catch (IllegalStateException | IOException e) {
					System.out.println("이미지 파일 업로드 실패");
					//e.printStackTrace();
				}
			}else {
				System.out.println("이미지 파일 = false");
			}
		}
			
	}
	
}