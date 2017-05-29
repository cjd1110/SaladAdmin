package com.kosta.admin.dao.admember;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kosta.admin.dto.admember.AdMemberDto;

@Service
@Component
public class ADMemberDAOImpl implements ADMemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
			   
	@Override
	public String idCheck(AdMemberDto dto) {
		ADMemberDAO dao = sqlSession.getMapper(ADMemberDAO.class);
	 	return dao.idCheck(dto);
	}

	@Override
	public String pwdCheck(AdMemberDto pwd) {
		ADMemberDAO dao = sqlSession.getMapper(ADMemberDAO.class);
	 	return dao.pwdCheck(pwd);
	}
}
