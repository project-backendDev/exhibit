package com.project.exhibit.mediaMemorialHall;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.exhibit.util.SearchPageVO;

@Mapper
public interface MediaMemorialHallMapper {
	
	// (관리자) 언론에 비친 기념관 INSERT(등록)
	void insertMediaMemorialHall(MediaMemorialHall mmh);
	
	// (관리자) 언론에 비친 기념관 UPDATE(수정)
	void updateMediaMemorialHall(MediaMemorialHall mmh);
	
	// (관리자) 언론에 비친 기념관 DELETE(삭제)
	void deleteMediaMemorialHall(MediaMemorialHall mmh);
	
	// (관리자, 사용자) 언론에 비친 기념관 SELECT(출력)
	List<MediaMemorialHall> selectMediaMemorialHall(SearchPageVO vo);
	
	// (관리자, 사용자) 언론에 비친 기념관 Count SELECT(출력)
	int selectMediaMemorialHallCount(SearchPageVO vo);
	
	// (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT(출력)
	MediaMemorialHall selectMediaMemorialHallView(MediaMemorialHall mmh);
	
	// (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT 시, 이전 글 정보(출력)
	MediaMemorialHall selectMMH_Preview(int artcl_Seq);
	
	// (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT 시, 다음 글 정보(출력)
	MediaMemorialHall selectMMH_Nextview(int artcl_Seq);
	
	// (사용자) 언론에 비친 기념관 조회수 업데이트
	void hitUpMMH(MediaMemorialHall artclView);
	
	
}
