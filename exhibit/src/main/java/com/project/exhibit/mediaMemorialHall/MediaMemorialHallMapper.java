package com.project.exhibit.mediaMemorialHall;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MediaMemorialHallMapper {
	
	// (관리자) 언론에 비친 기념관 INSERT(등록)
	void insertMediaMemorialHall(MediaMemorialHall mmh);
	
	// (관리자) 언론에 비친 기념관 UPDATE(수정)
	void updateMediaMemorialHall(MediaMemorialHall mmh);
	
	// (관리자) 언론에 비친 기념관 DELETE(삭제)
	void deleteMediaMemorialHall(MediaMemorialHall mmh);
	
	// (관리자, 사용자) 언론에 비친 기념관 SELECT(출력)
	List<MediaMemorialHall> selectMediaMemorialHall();
	
}
