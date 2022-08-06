package com.project.exhibit.newsletter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.exhibit.util.SearchPageVO;

@Service
public class NewsLetterService {
	
	@Autowired
	private NewsLetterMapper mapper;
	
	// (관리자) 뉴스레터 INSERT(등록)
	public void insertNewsLetter(NewsLetter newsletter) {
		mapper.insertNewsLetter(newsletter);
	}
	
	// (관리자) 뉴스레터 UPDATE(수정)
	public void updateNewsLetter(NewsLetter newsletter) {
		mapper.updateNewsLetter(newsletter);
	}
	
	// (관리자) 뉴스레터 DELETE(삭제)
	public void deleteNewsLetter(NewsLetter newsletter) {
		mapper.deleteNewsLetter(newsletter);
	}
	
	// (관리자, 사용자) 뉴스레터 SELECT(출력)
	public List<NewsLetter> selectNewsLetter(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 뉴스레터 SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectNewsLetter(vo);
	}
	
	// (관리자, 사용자) 뉴스레터 Count SELECT(출력)
	public int selectNewsLetterCount(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 뉴스레터 Count SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectNewsLetterCount(vo);
	}
	
	// (관리자, 사용자) 뉴스레터 상세글 SELECT(출력)
	public NewsLetter selectNewsLetterView(NewsLetter newsletter) {
		System.out.println("(관리자, 사용자) 뉴스레터 상세글 SELECT(출력)");
		System.out.println("시퀀스 번호 : " + newsletter.getArtcl_Seq());
		//System.out.println(" 이전/다음 쿼리문 " + mapper.selectMMH_Preview(mmh.getArtcl_Seq()).getArtcl_Seq());
		
		//mmh.setPreView(mapper.selectMMH_Preview(mmh.getArtcl_Seq())); // (관리자, 사용자) 뉴스레터 상세글 SELECT 시, 이전 글 정보(출력)
		//mmh.setNextView(mapper.selectMMH_Nextview(mmh.getArtcl_Seq())); // (관리자, 사용자) 뉴스레터 상세글 SELECT 시, 다음 글 정보(출력)
		
		//System.out.println("이전글 : "+mmh.getPreView().getArtcl_Seq());
		//System.out.println("다음글 : "+mmh.getNextView().getArtcl_Seq());
		
		NewsLetter artclView = mapper.selectNewsLetterView(newsletter);
		
		artclView.setPreView(mapper.select_Preview(newsletter.getArtcl_Seq()));
		artclView.setNextView(mapper.select_Nextview(newsletter.getArtcl_Seq()));
		
		return artclView;
	}
	
	// (관리자, 사용자) 뉴스레터 상세글 SELECT 시, 이전 글 정보(출력)
	public NewsLetter select_Preview(int artcl_Seq) {
		return mapper.select_Preview(artcl_Seq);
	}
		
	// (관리자, 사용자) 뉴스레터 상세글 SELECT 시, 다음 글 정보(출력)
	public NewsLetter select_Nextview(int artcl_Seq) {
		return mapper.select_Nextview(artcl_Seq);
	}
	
	// (사용자) 뉴스레터 조회수 업데이트
	public void hitUp(NewsLetter artclView) {
		System.out.println("조회수 업데이트");
		mapper.hitUp(artclView);
	}
	
}
