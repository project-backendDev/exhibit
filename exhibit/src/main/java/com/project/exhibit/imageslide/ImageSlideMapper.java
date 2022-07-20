package com.project.exhibit.imageslide;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImageSlideMapper {

	// (관리자) 이미지 슬라이드 INSERT
	void insertImageSlide(ImageSlide imgSlide);
}
