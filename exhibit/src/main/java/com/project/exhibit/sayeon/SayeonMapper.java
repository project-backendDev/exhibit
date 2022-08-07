package com.project.exhibit.sayeon;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.exhibit.util.SearchPageVO;

@Mapper
public interface SayeonMapper {
	
	// (관리자) 사연남기기 INSERT(등록)
	void insertSayeon(Sayeon sayeon);
		
	// (관리자) 사연남기기 UPDATE(수정)
	void updateSayeon(Sayeon sayeon);
	
	// (관리자) 사연남기기 DELETE(삭제)
	void deleteSayeon(Sayeon sayeon);
	
	// (관리자, 사용자) 사연남기기 SELECT(출력)
	List<Sayeon> selectSayeon(SearchPageVO vo);
	
	// (관리자, 사용자) 사연남기기 Count SELECT(출력)
	int selectSayeonCount(SearchPageVO vo);
	
	// (관리자, 사용자) 사연남기기 상세글 SELECT(출력)
	Sayeon selectSayeonView(Sayeon sayeon);
	
	// (관리자, 사용자) 사연남기기 상세글 SELECT 시, 이전 글 정보(출력)
	Sayeon select_Preview(int artcl_Seq);
	
	// (관리자, 사용자) 사연남기기 상세글 SELECT 시, 다음 글 정보(출력)
	Sayeon select_Nextview(int artcl_Seq);
	
	// (사용자) 사연남기기 조회수 업데이트
	void hitUp(Sayeon Sayeon);
	
	/******************************************************************/
	
	// (사용자) 사연남기기 첨부파일 등록
	void insertAtchmnfl(List<SayeonAtchmnfl> atchmnfl);
	
	// (사용자) 사연남기기 첨부파일 출력
	List<Map<String, String>> selectAtchmnfl(Sayeon sayeon);
}
