package com.project.exhibit.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {

	// 공지사항 등록
	void insertNotice(Notice notice);
	
	// 공지사항 리스트
	public List<Notice> getNoticeList();
}
