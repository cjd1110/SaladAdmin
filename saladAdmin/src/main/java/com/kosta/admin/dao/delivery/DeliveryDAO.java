package com.kosta.admin.dao.delivery;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kosta.admin.dto.delivery.InformationDto;
import com.kosta.admin.dto.delivery.PayOrderJoinDto;

public interface DeliveryDAO {
	public ArrayList<PayOrderJoinDto> selectAllOrder(); //주문목록에서 DB 가져오기
	public void insertDelivery(ArrayList updateDepositor); //입금자명 데이터 삽입
	public void updateOrder(List item); //무통장 입금 확인을 완료하면 주문상태를 발송지시로 바꿔준다. 
	public ArrayList<InformationDto> selectAllInfo(); // 배송 목록에 넣을 DB 가져오기
	public void deleteInfo(); // 발송지시 리스트 데이터 전체 삭제
	public void insertInfo(InformationDto infodto); //발송지시 라고 되어있는 데이터 다 가져오기
}
