package com.project.exhibit.information;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InformationService {

	@Autowired
	private InformationMapper mapper;
	
	// (사용자) 단체관람 예약 INSERT
	public void insertReservation(Information info) {
		mapper.insertReservation(info);
	}
	
	
	// (사용자) 단체관람 예약 시 중복예약 방지를 위한 연락처 중복검사
	//public String selectDuplicateTel(String tel) {
	//	return mapper.selectDuplicateTel(tel);
	//}
	
	// (사용자) 단체관람 예약 시 중복예약 방지를 위한 이름 중복검사
//	public String selectDuplicateName(String name) {
//		return mapper.selectDuplicateName(name);
//	}
	
	
	// (관람자) 단체관람 예약 확인 SELECT
		public List selectReservationList() {
			return mapper.selectReservationList();
		}
}
