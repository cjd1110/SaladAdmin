package com.kosta.admin.dao.admember;

import com.kosta.admin.dto.admember.AdMemberDto;

public interface ADMemberDAO {
	public String idCheck(AdMemberDto id); //아이디 체크 함수
	public String pwdCheck(AdMemberDto pwd); // 비밀번호 체크 함수 
}
