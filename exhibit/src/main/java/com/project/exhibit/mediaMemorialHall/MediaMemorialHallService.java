package com.project.exhibit.mediaMemorialHall;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.exhibit.util.SearchPageVO;

@Service
public class MediaMemorialHallService {
	
	@Autowired
	private MediaMemorialHallMapper mapper;
	
	// (관리자) 언론에 비친 기념관 INSERT(등록)
	public void insertMediaMemorialHall(MediaMemorialHall mmh) {
		mapper.insertMediaMemorialHall(mmh);
	}
	
	// (관리자) 언론에 비친 기념관 UPDATE(수정)
	public void updateMediaMemorialHall(MediaMemorialHall mmh) {
		mapper.updateMediaMemorialHall(mmh);
	}
	
	// (관리자) 언론에 비친 기념관 DELETE(삭제)
	public void deleteMediaMemorialHall(MediaMemorialHall mmh) {
		mapper.deleteMediaMemorialHall(mmh);
	}
	
	// (관리자, 사용자) 언론에 비친 기념관 SELECT(출력)
	public List<MediaMemorialHall> selectMediaMemorialHall(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 언론에 비친 기념관 SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectMediaMemorialHall(vo);
	}
	
	// (관리자, 사용자) 언론에 비친 기념관 Count SELECT(출력)
	public int selectMediaMemorialHallCount(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 언론에 비친 기념관 Count SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectMediaMemorialHallCount(vo);
	}
	
	// (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT(출력)
	public MediaMemorialHall selectMediaMemorialHallView(MediaMemorialHall mmh) {
		System.out.println("(관리자, 사용자) 언론에 비친 기념관 상세글 SELECT(출력)");
		System.out.println("시퀀스 번호 : " + mmh.getArtcl_Seq());
		//System.out.println(" 이전/다음 쿼리문 " + mapper.selectMMH_Preview(mmh.getArtcl_Seq()).getArtcl_Seq());
		
		//mmh.setPreView(mapper.selectMMH_Preview(mmh.getArtcl_Seq())); // (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT 시, 이전 글 정보(출력)
		//mmh.setNextView(mapper.selectMMH_Nextview(mmh.getArtcl_Seq())); // (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT 시, 다음 글 정보(출력)
		
		//System.out.println("이전글 : "+mmh.getPreView().getArtcl_Seq());
		//System.out.println("다음글 : "+mmh.getNextView().getArtcl_Seq());
		
		MediaMemorialHall artclView = mapper.selectMediaMemorialHallView(mmh);
		
		artclView.setPreView(mapper.selectMMH_Preview(mmh.getArtcl_Seq()));
		artclView.setNextView(mapper.selectMMH_Nextview(mmh.getArtcl_Seq()));
		
		return artclView;
	}
	
	// (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT 시, 이전 글 정보(출력)
	public MediaMemorialHall selectMMH_Preview(int artcl_Seq) {
		return mapper.selectMMH_Preview(artcl_Seq);
	}
		
	// (관리자, 사용자) 언론에 비친 기념관 상세글 SELECT 시, 다음 글 정보(출력)
	public MediaMemorialHall selectMMH_Nextview(int artcl_Seq) {
		return mapper.selectMMH_Nextview(artcl_Seq);
	}
	
	// (사용자) 언론에 비친 기념관 조회수 업데이트
	public void hitUpMMH(MediaMemorialHall artclView) {
		System.out.println("조회수 업데이트");
		mapper.hitUpMMH(artclView);
	}
	
}
