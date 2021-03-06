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
	
	
	// (관리자) 단체관람 예약 확인 SELECT
	public List selectReservationList() {
		return mapper.selectReservationList();
	}
	
	
	// (관리자) 시퀀스 번호 확인
	public Information selectByReserveSeq(int reserve_Seq) {
		return mapper.selectByReserveSeq(reserve_Seq);
	}
	
	// (관리자) 예약자 이름 확인 
	public Information selectByName(String name) {
		return mapper.selectByName(name);
	}
	
	// (관리자) 예약자 정보 수정
	public void updateReserveData(Information info) {
		mapper.updateReserveData(info);
	}
	
	// (관리자) 예약자 삭제
	public void deleteReserve(int reserve_Seq) {
		mapper.deleteReserve(reserve_Seq);
	}
}
