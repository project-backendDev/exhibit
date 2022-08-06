package com.project.exhibit.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.exhibit.util.SearchPageVO;



@Service
public class NoticeService {

	@Autowired
	private NoticeMapper mapper;
	
	// (관리자) 공지사항 INSERT(등록)
	public void insertNotice(Notice notice) {
		mapper.insertNotice(notice);
	}
	
	// (관리자) 공지사항 UPDATE(수정)
	public void updateNotice(Notice notice) {
		mapper.updateNotice(notice);
	}
	
	// (관리자) 공지사항 DELETE(삭제)
	public void deleteNotice(Notice notice) {
		mapper.deleteNotice(notice);
	}
	
	// (관리자, 사용자) 공지사항 SELECT(출력)
	public List<Notice> selectNotice(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 공지사항 SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectNotice(vo);
	}
	
	// (관리자, 사용자) 공지사항 Count SELECT(출력)
	public int selectNoticeCount(SearchPageVO vo){
		System.out.println("(관리자, 사용자) 공지사항 Count SELECT(출력)");
		
		System.out.println("SearchType => " +  vo.getSearchType());
		System.out.println("SearchValue => " + vo.getSearchValue());
		
		return mapper.selectNoticeCount(vo);
	}
	
	// (관리자, 사용자) 공지사항 상세글 SELECT(출력)
	public Notice selectNoticeView(Notice notice) {
		System.out.println("(관리자, 사용자) 공지사항 상세글 SELECT(출력)");
		System.out.println("시퀀스 번호 : " + notice.getArtcl_Seq());
		//System.out.println(" 이전/다음 쿼리문 " + mapper.selectMMH_Preview(mmh.getArtcl_Seq()).getArtcl_Seq());
		
		//mmh.setPreView(mapper.selectMMH_Preview(mmh.getArtcl_Seq())); // (관리자, 사용자) 공지사항 상세글 SELECT 시, 이전 글 정보(출력)
		//mmh.setNextView(mapper.selectMMH_Nextview(mmh.getArtcl_Seq())); // (관리자, 사용자) 공지사항 상세글 SELECT 시, 다음 글 정보(출력)
		
		//System.out.println("이전글 : "+mmh.getPreView().getArtcl_Seq());
		//System.out.println("다음글 : "+mmh.getNextView().getArtcl_Seq());
		
		Notice artclView = mapper.selectNoticeView(notice);
		
		artclView.setPreView(mapper.selectMMH_Preview(notice.getArtcl_Seq()));
		artclView.setNextView(mapper.selectMMH_Nextview(notice.getArtcl_Seq()));
		
		return artclView;
	}
	
	// (관리자, 사용자) 공지사항 상세글 SELECT 시, 이전 글 정보(출력)
	public Notice selectMMH_Preview(int artcl_Seq) {
		return mapper.selectMMH_Preview(artcl_Seq);
	}
		
	// (관리자, 사용자) 공지사항 상세글 SELECT 시, 다음 글 정보(출력)
	public Notice selectMMH_Nextview(int artcl_Seq) {
		return mapper.selectMMH_Nextview(artcl_Seq);
	}
	
	// (사용자) 공지사항 조회수 업데이트
	public void hitUpMMH(Notice artclView) {
		System.out.println("조회수 업데이트");
		mapper.hitUpMMH(artclView);
	}
	
	
	
}
