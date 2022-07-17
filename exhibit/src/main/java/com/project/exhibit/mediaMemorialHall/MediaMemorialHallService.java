package com.project.exhibit.mediaMemorialHall;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediaMemorialHallService {
	
	@Autowired
	private MediaMemorialHallMapper mapper;
	
	// (관리자) 언론에 비친 기념관 INSERT(등록)
	public void insertMediaMemorialHall(MediaMemorialHall mmh) {
		mapper.insertMediaMemorialHall(mmh);
	}
	
	// (관리자) 언론에 비친 기념관 UPDATE(수정)
	public void updateMediaMemorialHall(MediaMemorialHall mmh) {
		mapper.updateMediaMemorialHall(mmh);
	}
	
	// (관리자) 언론에 비친 기념관 DELETE(삭제)
	public void deleteMediaMemorialHall(MediaMemorialHall mmh) {
		mapper.deleteMediaMemorialHall(mmh);
	}
	
	// (관리자, 사용자) 언론에 비친 기념관 SELECT(출력)
	public List<MediaMemorialHall> selectMediaMemorialHall(MediaMemorialHall mmh){
		System.out.println("(관리자, 사용자) 언론에 비친 기념관 SELECT(출력)");
		
		return mapper.selectMediaMemorialHall(mmh);
	}
}
