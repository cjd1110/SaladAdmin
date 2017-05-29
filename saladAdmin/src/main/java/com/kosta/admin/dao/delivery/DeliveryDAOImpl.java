package com.kosta.admin.dao.delivery;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kosta.admin.dto.delivery.InformationDto;
import com.kosta.admin.dto.delivery.PayOrderJoinDto;

@Service
@Component
public class DeliveryDAOImpl implements DeliveryDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<PayOrderJoinDto> selectAllOrder() {
		DeliveryDAO dao = sqlSession.getMapper(DeliveryDAO.class);
		return dao.selectAllOrder();
	}

	@Override
	public void insertDelivery(ArrayList updateDepositor) {
		DeliveryDAO dao = sqlSession.getMapper(DeliveryDAO.class);
		dao.insertDelivery(updateDepositor);
	}

	@Override
	public void updateOrder(List item) {
		DeliveryDAO dao = sqlSession.getMapper(DeliveryDAO.class);
		dao.updateOrder(item);
	}

	@Override
	public ArrayList<InformationDto> selectAllInfo() {
		System.out.println("여기 들어옴");
		DeliveryDAO dao = sqlSession.getMapper(DeliveryDAO.class);
		System.out.println("여기 들어옴2222");
		return dao.selectAllInfo();
	}

	@Override
	public void insertInfo(InformationDto infodto) {
		DeliveryDAO dao = sqlSession.getMapper(DeliveryDAO.class);
		dao.insertInfo(infodto);
	}

	@Override
	public void deleteInfo() {
		DeliveryDAO dao = sqlSession.getMapper(DeliveryDAO.class);
		dao.deleteInfo();
	}
	
}
