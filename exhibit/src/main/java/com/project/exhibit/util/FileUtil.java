package com.project.exhibit.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;

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
}