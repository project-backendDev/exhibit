package com.project.exhibit.sayeon;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.exhibit.util.SearchPageVO;

@Service
public class SayeonService {
	
	@Autowired
	private SayeonMapper mapper;
	
	// 사연남기기 이미지 경로
	static final String img_Path = "assets\\thumbnail\\sayeon\\";
	
	// 사연남기기 파일 경로
	static final String doc_Path = "assets\\files\\sayeon\\";
	
	// (관리자) 사연남기기 INSERT(등록)
	public void insertSayeon(Sayeon sayeon) {
		mapper.insertSayeon(sayeon);
	}
	
	// (관리자) 사연남기기 UPDATE(수정)
	public void updateSayeon(Sayeon sayeon) {
		mapper.updateSayeon(sayeon);
	}
	
	// (관리자) 사연남기기 DELETE(삭제)
	public void deleteSayeon(Sayeon sayeon) {
		mapper.deleteSayeon(sayeon);
	}
	
	// (관리자, 사용자) 사연남기기 SELECT(출력)
	public List<Sayeon> selectSayeon(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 사연남기기 SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectSayeon(vo);
	}
	
	// (관리자, 사용자) 사연남기기 Count SELECT(출력)
	public int selectSayeonCount(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 사연남기기 Count SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectSayeonCount(vo);
	}
	
	// (관리자, 사용자) 사연남기기 상세글 SELECT(출력)
	public Sayeon selectSayeonView(Sayeon sayeon) {
		System.out.println("(관리자, 사용자) 사연남기기 상세글 SELECT(출력)");
		System.out.println("시퀀스 번호 : " + sayeon.getArtcl_Seq());
		//System.out.println(" 이전/다음 쿼리문 " + mapper.selectMMH_Preview(mmh.getArtcl_Seq()).getArtcl_Seq());
		
		//mmh.setPreView(mapper.selectMMH_Preview(mmh.getArtcl_Seq())); // (관리자, 사용자) 사연남기기 상세글 SELECT 시, 이전 글 정보(출력)
		//mmh.setNextView(mapper.selectMMH_Nextview(mmh.getArtcl_Seq())); // (관리자, 사용자) 사연남기기 상세글 SELECT 시, 다음 글 정보(출력)
		
		//System.out.println("이전글 : "+mmh.getPreView().getArtcl_Seq());
		//System.out.println("다음글 : "+mmh.getNextView().getArtcl_Seq());
		
		Sayeon artclView = mapper.selectSayeonView(sayeon);
		
		artclView.setPreView(mapper.select_Preview(sayeon.getArtcl_Seq()));
		artclView.setNextView(mapper.select_Nextview(sayeon.getArtcl_Seq()));
		
		return artclView;
	}
	
	// (관리자, 사용자) 사연남기기 상세글 SELECT 시, 이전 글 정보(출력)
	public Sayeon select_Preview(int artcl_Seq) {
		return mapper.select_Preview(artcl_Seq);
	}
		
	// (관리자, 사용자) 사연남기기 상세글 SELECT 시, 다음 글 정보(출력)
	public Sayeon select_Nextview(int artcl_Seq) {
		return mapper.select_Nextview(artcl_Seq);
	}
	
	// (사용자) 사연남기기 조회수 업데이트
	public void hitUp(Sayeon artclView) {
		System.out.println("조회수 업데이트");
		mapper.hitUp(artclView);
	}
	
	/************************************************************************/
	
	// (사용자) 사연남기기 첨부파일 등록
	public void insertAtchmnfl(List<SayeonAtchmnfl> atchmnfl) {
		System.out.println("파일 업로드");
		mapper.insertAtchmnfl(atchmnfl);
	}
	
	// (사용자) 사연남기기 첨부파일 출력
	public List<Map<String, String>> selectAtchmnfl(Sayeon sayeon){
		System.out.println("첨부파일 출력");
		return mapper.selectAtchmnfl(sayeon);
	}
}
