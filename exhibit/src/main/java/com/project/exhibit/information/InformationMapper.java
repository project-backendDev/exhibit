package com.project.exhibit.information;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InformationMapper {

	// 단체관람 예약 INSERT
	void insertReservation(Information info);
	
	// 단체관람 예약 시 중복예약 방지를 위한 연락처 중복검사
	Information selectDuplicateTel(String tel);
}
