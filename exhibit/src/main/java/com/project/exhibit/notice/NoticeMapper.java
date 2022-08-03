package com.project.exhibit.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.exhibit.mediaMemorialHall.MediaMemorialHall;
import com.project.exhibit.util.SearchPageVO;

@Mapper
public interface NoticeMapper {

	// (관리자) 공지사항 INSERT(등록)
	void insertNotice(Notice notice);
	
	// (관리자) 공지사항 UPDATE(수정)
	void updateNotice(Notice notice);
	
	// (관리자) 공지사항 DELETE(삭제)
	void deleteNotice(Notice notice);
	
	// (관리자, 사용자) 공지사항 SELECT(출력)
	List<Notice> selectNotice(SearchPageVO vo);
	
	// (관리자, 사용자) 공지사항 Count SELECT(출력)
	int selectNoticeCount(SearchPageVO vo);
	
	// (관리자, 사용자) 공지사항 상세글 SELECT(출력)
	Notice selectNoticeView(Notice notice);
	
	// (관리자, 사용자) 공지사항 상세글 SELECT 시, 이전 글 정보(출력)
	Notice selectMMH_Preview(int artcl_Seq);
	
	// (관리자, 사용자) 공지사항 상세글 SELECT 시, 다음 글 정보(출력)
	Notice selectMMH_Nextview(int artcl_Seq);
	
	// (사용자) 공지사항 조회수 업데이트
	void hitUpMMH(Notice notice);
}
