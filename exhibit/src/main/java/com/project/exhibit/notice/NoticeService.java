package com.project.exhibit.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class NoticeService {

	@Autowired
	private NoticeMapper mapper;
	
	// 공지사항 등록
	public void insertNotice(Notice notice) {
		mapper.insertNotice(notice);
	}
	
	// 공지사항 목록 출력
	public List<Notice> getNoticeList(){
		System.out.println("NoticeService 의 getNoticeList 시작");
		return mapper.getNoticeList();
	}
	
	
	
}
