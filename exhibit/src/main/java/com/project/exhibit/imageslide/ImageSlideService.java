package com.project.exhibit.imageslide;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageSlideService {

	@Autowired
	private ImageSlideMapper mapper;
	
	// (관리자) 이미지 슬라이드 INSERT
	public void insertImageSlide(ImageSlide imgSlide) {
		mapper.insertImageSlide(imgSlide);
	}
	
	// (관리자) 이미지 슬라이드 DELETE
	public void deleteImageSlide() {
		mapper.deleteImageSlide();
	}
	
	// (관리자) 이미지 슬라이드 SELECT
	public List selectImageSlideList() {
		return mapper.selectImageSlideList();
	}
	
	// (관리자) 관리자 페이지에서 1개씩 삭제하기 위한 DELETE
	public void deleteImageSlideBySeq(int artcl_seq) {
		mapper.deleteImageSlideBySeq(artcl_seq);
	}
}
