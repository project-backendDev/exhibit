package com.project.exhibit.information;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InformationMapper {

	// (사용자) 단체관람 예약 INSERT
	void insertReservation(Information info);
	
	// (사용자) 단체관람 예약 시 중복예약 방지를 위한 연락처 중복검사
	//String selectDuplicateTel(String tel);
	
	// (사용자) 단체관람 예약 시 중복예약 방지를 위한 이름 중복검사
	//String selectDuplicateName(String name);
	
	
	// (관리자) 단체관람 예약 확인 SELECT 
	List<Information> selectReservationList();
	
	// (관리자) 시퀀스 번호 확인
	Information selectByReserveSeq(int reserve_Seq);
	
	// (관리자) 예약자 이름 확인
	Information selectByName(String name);
	
	// (관리자) 예약자 정보 수정
	void updateReserveData(Information info);
	
	// (관리자) 예약자 삭제
	void deleteReserve(int reserve_Seq);
}
