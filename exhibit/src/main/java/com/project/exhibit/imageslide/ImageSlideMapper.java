package com.project.exhibit.imageslide;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImageSlideMapper {

	// (관리자) 이미지 슬라이드 INSERT
	void insertImageSlide(ImageSlide imgSlide);
	
	// (관리자) 이미지 슬라이드 DELETE
	void deleteImageSlide();
	
	// (관리자) 이미지 슬라이드 INSERT 시 데이터를 새로 쓰기 위한 DELETE
	List<ImageSlide> selectImageSlideList();
	
	// (관리자) 관리자 페이지에서 1개씩 삭제하기 위한 DELETE
	void deleteImageSlideBySeq(int artcl_seq);
}
