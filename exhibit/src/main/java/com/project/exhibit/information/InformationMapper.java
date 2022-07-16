package com.project.exhibit.information;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InformationMapper {

	// (사용자) 단체관람 예약 INSERT
	void insertReservation(Information info);
	
	// (관리자) 단체관람 예약 확인 SELECT 
	List<Information> selectReservationList();
	
	// 단체관람 예약 시 중복예약 방지를 위한 연락처 중복검사
//	Information selectDuplicateTel(String tel);
}
