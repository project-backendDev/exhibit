package com.project.exhibit.newsletter;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.exhibit.sayeon.Sayeon;
import com.project.exhibit.sayeon.SayeonAtchmnfl;
import com.project.exhibit.util.SearchPageVO;

@Mapper
public interface NewsLetterMapper {

	// (관리자) 뉴스레터 INSERT(등록)
	void insertNewsLetter(NewsLetter newsletter);
		
	// (관리자) 뉴스레터 UPDATE(수정)
	void updateNewsLetter(NewsLetter newsletter);
	
	// (관리자) 뉴스레터 DELETE(삭제)
	void deleteNewsLetter(NewsLetter newsletter);
	
	// (관리자, 사용자) 뉴스레터 SELECT(출력)
	List<NewsLetter> selectNewsLetter(SearchPageVO vo);
	
	// (관리자, 사용자) 뉴스레터 Count SELECT(출력)
	int selectNewsLetterCount(SearchPageVO vo);
	
	// (관리자, 사용자) 뉴스레터 상세글 SELECT(출력)
	NewsLetter selectNewsLetterView(NewsLetter newsletter);
	
	// (관리자, 사용자) 뉴스레터 상세글 SELECT 시, 이전 글 정보(출력)
	NewsLetter select_Preview(int artcl_Seq);
	
	// (관리자, 사용자) 뉴스레터 상세글 SELECT 시, 다음 글 정보(출력)
	NewsLetter select_Nextview(int artcl_Seq);
	
	// (사용자) 뉴스레터 조회수 업데이트
	void hitUp(NewsLetter newsletter);
	
	/** ----------------------------------- 첨부파일 -------------------------------- **/
	// (관리자, 사용자) 뉴스레터 첨부파일 등록
	void insertAtchmnfl(List<NewsLetterAtchmnfl> atchmnfl);
	
	// (관리자, 사용자) 뉴스레터 첨부파일 출력
	List<Map<String, String>> selectAtchmnfl(NewsLetter newsLetter);
	
	// (관리자, 사용자) 뉴스레터 첨부파일 다운로드
	NewsLetterAtchmnfl downloadAtchmnfl(NewsLetterAtchmnfl atchmnfl);
	
	/** ----------------------------------- 카테고리 -------------------------------- **/ 
	// (관리자, 사용자) 카테고리 SELECT(출력)
	List<NewsLetterCategory> selectCategory();
	
	// (관리자) 카테고리 등록
	void insertCategory(NewsLetterCategory category);
	
	// (관리자) 카테고리 수정
	void updateCategory(NewsLetterCategory category);
	
	// (관리자) 카테고리 삭제
	void deleteCategory(NewsLetterCategory category);
}
