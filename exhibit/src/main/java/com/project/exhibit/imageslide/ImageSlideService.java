package com.project.exhibit.imageslide;

import org.springframework.stereotype.Service;

@Service
public class ImageSlideService {

	private ImageSlideMapper mapper;
	
	public void insertImageSlide(ImageSlide imgSlide) {
		mapper.insertImageSlide(imgSlide);
	}
}
